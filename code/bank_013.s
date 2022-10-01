.include "includes.s"

.ifdef HACK

.bank $013 slot 2
.org $0

PalsScreen0dh:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen0dh:
	.db $20, $00, $01, $04
	.incbin "data/nt0dh.bin"

BgScreen0dh:
	.db $10, $00, $f1, $0f
	.incbin "data/bg0dh.bin"

SprScreen0dh:
	.db $00, $00, $71, $0b
	.incbin "data/spr0dh.bin"

PalsScreen0eh:
	.db $0c, $3f, $10, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen0eh:
	.db $20, $00, $01, $04
	.incbin "data/nt0eh.bin"

BgScreen0eh:
	.db $10, $00, $51, $0e
	.incbin "data/bg0eh.bin"

SprScreen0eh:
	.db $00, $00, $81, $09
	.incbin "data/spr0eh.bin"

PalsScreen0fh:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen0fh:
	.db $20, $00, $01, $04
	.incbin "data/nt0fh.bin"

BgScreen0fh:
	.db $10, $00, $f1, $0b
	.incbin "data/bg0fh.bin"

SprScreen0fh:
	.db $00, $00, $c1, $0a
	.incbin "data/spr0fh.bin"

PalsScreen10h:
	.db $0c, $3f, $30, $05, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen10h:
	.db $20, $00, $01, $04
	.incbin "data/nt10h.bin"

BgScreen10h:
	.db $10, $00, $e1, $0c
	.incbin "data/bg10h.bin"

SprScreen10h:
	.db $00, $00, $f1, $0b
	.incbin "data/spr10h.bin"

.endif