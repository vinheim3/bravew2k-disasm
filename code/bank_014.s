.include "includes.s"

.ifdef HACK

.bank $014 slot 2
.org $0

PalsScreen11h:
	.db $0c, $3f, $30, $12, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen11h:
	.db $20, $00, $01, $04
	.incbin "data/nt11h.bin"
	.db $00, $00, $00, $00, $00

BgScreen11h:
	.db $10, $00, $e1, $0b
	.incbin "data/bg11h.bin"
	.db $00, $00, $00, $00, $00, $00, $00

SprScreen11h:
	.db $00, $00, $c1, $0a
	.incbin "data/spr11h.bin"

PalsScreen12h:
	.db $0c, $3f, $30, $16, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen12h:
	.db $20, $00, $01, $04
	.incbin "data/nt12h.bin"
	.db $00, $00, $00, $00, $00, $00, $00, $00, $00

BgScreen12h:
	.db $10, $00, $e1, $0f
	.incbin "data/bg12h.bin"

PalsScreen13h:
	.db $0c, $3f, $30, $10, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen13h:
	.db $20, $00, $01, $04
	.incbin "data/nt13h.bin"
	.db $00, $00, $00, $00, $00, $00, $00, $00, $00

BgScreen13h:
	.db $10, $00, $c1, $0a
	.incbin "data/bg13h.bin"
	.db $00, $00, $00, $00, $00, $00, $00

SprScreen13h:
	.db $00, $00, $d1, $0a
	.incbin "data/spr13h.bin"

PalsScreen14h:
	.db $0c, $3f, $30, $12, $0c, $3f, $30, $10, $0c, $3f, $30, $12, $0c, $3f, $30, $28

NtScreen14h:
	.db $20, $00, $01, $04
	.incbin "data/nt14h.bin"
	.db $00, $00, $00, $00, $00, $00, $00

BgScreen14h:
	.db $10, $00, $e1, $0b
	.incbin "data/bg14h.bin"
	.db $00, $00, $00, $00, $00, $00, $00

SprScreen14h:
	.db $00, $00, $a1, $0b
	.incbin "data/spr14h.bin"

.endif