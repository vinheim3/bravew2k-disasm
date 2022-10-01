.include "includes.s"

.ifdef HACK

.bank $017 slot 2
.org $0

PalsScreen1eh:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen1eh:
	.db $20, $00, $01, $04
	.incbin "data/nt1eh.bin"

BgScreen1eh:
	.db $10, $00, $91, $06
	.incbin "data/bg1eh.bin"

SprScreen1eh:
	.db $00, $00, $91, $0d
	.incbin "data/spr1eh.bin"

PalsScreen1fh:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen1fh:
	.db $20, $00, $01, $04
	.incbin "data/nt1fh.bin"

BgScreen1fh:
	.db $10, $00, $e1, $09
	.incbin "data/bg1fh.bin"

SprScreen1fh:
	.db $00, $00, $c1, $09
	.incbin "data/spr1fh.bin"

PalsScreen20h:
	.db $3f, $22, $11, $16, $3f, $22, $28, $29, $3f, $28, $11, $29, $3f, $22, $16, $29

NtScreen20h:
	.db $20, $00, $01, $04
	.incbin "data/nt20h.bin"

BgScreen20h:
	.db $10, $00, $21, $0c
	.incbin "data/bg20h.bin"

PalsScreen21h:
	.db $3f, $22, $11, $16, $3f, $22, $28, $29, $3f, $28, $11, $29, $3f, $22, $16, $29

NtScreen21h:
	.db $20, $00, $01, $04
	.incbin "data/nt21h.bin"

BgScreen21h:
	.db $10, $00, $31, $0e
	.incbin "data/bg21h.bin"

PalsScreen22h:
	.db $3e, $27, $30, $30, $3e, $30, $30, $30, $3e, $30, $30, $30, $3e, $30, $30, $30

NtScreen22h:
	.db $20, $00, $01, $04
	.incbin "data/nt22h.bin"

BgScreen22h:
	.db $10, $00, $f1, $02
	.incbin "data/bg22h.bin"

PalsScreen23h:
	.db $0c, $30, $16, $3f, $0c, $3f, $30, $10, $0c, $30, $27, $3f, $0c, $30, $22, $3f

NtScreen23h:
	.db $20, $00, $01, $04
	.incbin "data/nt23h.bin"

BgScreen23h:
	.db $10, $00, $b1, $0f
	.incbin "data/bg23h.bin"

PalsScreen24h:
	.db $3f, $19, $37, $27, $3f, $21, $21, $21, $3f, $21, $21, $21, $3f, $21, $21, $21

NtScreen24h:
	.db $20, $00, $00, $04
	.incbin "data/nt24h.bin"

BgScreen24h:
	.db $10, $00, $00, $04
	.incbin "data/bg24h.bin"

SprScreen24h:
	.db $00, $00, $11, $02
	.incbin "data/spr24h.bin"

.endif