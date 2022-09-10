from util import bankAddr, getRom

start = bankAddr(0x0e, 0x8159)
data = getRom()

def nb():
    global start
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

with open('data/bg20h.bin', 'wb') as f:
    f.write(bytearray(decomped))
