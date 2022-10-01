.include "includes.s"

.ifdef HACK

.bank $012 slot 2
.org $0

PalsScreen09h:
	.db $0c, $3f, $10, $16, $0c, $3f, $30, $10, $0c, $3f, $10, $12, $0c, $3f, $10, $28

NtScreen09h:
	.db $20, $00, $01, $04
	.incbin "data/nt09h.bin"

BgScreen09h:
	.db $10, $00, $c1, $0f
	.incbin "data/bg09h.bin"

SprScreen09h:
	.db $00, $00, $91, $0b
	.incbin "data/spr09h.bin"

PalsScreen0ah:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $16, $12, $0c, $3f, $30, $28

NtScreen0ah:
	.db $20, $00, $01, $04
	.incbin "data/nt0ah.bin"

BgScreen0ah:
	.db $10, $00, $61, $0e
	.incbin "data/bg0ah.bin"

SprScreen0ah:
	.db $00, $00, $81, $09
	.incbin "data/spr0ah.bin"

PalsScreen0bh:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen0bh:
	.db $20, $00, $01, $04
	.incbin "data/nt0bh.bin"

BgScreen0bh:
	.db $10, $00, $21, $0b
	.incbin "data/bg0bh.bin"

SprScreen0bh:
	.db $00, $00, $c1, $09
	.incbin "data/spr0bh.bin"

PalsScreen0ch:
	.db $0c, $3f, $30, $05, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen0ch:
	.db $20, $00, $01, $04
	.incbin "data/nt0ch.bin"

BgScreen0ch:
	.db $10, $00, $e1, $0c
	.incbin "data/bg0ch.bin"

SprScreen0ch:
	.db $00, $00, $11, $0b
	.incbin "data/spr0ch.bin"

.endif