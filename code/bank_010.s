.include "includes.s"

.ifdef HACK

.bank $010 slot 2
.org $0

PalsScreen00h:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen00h:
	.db $20, $00, $01, $04
	.incbin "data/nt00h.bin"

BgScreen00h:
	.db $10, $00, $d1, $0f
	.incbin "data/bg00h.bin"

PalsScreen01h:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen01h:
	.db $20, $00, $01, $04
	.incbin "data/nt01h.bin"

BgScreen01h:
	.db $10, $00, $51, $0b
	.incbin "data/bg01h.bin"

SprScreen01h:
	.db $00, $00, $81, $09
	.incbin "data/spr01h.bin"

PalsScreen02h:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen02h:
	.db $20, $00, $01, $04
	.incbin "data/nt02h.bin"

BgScreen02h:
	.db $10, $00, $81, $0d
	.incbin "data/bg02h.bin"

SprScreen02h:
	.db $00, $00, $81, $09
	.incbin "data/spr02h.bin"

PalsScreen03h:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen03h:
	.db $20, $00, $01, $04
	.incbin "data/nt03h.bin"

BgScreen03h:
	.db $10, $00, $c1, $0f
	.incbin "data/bg03h.bin"

SprScreen03h:
	.db $00, $00, $71, $0a
	.incbin "data/spr03h.bin"

.endif