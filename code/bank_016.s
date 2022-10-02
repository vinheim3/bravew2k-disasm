.include "includes.s"

.ifdef HACK

.bank $016 slot 2
.org $0

PalsScreen19h:
	.db $0c, $3f, $10, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen19h:
	.db $20, $00, $01, $04
	.incbin "data/nt19h.bin"
	.db $00, $00, $00, $00, $00

BgScreen19h:
	.db $10, $00, $61, $0e
	.incbin "data/bg19h.bin"
	.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

SprScreen19h:
	.db $00, $00, $61, $09
	.incbin "data/spr19h.bin"

PalsScreen1ah:
	.db $3f, $30, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f

NtScreen1ah:
	.db $20, $00, $00, $04
	.incbin "data/nt1ah.bin"
	.db $00, $00

BgScreen1ah:
	.db $10, $00, $00, $06
	.incbin "data/bg1ah.bin"

PalsScreen1bh:
	.db $0c, $3f, $10, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen1bh:
	.db $20, $00, $01, $04
	.incbin "data/nt1bh.bin"
	.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

BgScreen1bh:
	.db $10, $00, $e1, $0f
	.incbin "data/bg1bh.bin"
	.db $00, $00, $00, $00, $00, $00, $00

SprScreen1bh:
	.db $00, $00, $71, $08
	.incbin "data/spr1bh.bin"

PalsScreen1ch:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen1ch:
	.db $20, $00, $01, $04
	.incbin "data/nt1ch.bin"
	.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

BgScreen1ch:
	.db $10, $00, $71, $0f
	.incbin "data/bg1ch.bin"
	.db $00, $00, $00, $00, $00, $00

SprScreen1ch:
	.db $00, $00, $71, $09
	.incbin "data/spr1ch.bin"

PalsScreen1dh:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen1dh:
	.db $20, $00, $01, $04
	.incbin "data/nt1dh.bin"
	.db $00

BgScreen1dh:
	.db $10, $00, $91, $0a
	.incbin "data/bg1dh.bin"
	.db $00, $00, $00, $00, $00, $00, $00, $00, $00

SprScreen1dh:
	.db $00, $00, $b1, $08
	.incbin "data/spr1dh.bin"

.endif