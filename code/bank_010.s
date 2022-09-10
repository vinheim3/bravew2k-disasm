.include "includes.s"

.ifdef HACK

.bank $010 slot 2
.org $0

PalsScreen20h:
	.db $3f                                                  ; $8000 : $3f
	.db $22                                                  ; $8001 : $22
	ora ($16), y                                                  ; $8002 : $11, $16
	.db $3f                                                  ; $8004 : $3f
	.db $22                                                  ; $8005 : $22
	plp                                                  ; $8006 : $28
	and #$3f                                                  ; $8007 : $29, $3f
	plp                                                  ; $8009 : $28
	ora ($29), y                                                  ; $800a : $11, $29
	.db $3f                                                  ; $800c : $3f
	.db $22                                                  ; $800d : $22
	asl $29, x                                                  ; $800e : $16, $29

NtScreen20h:
    .db $20, $00
	.dw $0401
    .incbin "data/nt20h.bin"

BgScreen20h:
    .db $10, $00
    .dw $0c21
    .incbin "data/bg20h.bin"

.endif