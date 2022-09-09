.include "includes.s"

.ramsection "WRAM 0" bank 0 slot 0

w00:
    ds $1f0-0

wBankSwitch: ; $01f0
    ds $f

w01ff:
    ds $400-$1ff

; todo: fill in size
wDecompress: ; $0400
    .db

.ends
