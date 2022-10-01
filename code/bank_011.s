.include "includes.s"

.ifdef HACK

.bank $011 slot 2
.org $0

PalsScreen04h:
	.db $0c, $3f, $10, $16, $0c, $3f, $30, $10, $0c, $3f, $10, $12, $0c, $3f, $10, $28

NtScreen04h:
	.db $20, $00, $01, $04
	.incbin "data/nt04h.bin"

BgScreen04h:
	.db $10, $00, $61, $0e
	.incbin "data/bg04h.bin"

SprScreen04h:
	.db $00, $00, $81, $09
	.incbin "data/spr04h.bin"

PalsScreen05h:
	.db $0c, $3f, $10, $17, $0c, $3f, $30, $10, $0c, $3f, $10, $02, $0c, $3f, $10, $28

NtScreen05h:
	.db $20, $00, $01, $04
	.incbin "data/nt05h.bin"

BgScreen05h:
	.db $10, $00, $f1, $0e
	.incbin "data/bg05h.bin"

PalsScreen06h:
	.db $0c, $3f, $10, $17, $0c, $3f, $30, $10, $0c, $3f, $10, $02, $0c, $3f, $10, $28

NtScreen06h:
	.db $20, $00, $01, $04
	.incbin "data/nt06h.bin"

BgScreen06h:
	.db $10, $00, $c1, $0f
	.incbin "data/bg06h.bin"

PalsScreen07h:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen07h:
	.db $20, $00, $01, $04
	.incbin "data/nt07h.bin"

BgScreen07h:
	.db $10, $00, $51, $0e
	.incbin "data/bg07h.bin"

SprScreen07h:
	.db $00, $00, $81, $09
	.incbin "data/spr07h.bin"

PalsScreen08h:
	.db $0c, $07, $30, $17, $0c, $3f, $30, $10, $0c, $3f, $10, $30, $0c, $3f, $30, $28

NtScreen08h:
	.db $20, $00, $01, $04
	.incbin "data/nt08h.bin"

BgScreen08h:
	.db $10, $00, $71, $0b
	.incbin "data/bg08h.bin"

.endif