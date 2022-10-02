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
        maxSize = 0 if not spr else len(spr)+0x10
        maxSize += len(pals) + len(nt)+4 + len(bg)+0x10
        if maxSize + banksData[currBank].size > 0x8000:
            currBank += 1
        srcBanksComps.append(f"\t.db ${currBank:02x}")

        # calculate padding before bg+spr, they must be $10-aligned+$c
        startOffs = banksData[currBank].size + 0x8000
        lastOffs = startOffs

        banksData[currBank].bankComps.extend([
            f"\nPalsScreen{screen:02x}h:",
            f"\t.db " + ", ".join(f"${b:02x}" for b in pals),
        ])

        # pals pointer
        to_replace[metaAddr+0] = lastOffs & 0xff
        to_replace[metaAddr+1] = lastOffs >> 8

        lastOffs += 0x10

        # nt pointer
        to_replace[metaAddr+2] = lastOffs & 0xff
        to_replace[metaAddr+3] = lastOffs >> 8

        lastOffs += 4 + len(nt)

        # bg pointer
        bgPad = 0xc - (lastOffs & 0xf)
        if bgPad < 0:
            bgPad += 0x10
        
        lastOffs += bgPad

        to_replace[metaAddr+5] = lastOffs & 0xff
        to_replace[metaAddr+6] = lastOffs >> 8

        lastOffs += 4 + len(bg)

        # spr pointer
        sprPad = 0
        if hasSpr:
            sprPad = 0xc - (lastOffs & 0xf)
            if sprPad < 0:
                sprPad += 0x10

            lastOffs += sprPad

            to_replace[metaAddr+7] = lastOffs & 0xff
            to_replace[metaAddr+8] = lastOffs >> 8

            lastOffs += 4 + len(spr)

        banksData[currBank].size += (lastOffs-startOffs)

        for prefix, src, pad in (
            ('Nt', ntSrc, 0),
            ('Bg', bgSrc, bgPad),
            ('Spr', sprSrc, sprPad),
        ):
            if not src:
                continue
            header = data[src:src+4]

            # fpath = f'data/{prefix.lower()}{screen:02x}h.bin'
            # decomped = decompress(src, data)
            # with open(fpath, 'wb') as f:
            #     f.write(decomped)

            if pad:
                banksData[currBank].bankComps.append(
                    f"\t.db " + ", ".join("$00" for _ in range(pad))
                )

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
