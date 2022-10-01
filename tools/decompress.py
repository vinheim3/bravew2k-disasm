from collections import defaultdict
from copy import deepcopy
from dataclasses import dataclass, field
from typing import List

import clipboard

from util import bankAddr, getRom, wordIn


def decompress(start, data):
    def nb():
        nonlocal start
        ret = data[start]
        start += 1
        return ret

    dest = nb()<<8
    dest += nb()

    numBytes = nb()
    numBytes += nb()<<8

    decomped = []

    while numBytes > 0:
        copyBytes = []
        for _ in range(8):
            copyBytes.append(nb())
        ctrlByte = nb()
        for i in range(8):
            length = 1
            if ctrlByte & 1:
                length = nb()
            ctrlByte >>= 1
            copyByte = copyBytes[i]
            for _ in range(length):
                decomped.append(copyByte)
                numBytes -= 1

    return bytearray(decomped)


data = getRom()

@dataclass
class BankData:
    size: int = 0
    bankComps: List[str] = field(default_factory=list)


if __name__ == "__main__":
    currBank = 0x10
    banksData = defaultdict(BankData)
    srcBanksComps = []

    addrStart = bankAddr(0, 0xe475)
    bankStart = bankAddr(0, 0x93ed)
    to_replace = deepcopy(bytearray(data[:0x8000]))
    for screen in range(0x25):
        # Collate all meta data srces
        bank = data[bankStart+screen]
        metaAddr = bankAddr(0, wordIn(data, addrStart+screen*2))
        palSrc = bankAddr(bank, wordIn(data, metaAddr+0))
        ntSrc = bankAddr(bank, wordIn(data, metaAddr+2))
        hasSpr = data[metaAddr+4]
        bgSrc = bankAddr(bank, wordIn(data, metaAddr+5))
        sprSrc = None
        spr = None
        if hasSpr:
            sprSrc = bankAddr(bank, wordIn(data, metaAddr+7))
            spr = decompress(sprSrc, data)

        # Collate all data
        pals = data[palSrc:palSrc+0x10]
        nt = decompress(ntSrc, data)
        bg = decompress(bgSrc, data)

        # gen comps
        size = 0 if not spr else len(spr)+4
        size += len(pals) + len(nt) + len(bg) + 8
        if size + banksData[currBank].size > 0x8000:
            currBank += 1
        startOffs = banksData[currBank].size + 0x8000
        banksData[currBank].size += size
        srcBanksComps.append(f"\t.db ${currBank:02x}")

        banksData[currBank].bankComps.extend([
            f"\nPalsScreen{screen:02x}h:",
            f"\t.db " + ", ".join(f"${b:02x}" for b in pals),
        ])

        to_replace[metaAddr+0] = startOffs & 0xff
        to_replace[metaAddr+1] = startOffs >> 8
        startOffs += 0x10
        to_replace[metaAddr+2] = startOffs & 0xff
        to_replace[metaAddr+3] = startOffs >> 8
        startOffs += len(nt) + 4
        to_replace[metaAddr+5] = startOffs & 0xff
        to_replace[metaAddr+6] = startOffs >> 8
        if hasSpr:
            startOffs += len(bg) + 4
            to_replace[metaAddr+7] = startOffs & 0xff
            to_replace[metaAddr+8] = startOffs >> 8

        for prefix, src in (
            ('Nt', ntSrc),
            ('Bg', bgSrc),
            ('Spr', sprSrc),
        ):
            if not src:
                continue
            header = data[src:src+4]

            # fpath = f'data/{prefix.lower()}{screen:02x}h.bin'
            # decomped = decompress(src, data)
            # with open(fpath, 'wb') as f:
            #     f.write(decomped)

            banksData[currBank].bankComps.extend([
                f"\n{prefix}Screen{screen:02x}h:",
                f"\t.db " + ", ".join(f"${b:02x}" for b in header),
                f"\t.incbin \"data/{prefix.lower()}{screen:02x}h.bin\""
            ])

    for bank in banksData:
        comps = banksData[bank].bankComps
        fullStr = f""".include "includes.s"

.ifdef HACK

.bank ${bank:03x} slot 2
.org $0
""" + "\n".join(comps) + "\n\n.endif"
        with open(f"code/bank_{bank:03x}.s", "w") as f:
            f.write(fullStr)

    # banks
    for i in range(0x25):
        clipboard.copy("\n".join(srcBanksComps))

    # meta srces
    with open('data/screenSrcs.bin', 'wb') as f:
        f.write(bytearray(to_replace[bankAddr(0, 0xe4c7):bankAddr(0, 0xe60b)]))
