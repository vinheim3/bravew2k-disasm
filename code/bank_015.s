.include "includes.s"

.ifdef HACK

.bank $015 slot 2
.org $0

PalsScreen15h:
	.db $0c, $3f, $30, $04, $0c, $3f, $30, $10, $0c, $3f, $30, $28, $0c, $3f, $10, $28

NtScreen15h:
	.db $20, $00, $01, $04
	.incbin "data/nt15h.bin"

BgScreen15h:
	.db $10, $00, $41, $0e
	.incbin "data/bg15h.bin"

SprScreen15h:
	.db $00, $00, $81, $0b
	.incbin "data/spr15h.bin"

PalsScreen16h:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen16h:
	.db $20, $00, $01, $04
	.incbin "data/nt16h.bin"

BgScreen16h:
	.db $10, $00, $e1, $0f
	.incbin "data/bg16h.bin"

SprScreen16h:
	.db $00, $00, $b1, $06
	.incbin "data/spr16h.bin"

PalsScreen17h:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen17h:
	.db $20, $00, $01, $04
	.incbin "data/nt17h.bin"

BgScreen17h:
	.db $10, $00, $01, $0d
	.incbin "data/bg17h.bin"

SprScreen17h:
	.db $00, $00, $f1, $06
	.incbin "data/spr17h.bin"

PalsScreen18h:
	.db $0c, $3f, $10, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen18h:
	.db $20, $00, $01, $04
	.incbin "data/nt18h.bin"

BgScreen18h:
	.db $10, $00, $e1, $0f
	.incbin "data/bg18h.bin"

SprScreen18h:
	.db $00, $00, $21, $0a
	.incbin "data/spr18h.bin"

.endif