.include "includes.s"
        
.bank $000 slot 2
.org $0

NmiVector:
	jmp Jump_00_91b1                                                  ; $8000 : $4c, $b1, $91


	jmp ResetVector                                                  ; $8003 : $4c, $25, $80


Jump_00_8006:
	lda #$23                                                  ; $8006 : $a9, $23

Jump_00_8008:
	sta $01b4                                                  ; $8008 : $8d, $b4, $01

Jump_00_800b:
br_00_800b:
	lda #$5a                                                  ; $800b : $a9, $5a
	sta $01b0                                                  ; $800d : $8d, $b0, $01
	jmp ResetVector                                                  ; $8010 : $4c, $25, $80


	.db $00                                                  ; $8013 : $00
	.db $00                                                  ; $8014 : $00
	.db $00                                                  ; $8015 : $00
	.db $00                                                  ; $8016 : $00
	.db $00                                                  ; $8017 : $00
	.db $00                                                  ; $8018 : $00
	.db $00                                                  ; $8019 : $00
	.db $00                                                  ; $801a : $00
	.db $00                                                  ; $801b : $00
	.db $00                                                  ; $801c : $00
	.db $00                                                  ; $801d : $00
	.db $00                                                  ; $801e : $00
	.db $00                                                  ; $801f : $00
	lda #$08                                                  ; $8020 : $a9, $08
	jmp Jump_00_8008                                                  ; $8022 : $4c, $08, $80


IrqVector:
ResetVector:
	sei                                                  ; $8025 : $78
	cld                                                  ; $8026 : $d8
	ldx #$ef                                                  ; $8027 : $a2, $ef
	txs                                                  ; $8029 : $9a
	ldx #$ff                                                  ; $802a : $a2, $ff
	stx FRAME_COUNTER_CTRL                                                  ; $802c : $8e, $17, $40
	lda #$00                                                  ; $802f : $a9, $00
	sta PPUCTRL                                                  ; $8031 : $8d, $00, $20
	sta PPUMASK                                                  ; $8034 : $8d, $01, $20
	sta SND_CHN                                                  ; $8037 : $8d, $15, $40
	sta JOY1                                                  ; $803a : $8d, $16, $40
	sta $4800                                                  ; $803d : $8d, $00, $48
	sta $4803                                                  ; $8040 : $8d, $03, $48
	ldy #$00                                                  ; $8043 : $a0, $00

br_00_8045:
	lda $fa00, y                                                  ; $8045 : $b9, $00, $fa
	sta wBankSwitch, y                                                  ; $8048 : $99, $f0, $01
	iny                                                  ; $804b : $c8
	cpy #$10                                                  ; $804c : $c0, $10
	bne br_00_8045                                                  ; $804e : $d0, $f5

	jsr Call_00_92ed                                                  ; $8050 : $20, $ed, $92
	jsr Call_00_92ff                                                  ; $8053 : $20, $ff, $92
	jsr Call_00_90f1                                                  ; $8056 : $20, $f1, $90
	jsr Call_00_92e2                                                  ; $8059 : $20, $e2, $92
	jsr Call_00_92ed                                                  ; $805c : $20, $ed, $92
	jsr Call_00_8e7d                                                  ; $805f : $20, $7d, $8e
	jsr Call_00_95ec                                                  ; $8062 : $20, $ec, $95
	jsr Call_00_9416                                                  ; $8065 : $20, $16, $94
	jsr Call_00_9284                                                  ; $8068 : $20, $84, $92
	lda $01b0                                                  ; $806b : $ad, $b0, $01
	cmp #$5a                                                  ; $806e : $c9, $5a
	beq br_00_808f                                                  ; $8070 : $f0, $1d

	jsr Call_00_9284                                                  ; $8072 : $20, $84, $92
	lda #$20                                                  ; $8075 : $a9, $20
	sta $1c                                                  ; $8077 : $85, $1c
	jsr LoadScreen                                                  ; $8079 : $20, $6b, $93
	lda #$c8                                                  ; $807c : $a9, $c8
	sta $07fc                                                  ; $807e : $8d, $fc, $07

br_00_8081:
	lda $8f                                                  ; $8081 : $a5, $8f
	cmp #$1b                                                  ; $8083 : $c9, $1b
	beq br_00_800b                                                  ; $8085 : $f0, $84

	lda $07fc                                                  ; $8087 : $ad, $fc, $07
	bne br_00_8081                                                  ; $808a : $d0, $f5

	jmp Jump_00_800b                                                  ; $808c : $4c, $0b, $80


br_00_808f:
	lda #$5a                                                  ; $808f : $a9, $5a
	sta $01b0                                                  ; $8091 : $8d, $b0, $01
	lda $01b4                                                  ; $8094 : $ad, $b4, $01
	cmp #$23                                                  ; $8097 : $c9, $23
	beq br_00_80a5                                                  ; $8099 : $f0, $0a

	cmp #$08                                                  ; $809b : $c9, $08
	beq br_00_80a5                                                  ; $809d : $f0, $06

	cmp #$1a                                                  ; $809f : $c9, $1a
	beq br_00_80a5                                                  ; $80a1 : $f0, $02

	lda #$00                                                  ; $80a3 : $a9, $00

br_00_80a5:
	sta $1c                                                  ; $80a5 : $85, $1c
	lda #$00                                                  ; $80a7 : $a9, $00
	sta $24                                                  ; $80a9 : $85, $24
	jsr Call_00_9457                                                  ; $80ab : $20, $57, $94
	jsr Call_00_dba4                                                  ; $80ae : $20, $a4, $db
	lda #$ff                                                  ; $80b1 : $a9, $ff
	sta $79                                                  ; $80b3 : $85, $79
	jsr Call_00_9642                                                  ; $80b5 : $20, $42, $96

Jump_00_80b8:
	jsr LoadScreen                                                  ; $80b8 : $20, $6b, $93
	lda #$5a                                                  ; $80bb : $a9, $5a
	sta $01b0                                                  ; $80bd : $8d, $b0, $01
	lda $1c                                                  ; $80c0 : $a5, $1c
	sta $01b4                                                  ; $80c2 : $8d, $b4, $01
	cmp #$1d                                                  ; $80c5 : $c9, $1d
	bne br_00_80cc                                                  ; $80c7 : $d0, $03

	jsr Call_00_f378                                                  ; $80c9 : $20, $78, $f3

br_00_80cc:
	lda $1c                                                  ; $80cc : $a5, $1c
	cmp #$17                                                  ; $80ce : $c9, $17
	bne br_00_80d5                                                  ; $80d0 : $d0, $03

	jmp Jump_00_8335                                                  ; $80d2 : $4c, $35, $83


br_00_80d5:
	cmp #$1a                                                  ; $80d5 : $c9, $1a
	bne br_00_80df                                                  ; $80d7 : $d0, $06

	jsr Call_00_846e                                                  ; $80d9 : $20, $6e, $84
	jmp Jump_00_80b8                                                  ; $80dc : $4c, $b8, $80


br_00_80df:
	cmp #$16                                                  ; $80df : $c9, $16
	bne br_00_80e9                                                  ; $80e1 : $d0, $06

	jsr Call_00_8d72                                                  ; $80e3 : $20, $72, $8d
	jmp Jump_00_80b8                                                  ; $80e6 : $4c, $b8, $80


br_00_80e9:
	cmp #$23                                                  ; $80e9 : $c9, $23
	bne br_00_80f3                                                  ; $80eb : $d0, $06

	jsr Call_00_8186                                                  ; $80ed : $20, $86, $81
	jmp Jump_00_80b8                                                  ; $80f0 : $4c, $b8, $80


br_00_80f3:
	cmp #$05                                                  ; $80f3 : $c9, $05
	bne br_00_80fd                                                  ; $80f5 : $d0, $06

	jsr Call_00_e944                                                  ; $80f7 : $20, $44, $e9
	jmp Jump_00_80b8                                                  ; $80fa : $4c, $b8, $80


br_00_80fd:
	cmp #$06                                                  ; $80fd : $c9, $06
	bne br_00_8107                                                  ; $80ff : $d0, $06

	jsr Call_00_f175                                                  ; $8101 : $20, $75, $f1
	jmp Jump_00_80b8                                                  ; $8104 : $4c, $b8, $80


br_00_8107:
	cmp #$1d                                                  ; $8107 : $c9, $1d
	bne br_00_8111                                                  ; $8109 : $d0, $06

	jsr Call_00_f399                                                  ; $810b : $20, $99, $f3
	jmp Jump_00_80b8                                                  ; $810e : $4c, $b8, $80


br_00_8111:
	cmp #$08                                                  ; $8111 : $c9, $08
	bne br_00_811b                                                  ; $8113 : $d0, $06

	jsr Call_00_8186                                                  ; $8115 : $20, $86, $81
	jmp Jump_00_80b8                                                  ; $8118 : $4c, $b8, $80


br_00_811b:
	jsr Call_00_f429                                                  ; $811b : $20, $29, $f4
	bcs br_00_8123                                                  ; $811e : $b0, $03

br_00_8120:
	jmp Jump_00_80b8                                                  ; $8120 : $4c, $b8, $80


br_00_8123:
	jsr Call_00_d700                                                  ; $8123 : $20, $00, $d7
	lda $a2                                                  ; $8126 : $a5, $a2
	cmp #$01                                                  ; $8128 : $c9, $01
	bne br_00_811b                                                  ; $812a : $d0, $ef

	jsr $df96                                                  ; $812c : $20, $96, $df
	bcs br_00_811b                                                  ; $812f : $b0, $ea

	lda $1c                                                  ; $8131 : $a5, $1c
	cmp #$6f                                                  ; $8133 : $c9, $6f
	beq br_00_813e                                                  ; $8135 : $f0, $07

	cmp #$25                                                  ; $8137 : $c9, $25
	bne br_00_8120                                                  ; $8139 : $d0, $e5

	jmp Jump_00_f629                                                  ; $813b : $4c, $29, $f6


br_00_813e:
	lda #$00                                                  ; $813e : $a9, $00
	sta PPUCTRL                                                  ; $8140 : $8d, $00, $20
	sta PPUMASK                                                  ; $8143 : $8d, $01, $20
	lda #$01                                                  ; $8146 : $a9, $01
	sta $0e                                                  ; $8148 : $85, $0e
	lda #$45                                                  ; $814a : $a9, $45
	sta $14                                                  ; $814c : $85, $14
	lda #$f0                                                  ; $814e : $a9, $f0
	sta $15                                                  ; $8150 : $85, $15
	lda #$08                                                  ; $8152 : $a9, $08
	sta $11                                                  ; $8154 : $85, $11
	jsr wDecompress                                                  ; $8156 : $20, $00, $04
	jsr Call_00_92e2                                                  ; $8159 : $20, $e2, $92
	ldy #$00                                                  ; $815c : $a0, $00

br_00_815e:
	lda $f529, y                                                  ; $815e : $b9, $29, $f5
	sta $0200, y                                                  ; $8161 : $99, $00, $02
	iny                                                  ; $8164 : $c8
	cpy #$80                                                  ; $8165 : $c0, $80
	bcc br_00_815e                                                  ; $8167 : $90, $f5

	jsr Call_00_92ed                                                  ; $8169 : $20, $ed, $92
	lda #$00                                                  ; $816c : $a9, $00
	sta PPUADDR                                                  ; $816e : $8d, $06, $20
	sta PPUADDR                                                  ; $8171 : $8d, $06, $20
	sta PPUSCROLL                                                  ; $8174 : $8d, $05, $20
	sta PPUSCROLL                                                  ; $8177 : $8d, $05, $20
	jsr Call_00_9284                                                  ; $817a : $20, $84, $92
	jsr Call_00_929e                                                  ; $817d : $20, $9e, $92
	jsr Call_00_d700                                                  ; $8180 : $20, $00, $d7
	jmp ResetVector                                                  ; $8183 : $4c, $25, $80


Call_00_8186:
	jsr Call_00_dbb2                                                  ; $8186 : $20, $b2, $db
	jsr Call_00_dbab                                                  ; $8189 : $20, $ab, $db

br_00_818c:
	jsr Call_00_d700                                                  ; $818c : $20, $00, $d7
	jsr Call_00_f429                                                  ; $818f : $20, $29, $f4
	bcs br_00_819b                                                  ; $8192 : $b0, $07

	jsr Call_00_dbb2                                                  ; $8194 : $20, $b2, $db
	jsr Call_00_dba4                                                  ; $8197 : $20, $a4, $db
	rts                                                  ; $819a : $60


br_00_819b:
	cmp #$41                                                  ; $819b : $c9, $41
	bcc br_00_81b8                                                  ; $819d : $90, $19

	cmp #$50                                                  ; $819f : $c9, $50
	bcs br_00_81a8                                                  ; $81a1 : $b0, $05

	sta $1c                                                  ; $81a3 : $85, $1c
	jmp Jump_00_81d0                                                  ; $81a5 : $4c, $d0, $81


br_00_81a8:
	cmp #$61                                                  ; $81a8 : $c9, $61
	bcc br_00_81b8                                                  ; $81aa : $90, $0c

	cmp #$70                                                  ; $81ac : $c9, $70
	bcs br_00_81b8                                                  ; $81ae : $b0, $08

	sec                                                  ; $81b0 : $38
	sbc #$20                                                  ; $81b1 : $e9, $20
	sta $1c                                                  ; $81b3 : $85, $1c
	jmp Jump_00_81d0                                                  ; $81b5 : $4c, $d0, $81


br_00_81b8:
	lda $a2                                                  ; $81b8 : $a5, $a2
	cmp #$01                                                  ; $81ba : $c9, $01
	bne br_00_818c                                                  ; $81bc : $d0, $ce

	jsr $df96                                                  ; $81be : $20, $96, $df
	bcs br_00_818c                                                  ; $81c1 : $b0, $c9

	lda $1c                                                  ; $81c3 : $a5, $1c
	cmp #$00                                                  ; $81c5 : $c9, $00
	bne br_00_81d0                                                  ; $81c7 : $d0, $07

	jsr Call_00_dbb2                                                  ; $81c9 : $20, $b2, $db
	jsr Call_00_dba4                                                  ; $81cc : $20, $a4, $db
	rts                                                  ; $81cf : $60


Jump_00_81d0:
br_00_81d0:
	sec                                                  ; $81d0 : $38
	sbc #$41                                                  ; $81d1 : $e9, $41

Jump_00_81d3:
	asl a                                                  ; $81d3 : $0a
	tax                                                  ; $81d4 : $aa
	lda #$00                                                  ; $81d5 : $a9, $00
	sta PPUCTRL                                                  ; $81d7 : $8d, $00, $20
	sta PPUMASK                                                  ; $81da : $8d, $01, $20
	sta SND_CHN                                                  ; $81dd : $8d, $15, $40
	sta $0204                                                  ; $81e0 : $8d, $04, $02
	jsr Call_00_92ed                                                  ; $81e3 : $20, $ed, $92
	lda #$00                                                  ; $81e6 : $a9, $00
	sta $00                                                  ; $81e8 : $85, $00
	lda #$60                                                  ; $81ea : $a9, $60
	sta $01                                                  ; $81ec : $85, $01

br_00_81ee:
	lda #$00                                                  ; $81ee : $a9, $00
	ldy #$00                                                  ; $81f0 : $a0, $00
	sta ($00), y                                                  ; $81f2 : $91, $00
	inc $00                                                  ; $81f4 : $e6, $00
	bne br_00_81ee                                                  ; $81f6 : $d0, $f6

	inc $01                                                  ; $81f8 : $e6, $01
	lda $01                                                  ; $81fa : $a5, $01
	cmp #$80                                                  ; $81fc : $c9, $80
	bne br_00_81ee                                                  ; $81fe : $d0, $ee

	lda $820e, x                                                  ; $8200 : $bd, $0e, $82
	sta $00                                                  ; $8203 : $85, $00
	inx                                                  ; $8205 : $e8
	lda $820e, x                                                  ; $8206 : $bd, $0e, $82
	sta $01                                                  ; $8209 : $85, $01
	jmp ($00.w)                                                  ; $820b : $6c, $00, $00


	rol $82, x                                                  ; $820e : $36, $82
	jmp $6082                                                  ; $8210 : $4c, $82, $60


	.db $82                                                  ; $8213 : $82
	adc $82                                                  ; $8214 : $65, $82
	ror $8682, x                                                  ; $8216 : $7e, $82, $86
	.db $82                                                  ; $8219 : $82
	.db $9c                                                  ; $821a : $9c
	.db $82                                                  ; $821b : $82
	lda ($82, x)                                                  ; $821c : $a1, $82
	ldx $82                                                  ; $821e : $a6, $82
	cpy #$82                                                  ; $8220 : $c0, $82
	cmp $82                                                  ; $8222 : $c5, $82
	bit $2682                                                  ; $8224 : $2c, $82, $26
	.db $83                                                  ; $8227 : $83
	bmi -$7d                                                  ; $8228 : $30, $83

	and ($83, x)                                                  ; $822a : $21, $83
	lda #$ff                                                  ; $822c : $a9, $ff
	sta $0110                                                  ; $822e : $8d, $10, $01
	lda #$09                                                  ; $8231 : $a9, $09
	jmp Jump_00_8305                                                  ; $8233 : $4c, $05, $83


	jsr Call_00_92ff                                                  ; $8236 : $20, $ff, $92
	lda #$ff                                                  ; $8239 : $a9, $ff
	sta $fb                                                  ; $823b : $85, $fb
	lda #$00                                                  ; $823d : $a9, $00
	sta $fc                                                  ; $823f : $85, $fc
	sta $ff                                                  ; $8241 : $85, $ff
	sta $fd                                                  ; $8243 : $85, $fd
	lda #$01                                                  ; $8245 : $a9, $01

Jump_00_8247:
	sta $ab                                                  ; $8247 : $85, $ab
	jmp Jump_00_82e3                                                  ; $8249 : $4c, $e3, $82


	jsr Call_00_92ff                                                  ; $824c : $20, $ff, $92
	lda #$ff                                                  ; $824f : $a9, $ff
	sta $fb                                                  ; $8251 : $85, $fb
	lda #$00                                                  ; $8253 : $a9, $00
	sta $fc                                                  ; $8255 : $85, $fc
	sta $ff                                                  ; $8257 : $85, $ff
	sta $fd                                                  ; $8259 : $85, $fd
	lda #$03                                                  ; $825b : $a9, $03
	jmp Jump_00_8247                                                  ; $825d : $4c, $47, $82


	lda #$31                                                  ; $8260 : $a9, $31
	jmp Jump_00_82c7                                                  ; $8262 : $4c, $c7, $82


	jsr Call_00_92ff                                                  ; $8265 : $20, $ff, $92
	lda #$31                                                  ; $8268 : $a9, $31

Jump_00_826a:
	sta $32                                                  ; $826a : $85, $32
	jsr Call_00_92e2                                                  ; $826c : $20, $e2, $92
	lda #$07                                                  ; $826f : $a9, $07
	sta $ab                                                  ; $8271 : $85, $ab
	lda #$27                                                  ; $8273 : $a9, $27
	sta $14                                                  ; $8275 : $85, $14
	lda #$81                                                  ; $8277 : $a9, $81
	sta $15                                                  ; $8279 : $85, $15
	jmp Jump_00_82ed                                                  ; $827b : $4c, $ed, $82


	jsr Call_00_92ff                                                  ; $827e : $20, $ff, $92
	lda #$32                                                  ; $8281 : $a9, $32
	jmp Jump_00_826a                                                  ; $8283 : $4c, $6a, $82


	lda #$33                                                  ; $8286 : $a9, $33
	sta $32                                                  ; $8288 : $85, $32
	jsr Call_00_92e2                                                  ; $828a : $20, $e2, $92
	lda #$07                                                  ; $828d : $a9, $07
	sta $ab                                                  ; $828f : $85, $ab
	lda #$9d                                                  ; $8291 : $a9, $9d
	sta $14                                                  ; $8293 : $85, $14
	lda #$80                                                  ; $8295 : $a9, $80
	sta $15                                                  ; $8297 : $85, $15
	jmp Jump_00_82ed                                                  ; $8299 : $4c, $ed, $82


	lda #$34                                                  ; $829c : $a9, $34
	jmp Jump_00_82c7                                                  ; $829e : $4c, $c7, $82


	lda #$35                                                  ; $82a1 : $a9, $35
	jmp Jump_00_82c7                                                  ; $82a3 : $4c, $c7, $82


	lda #$31                                                  ; $82a6 : $a9, $31

Jump_00_82a8:
	sta $7ff0                                                  ; $82a8 : $8d, $f0, $7f
	jsr Call_00_92e2                                                  ; $82ab : $20, $e2, $92
	lda #$07                                                  ; $82ae : $a9, $07
	sta $ab                                                  ; $82b0 : $85, $ab
	lda #$3a                                                  ; $82b2 : $a9, $3a
	sta $14                                                  ; $82b4 : $85, $14
	lda #$81                                                  ; $82b6 : $a9, $81
	sta $15                                                  ; $82b8 : $85, $15
	ldx #$ef                                                  ; $82ba : $a2, $ef
	txs                                                  ; $82bc : $9a
	jmp Jump_00_82ed                                                  ; $82bd : $4c, $ed, $82


	lda #$32                                                  ; $82c0 : $a9, $32
	jmp Jump_00_82a8                                                  ; $82c2 : $4c, $a8, $82


	lda #$37                                                  ; $82c5 : $a9, $37

Jump_00_82c7:
	sta $32                                                  ; $82c7 : $85, $32
	ldx #$ef                                                  ; $82c9 : $a2, $ef
	txs                                                  ; $82cb : $9a
	jsr Call_00_92e2                                                  ; $82cc : $20, $e2, $92
	lda #$07                                                  ; $82cf : $a9, $07
	sta $ab                                                  ; $82d1 : $85, $ab
	lda #$09                                                  ; $82d3 : $a9, $09
	sta $14                                                  ; $82d5 : $85, $14
	lda #$81                                                  ; $82d7 : $a9, $81
	sta $15                                                  ; $82d9 : $85, $15
	jmp Jump_00_82ed                                                  ; $82db : $4c, $ed, $82


	lda #$0a                                                  ; $82de : $a9, $0a
	jmp Jump_00_8305                                                  ; $82e0 : $4c, $05, $83


Jump_00_82e3:
	sta $ab                                                  ; $82e3 : $85, $ab
	lda #$00                                                  ; $82e5 : $a9, $00
	sta $14                                                  ; $82e7 : $85, $14
	lda #$80                                                  ; $82e9 : $a9, $80
	sta $15                                                  ; $82eb : $85, $15

Jump_00_82ed:
	ldx #$00                                                  ; $82ed : $a2, $00

br_00_82ef:
	lda $82fd, x                                                  ; $82ef : $bd, $fd, $82
	sta $0600, x                                                  ; $82f2 : $9d, $00, $06
	inx                                                  ; $82f5 : $e8
	cpx #$14                                                  ; $82f6 : $e0, $14
	bne br_00_82ef                                                  ; $82f8 : $d0, $f5

	jmp $0600                                                  ; $82fa : $4c, $00, $06


	lda $ab                                                  ; $82fd : $a5, $ab
	jsr wBankSwitch                                                  ; $82ff : $20, $f0, $01
	jmp ($14.w)                                                  ; $8302 : $6c, $14, $00


Jump_00_8305:
	sta $ab                                                  ; $8305 : $85, $ab
	ldx #$00                                                  ; $8307 : $a2, $00

br_00_8309:
	lda $8317, x                                                  ; $8309 : $bd, $17, $83
	sta $0600, x                                                  ; $830c : $9d, $00, $06
	inx                                                  ; $830f : $e8
	cpx #$14                                                  ; $8310 : $e0, $14
	bne br_00_8309                                                  ; $8312 : $d0, $f5

	jmp $0600                                                  ; $8314 : $4c, $00, $06


	ldx #$ff                                                  ; $8317 : $a2, $ff
	lda $ab                                                  ; $8319 : $a5, $ab
	jsr wBankSwitch                                                  ; $831b : $20, $f0, $01
	jmp ($fffc)                                                  ; $831e : $6c, $fc, $ff


	lda #$ff                                                  ; $8321 : $a9, $ff
	jmp Jump_00_8328                                                  ; $8323 : $4c, $28, $83


	lda #$00                                                  ; $8326 : $a9, $00

Jump_00_8328:
	sta $0110                                                  ; $8328 : $8d, $10, $01
	lda #$8f                                                  ; $832b : $a9, $8f
	jmp Jump_00_8305                                                  ; $832d : $4c, $05, $83


	lda #$0a                                                  ; $8330 : $a9, $0a
	jmp Jump_00_8305                                                  ; $8332 : $4c, $05, $83


Jump_00_8335:
	lda #$00                                                  ; $8335 : $a9, $00
	sta $0f                                                  ; $8337 : $85, $0f
	sta $01b2                                                  ; $8339 : $8d, $b2, $01

Jump_00_833c:
br_00_833c:
	jsr Call_00_d700                                                  ; $833c : $20, $00, $d7
	lda $a2                                                  ; $833f : $a5, $a2
	cmp #$01                                                  ; $8341 : $c9, $01
	beq br_00_835a                                                  ; $8343 : $f0, $15

	lda $8f                                                  ; $8345 : $a5, $8f
	cmp #$59                                                  ; $8347 : $c9, $59
	beq br_00_8384                                                  ; $8349 : $f0, $39

	cmp #$0d                                                  ; $834b : $c9, $0d
	beq br_00_8384                                                  ; $834d : $f0, $35

	cmp #$4e                                                  ; $834f : $c9, $4e
	bne br_00_833c                                                  ; $8351 : $d0, $e9

br_00_8353:
	lda #$00                                                  ; $8353 : $a9, $00
	sta $1c                                                  ; $8355 : $85, $1c
	jmp Jump_00_80b8                                                  ; $8357 : $4c, $b8, $80


br_00_835a:
	jsr $df96                                                  ; $835a : $20, $96, $df
	bcs br_00_833c                                                  ; $835d : $b0, $dd

	lda $1c                                                  ; $835f : $a5, $1c
	cmp #$81                                                  ; $8361 : $c9, $81
	bne br_00_8370                                                  ; $8363 : $d0, $0b

	lda #$00                                                  ; $8365 : $a9, $00
	sta $0f                                                  ; $8367 : $85, $0f
	tay                                                  ; $8369 : $a8
	jsr Call_00_83cf                                                  ; $836a : $20, $cf, $83
	jmp Jump_00_833c                                                  ; $836d : $4c, $3c, $83


br_00_8370:
	cmp #$82                                                  ; $8370 : $c9, $82
	bne br_00_8380                                                  ; $8372 : $d0, $0c

	lda #$ff                                                  ; $8374 : $a9, $ff
	sta $0f                                                  ; $8376 : $85, $0f
	ldy #$14                                                  ; $8378 : $a0, $14
	jsr Call_00_83cf                                                  ; $837a : $20, $cf, $83
	jmp Jump_00_833c                                                  ; $837d : $4c, $3c, $83


br_00_8380:
	cmp #$83                                                  ; $8380 : $c9, $83
	bne br_00_8353                                                  ; $8382 : $d0, $cf

br_00_8384:
	lda #$00                                                  ; $8384 : $a9, $00
	sta $01b2                                                  ; $8386 : $8d, $b2, $01
	sta $01b0                                                  ; $8389 : $8d, $b0, $01
	lda $0f                                                  ; $838c : $a5, $0f
	bne br_00_83ae                                                  ; $838e : $d0, $1e

	lda #$21                                                  ; $8390 : $a9, $21
	sta $1c                                                  ; $8392 : $85, $1c
	jsr LoadScreen                                                  ; $8394 : $20, $6b, $93
	lda #$96                                                  ; $8397 : $a9, $96
	sta $07fc                                                  ; $8399 : $8d, $fc, $07

br_00_839c:
	lda $07fc                                                  ; $839c : $ad, $fc, $07
	bne br_00_839c                                                  ; $839f : $d0, $fb

	jsr Call_00_90dd                                                  ; $83a1 : $20, $dd, $90
	lda #$22                                                  ; $83a4 : $a9, $22
	sta $1c                                                  ; $83a6 : $85, $1c
	jsr LoadScreen                                                  ; $83a8 : $20, $6b, $93

Jump_00_83ab:
	jmp Jump_00_83ab                                                  ; $83ab : $4c, $ab, $83


br_00_83ae:
	lda #$21                                                  ; $83ae : $a9, $21
	sta $1c                                                  ; $83b0 : $85, $1c
	jsr LoadScreen                                                  ; $83b2 : $20, $6b, $93
	lda #$96                                                  ; $83b5 : $a9, $96
	sta $07fc                                                  ; $83b7 : $8d, $fc, $07

br_00_83ba:
	lda $07fc                                                  ; $83ba : $ad, $fc, $07
	bne br_00_83ba                                                  ; $83bd : $d0, $fb

	jsr Call_00_92aa                                                  ; $83bf : $20, $aa, $92
	lda #$01                                                  ; $83c2 : $a9, $01
	sta $07fc                                                  ; $83c4 : $8d, $fc, $07

br_00_83c7:
	lda $07fc                                                  ; $83c7 : $ad, $fc, $07
	bne br_00_83c7                                                  ; $83ca : $d0, $fb

	jmp ResetVector                                                  ; $83cc : $4c, $25, $80


Call_00_83cf:
	ldx #$00                                                  ; $83cf : $a2, $00

br_00_83d1:
	lda $83e1, y                                                  ; $83d1 : $b9, $e1, $83
	sta $0700, x                                                  ; $83d4 : $9d, $00, $07
	inx                                                  ; $83d7 : $e8
	iny                                                  ; $83d8 : $c8
	cpx #$14                                                  ; $83d9 : $e0, $14
	bcc br_00_83d1                                                  ; $83db : $90, $f4

	jsr Call_00_9290                                                  ; $83dd : $20, $90, $92
	rts                                                  ; $83e0 : $60


	.db $02                                                  ; $83e1 : $02
	and ($47, x)                                                  ; $83e2 : $21, $47
	.db $87                                                  ; $83e4 : $87
	dey                                                  ; $83e5 : $88
	.db $02                                                  ; $83e6 : $02
	and ($67, x)                                                  ; $83e7 : $21, $67
	sta $029e, x                                                  ; $83e9 : $9d, $9e, $02
	and ($87, x)                                                  ; $83ec : $21, $87
	.db $af                                                  ; $83ee : $af
	bcs br_00_83f3                                                  ; $83ef : $b0, $02

	and ($a7, x)                                                  ; $83f1 : $21, $a7

br_00_83f3:
	sta $02bb, x                                                  ; $83f3 : $9d, $bb, $02
	and ($47, x)                                                  ; $83f6 : $21, $47
	.db $af                                                  ; $83f8 : $af
	bcs br_00_83fd                                                  ; $83f9 : $b0, $02

	and ($67, x)                                                  ; $83fb : $21, $67

br_00_83fd:
	sta $02bb, x                                                  ; $83fd : $9d, $bb, $02
	and ($87, x)                                                  ; $8400 : $21, $87
	.db $87                                                  ; $8402 : $87
	dey                                                  ; $8403 : $88
	.db $02                                                  ; $8404 : $02
	and ($a7, x)                                                  ; $8405 : $21, $a7
	sta $a59e, x                                                  ; $8407 : $9d, $9e, $a5
	.db $2b                                                  ; $840a : $2b
	bne br_00_840f                                                  ; $840b : $d0, $02

	lda $2d                                                  ; $840d : $a5, $2d

br_00_840f:
	cmp #$1d                                                  ; $840f : $c9, $1d
	bne br_00_8417                                                  ; $8411 : $d0, $04

	lda #$e6                                                  ; $8413 : $a9, $e6
	bne br_00_841a                                                  ; $8415 : $d0, $03

br_00_8417:
	asl a                                                  ; $8417 : $0a
	asl a                                                  ; $8418 : $0a
	asl a                                                  ; $8419 : $0a

br_00_841a:
	sta $02fc                                                  ; $841a : $8d, $fc, $02
	lda $2c                                                  ; $841d : $a5, $2c
	asl a                                                  ; $841f : $0a
	asl a                                                  ; $8420 : $0a
	asl a                                                  ; $8421 : $0a
	sta $02ff                                                  ; $8422 : $8d, $ff, $02
	rts                                                  ; $8425 : $60


Call_00_8426:
	lda #$02                                                  ; $8426 : $a9, $02
	bit $0e                                                  ; $8428 : $24, $0e
	beq br_00_8446                                                  ; $842a : $f0, $1a

	lda $07fc                                                  ; $842c : $ad, $fc, $07
	and #$0f                                                  ; $842f : $29, $0f
	bne br_00_8446                                                  ; $8431 : $d0, $13

	lda $07fc                                                  ; $8433 : $ad, $fc, $07
	and #$10                                                  ; $8436 : $29, $10
	bne br_00_8441                                                  ; $8438 : $d0, $07

	lda #$00                                                  ; $843a : $a9, $00
	sta $02fd                                                  ; $843c : $8d, $fd, $02
	beq br_00_8446                                                  ; $843f : $f0, $05

br_00_8441:
	lda #$fd                                                  ; $8441 : $a9, $fd
	sta $02fd                                                  ; $8443 : $8d, $fd, $02

br_00_8446:
	rts                                                  ; $8446 : $60


Call_00_8447:
	ldx #$00                                                  ; $8447 : $a2, $00

br_00_8449:
	lda $9562, x                                                  ; $8449 : $bd, $62, $95
	sta $02fc, x                                                  ; $844c : $9d, $fc, $02
	inx                                                  ; $844f : $e8
	cpx #$04                                                  ; $8450 : $e0, $04
	bcc br_00_8449                                                  ; $8452 : $90, $f5

	lda #$02                                                  ; $8454 : $a9, $02
	ora $0e                                                  ; $8456 : $05, $0e
	sta $0e                                                  ; $8458 : $85, $0e
	rts                                                  ; $845a : $60


Call_00_845b:
	lda #$fd                                                  ; $845b : $a9, $fd
	and $0e                                                  ; $845d : $25, $0e
	sta $0e                                                  ; $845f : $85, $0e
	ldx #$00                                                  ; $8461 : $a2, $00

br_00_8463:
	lda #$ef                                                  ; $8463 : $a9, $ef
	sta $02fc, x                                                  ; $8465 : $9d, $fc, $02
	inx                                                  ; $8468 : $e8
	cpx #$04                                                  ; $8469 : $e0, $04
	bcc br_00_8463                                                  ; $846b : $90, $f6

	rts                                                  ; $846d : $60


Call_00_846e:
	lda $01b2                                                  ; $846e : $ad, $b2, $01
	cmp #$03                                                  ; $8471 : $c9, $03
	bcc br_00_8477                                                  ; $8473 : $90, $02

	lda #$00                                                  ; $8475 : $a9, $00

br_00_8477:
	sta $2a                                                  ; $8477 : $85, $2a
	jsr Call_00_90dd                                                  ; $8479 : $20, $dd, $90
	lda #$1e                                                  ; $847c : $a9, $1e
	sta $26                                                  ; $847e : $85, $26
	lda #$00                                                  ; $8480 : $a9, $00
	sta $2b                                                  ; $8482 : $85, $2b
	lda #$01                                                  ; $8484 : $a9, $01
	sta $2c                                                  ; $8486 : $85, $2c
	lda #$05                                                  ; $8488 : $a9, $05
	sta $2d                                                  ; $848a : $85, $2d
	jsr Call_00_8447                                                  ; $848c : $20, $47, $84
	jsr Call_00_8ef9                                                  ; $848f : $20, $f9, $8e

Jump_00_8492:
br_00_8492:
	jsr Call_00_d700                                                  ; $8492 : $20, $00, $d7
	jsr Call_00_f429                                                  ; $8495 : $20, $29, $f4
	bcs br_00_84a1                                                  ; $8498 : $b0, $07

	jsr Call_00_845b                                                  ; $849a : $20, $5b, $84
	jsr Call_00_90e7                                                  ; $849d : $20, $e7, $90
	rts                                                  ; $84a0 : $60


br_00_84a1:
	lda $8f                                                  ; $84a1 : $a5, $8f
	beq br_00_8492                                                  ; $84a3 : $f0, $ed

	cmp #$1b                                                  ; $84a5 : $c9, $1b
	bne br_00_84af                                                  ; $84a7 : $d0, $06

	jsr Call_00_9051                                                  ; $84a9 : $20, $51, $90
	jmp Jump_00_8492                                                  ; $84ac : $4c, $92, $84


br_00_84af:
	cmp #$02                                                  ; $84af : $c9, $02
	bne br_00_84b9                                                  ; $84b1 : $d0, $06

	jsr Call_00_905d                                                  ; $84b3 : $20, $5d, $90
	jmp Jump_00_8492                                                  ; $84b6 : $4c, $92, $84


br_00_84b9:
	cmp #$0d                                                  ; $84b9 : $c9, $0d
	beq br_00_84e2                                                  ; $84bb : $f0, $25

	jsr Call_00_9070                                                  ; $84bd : $20, $70, $90
	bcs br_00_8492                                                  ; $84c0 : $b0, $d0

	ldx $2e                                                  ; $84c2 : $a6, $2e
	sta $3b, x                                                  ; $84c4 : $95, $3b
	inc $2e                                                  ; $84c6 : $e6, $2e
	jsr Call_00_9083                                                  ; $84c8 : $20, $83, $90
	inc $2c                                                  ; $84cb : $e6, $2c
	lda $2e                                                  ; $84cd : $a5, $2e
	clc                                                  ; $84cf : $18
	adc #$0b                                                  ; $84d0 : $69, $0b
	cmp $26                                                  ; $84d2 : $c5, $26
	bcs br_00_84d9                                                  ; $84d4 : $b0, $03

	jmp Jump_00_84dc                                                  ; $84d6 : $4c, $dc, $84


br_00_84d9:
	jmp Jump_00_857f                                                  ; $84d9 : $4c, $7f, $85


Jump_00_84dc:
	jsr $8409                                                  ; $84dc : $20, $09, $84
	jmp Jump_00_8492                                                  ; $84df : $4c, $92, $84


br_00_84e2:
	lda $2e                                                  ; $84e2 : $a5, $2e
	bne br_00_84e9                                                  ; $84e4 : $d0, $03

	jmp Jump_00_8585                                                  ; $84e6 : $4c, $85, $85


br_00_84e9:
	jsr Call_00_8e93                                                  ; $84e9 : $20, $93, $8e
	jsr Call_00_8eac                                                  ; $84ec : $20, $ac, $8e
	bcc br_00_84f4                                                  ; $84ef : $90, $03

	jmp Jump_00_857f                                                  ; $84f1 : $4c, $7f, $85


br_00_84f4:
	lda $25                                                  ; $84f4 : $a5, $25
	bne br_00_84fb                                                  ; $84f6 : $d0, $03

	jmp Jump_00_858e                                                  ; $84f8 : $4c, $8e, $85


br_00_84fb:
	jmp Jump_00_84fe                                                  ; $84fb : $4c, $fe, $84


Jump_00_84fe:
	cmp #$01                                                  ; $84fe : $c9, $01
	bne br_00_8508                                                  ; $8500 : $d0, $06

	jsr Call_00_8f60                                                  ; $8502 : $20, $60, $8f
	jmp Jump_00_8585                                                  ; $8505 : $4c, $85, $85


br_00_8508:
	cmp #$02                                                  ; $8508 : $c9, $02
	bne br_00_851e                                                  ; $850a : $d0, $12

	jsr Call_00_8e54                                                  ; $850c : $20, $54, $8e
	lda #$01                                                  ; $850f : $a9, $01
	sta $2c                                                  ; $8511 : $85, $2c
	sta $2d                                                  ; $8513 : $85, $2d
	lda #$00                                                  ; $8515 : $a9, $00
	sta $09                                                  ; $8517 : $85, $09
	sta $2b                                                  ; $8519 : $85, $2b
	jmp Jump_00_8588                                                  ; $851b : $4c, $88, $85


br_00_851e:
	cmp #$1a                                                  ; $851e : $c9, $1a
	bne br_00_852b                                                  ; $8520 : $d0, $09

	lda #$00                                                  ; $8522 : $a9, $00
	sta $2a                                                  ; $8524 : $85, $2a
	sta $01b2                                                  ; $8526 : $8d, $b2, $01
	beq br_00_8585                                                  ; $8529 : $f0, $5a

br_00_852b:
	cmp #$1b                                                  ; $852b : $c9, $1b
	bne br_00_8538                                                  ; $852d : $d0, $09

	lda #$01                                                  ; $852f : $a9, $01
	sta $2a                                                  ; $8531 : $85, $2a
	sta $01b2                                                  ; $8533 : $8d, $b2, $01
	bne br_00_8585                                                  ; $8536 : $d0, $4d

br_00_8538:
	cmp #$1c                                                  ; $8538 : $c9, $1c
	bne br_00_8545                                                  ; $853a : $d0, $09

	lda #$02                                                  ; $853c : $a9, $02
	sta $2a                                                  ; $853e : $85, $2a
	sta $01b2                                                  ; $8540 : $8d, $b2, $01
	bne br_00_8585                                                  ; $8543 : $d0, $40

br_00_8545:
	cmp #$1d                                                  ; $8545 : $c9, $1d
	bne br_00_8558                                                  ; $8547 : $d0, $0f

	lda $2a                                                  ; $8549 : $a5, $2a
	cmp #$02                                                  ; $854b : $c9, $02
	bne br_00_857f                                                  ; $854d : $d0, $30

	lda #$00                                                  ; $854f : $a9, $00
	sta $2a                                                  ; $8551 : $85, $2a
	sta $01b2                                                  ; $8553 : $8d, $b2, $01
	beq br_00_8585                                                  ; $8556 : $f0, $2d

br_00_8558:
	cmp #$1e                                                  ; $8558 : $c9, $1e
	bne br_00_856b                                                  ; $855a : $d0, $0f

	lda $2a                                                  ; $855c : $a5, $2a
	cmp #$02                                                  ; $855e : $c9, $02
	bne br_00_857f                                                  ; $8560 : $d0, $1d

	lda #$01                                                  ; $8562 : $a9, $01
	sta $2a                                                  ; $8564 : $85, $2a
	sta $01b2                                                  ; $8566 : $8d, $b2, $01
	bne br_00_8585                                                  ; $8569 : $d0, $1a

br_00_856b:
	cmp #$1f                                                  ; $856b : $c9, $1f
	bne br_00_859d                                                  ; $856d : $d0, $2e

	lda $2a                                                  ; $856f : $a5, $2a
	cmp #$01                                                  ; $8571 : $c9, $01
	bne br_00_8579                                                  ; $8573 : $d0, $04

	lda #$ff                                                  ; $8575 : $a9, $ff
	sta $2a                                                  ; $8577 : $85, $2a

br_00_8579:
	jsr Call_00_8f60                                                  ; $8579 : $20, $60, $8f
	jmp Jump_00_8585                                                  ; $857c : $4c, $85, $85


Jump_00_857f:
br_00_857f:
	jsr Call_00_9028                                                  ; $857f : $20, $28, $90
	jsr Call_00_8f1e                                                  ; $8582 : $20, $1e, $8f

Jump_00_8585:
br_00_8585:
	jsr Call_00_9028                                                  ; $8585 : $20, $28, $90

Jump_00_8588:
	jsr Call_00_8ef9                                                  ; $8588 : $20, $f9, $8e
	jmp Jump_00_8492                                                  ; $858b : $4c, $92, $84


Jump_00_858e:
	jsr Call_00_845b                                                  ; $858e : $20, $5b, $84
	jsr Call_00_90e7                                                  ; $8591 : $20, $e7, $90
	lda #$00                                                  ; $8594 : $a9, $00
	sta $09                                                  ; $8596 : $85, $09
	lda #$00                                                  ; $8598 : $a9, $00
	sta $1c                                                  ; $859a : $85, $1c
	rts                                                  ; $859c : $60


Jump_00_859d:
br_00_859d:
	sec                                                  ; $859d : $38
	sbc #$03                                                  ; $859e : $e9, $03
	jmp Jump_00_81d3                                                  ; $85a0 : $4c, $d3, $81


	.db $43                                                  ; $85a3 : $43
	.db $3a                                                  ; $85a4 : $3a
	.db $5c                                                  ; $85a5 : $5c
	.db $57                                                  ; $85a6 : $57
	eor #$4e                                                  ; $85a7 : $49, $4e
	.db $44                                                  ; $85a9 : $44
	.db $4f                                                  ; $85aa : $4f
	.db $57                                                  ; $85ab : $57
	.db $53                                                  ; $85ac : $53
	rol $2020, x                                                  ; $85ad : $3e, $20, $20
	jsr $2020                                                  ; $85b0 : $20, $20, $20
	jsr $2020                                                  ; $85b3 : $20, $20, $20
	jsr $2020                                                  ; $85b6 : $20, $20, $20
	jsr $2020                                                  ; $85b9 : $20, $20, $20
	jsr $2020                                                  ; $85bc : $20, $20, $20
	jsr $2020                                                  ; $85bf : $20, $20, $20
	jsr $3a43                                                  ; $85c2 : $20, $43, $3a
	.db $5c                                                  ; $85c5 : $5c
	bvc br_00_861a                                                  ; $85c6 : $50, $52

	.db $4f                                                  ; $85c8 : $4f
	.db $47                                                  ; $85c9 : $47
	.db $52                                                  ; $85ca : $52
	eor ($4d, x)                                                  ; $85cb : $41, $4d
	rol $2020, x                                                  ; $85cd : $3e, $20, $20
	jsr $2020                                                  ; $85d0 : $20, $20, $20
	jsr $2020                                                  ; $85d3 : $20, $20, $20
	jsr $2020                                                  ; $85d6 : $20, $20, $20
	jsr $2020                                                  ; $85d9 : $20, $20, $20
	jsr $2020                                                  ; $85dc : $20, $20, $20
	jsr $2020                                                  ; $85df : $20, $20, $20
	jsr $3a43                                                  ; $85e2 : $20, $43, $3a
	.db $5c                                                  ; $85e5 : $5c
	rol $2020, x                                                  ; $85e6 : $3e, $20, $20
	jsr $2020                                                  ; $85e9 : $20, $20, $20
	jsr $2020                                                  ; $85ec : $20, $20, $20
	jsr $2020                                                  ; $85ef : $20, $20, $20
	jsr $2020                                                  ; $85f2 : $20, $20, $20
	jsr $2020                                                  ; $85f5 : $20, $20, $20
	jsr $2020                                                  ; $85f8 : $20, $20, $20
	jsr $2020                                                  ; $85fb : $20, $20, $20
	jsr $2020                                                  ; $85fe : $20, $20, $20
	jsr $4220                                                  ; $8601 : $20, $20, $42
	adc ($64, x)                                                  ; $8604 : $61, $64
	jsr $6f63                                                  ; $8606 : $20, $63, $6f
	adc $616d                                                  ; $8609 : $6d, $6d, $61
	ror $2064                                                  ; $860c : $6e, $64, $20
	.db $6f                                                  ; $860f : $6f
	.db $72                                                  ; $8610 : $72
	jsr $6966                                                  ; $8611 : $20, $66, $69
	jmp ($2065)                                                  ; $8614 : $6c, $65, $20


	ror $6d61                                                  ; $8617 : $6e, $61, $6d

br_00_861a:
	adc $20                                                  ; $861a : $65, $20
	jsr $2020                                                  ; $861c : $20, $20, $20
	jsr $2020                                                  ; $861f : $20, $20, $20
	jsr $2020                                                  ; $8622 : $20, $20, $20
	jsr $2020                                                  ; $8625 : $20, $20, $20
	jsr $2020                                                  ; $8628 : $20, $20, $20
	jsr $2020                                                  ; $862b : $20, $20, $20
	jsr $2020                                                  ; $862e : $20, $20, $20
	jsr $2020                                                  ; $8631 : $20, $20, $20
	jsr $2020                                                  ; $8634 : $20, $20, $20
	jsr $2020                                                  ; $8637 : $20, $20, $20
	jsr $2020                                                  ; $863a : $20, $20, $20
	jsr $2020                                                  ; $863d : $20, $20, $20
	jsr $2020                                                  ; $8640 : $20, $20, $20
	.db $43                                                  ; $8643 : $43
	.db $3a                                                  ; $8644 : $3a
	.db $5c                                                  ; $8645 : $5c
	jsr $2020                                                  ; $8646 : $20, $20, $20
	jsr $2020                                                  ; $8649 : $20, $20, $20
	jsr $2020                                                  ; $864c : $20, $20, $20
	jsr $2020                                                  ; $864f : $20, $20, $20
	jsr $2020                                                  ; $8652 : $20, $20, $20
	jsr $2020                                                  ; $8655 : $20, $20, $20
	jsr $2020                                                  ; $8658 : $20, $20, $20
	jsr $2020                                                  ; $865b : $20, $20, $20
	jsr $2020                                                  ; $865e : $20, $20, $20
	jsr $5720                                                  ; $8661 : $20, $20, $57
	.db $4f                                                  ; $8664 : $4f
	.db $52                                                  ; $8665 : $52
	.db $44                                                  ; $8666 : $44
	jsr $2020                                                  ; $8667 : $20, $20, $20
	jsr $4520                                                  ; $866a : $20, $20, $45
	cli                                                  ; $866d : $58
	eor $20                                                  ; $866e : $45, $20
	jsr $3120                                                  ; $8670 : $20, $20, $31
	and ($32), y                                                  ; $8673 : $31, $32
	.db $34                                                  ; $8675 : $34
	jsr $3020                                                  ; $8676 : $20, $20, $30
	sec                                                  ; $8679 : $38
	and $3330                                                  ; $867a : $2d, $30, $33
	and $3030                                                  ; $867d : $2d, $30, $30
	jsr $2020                                                  ; $8680 : $20, $20, $20
	eor $58                                                  ; $8683 : $45, $58
	.db $43                                                  ; $8685 : $43
	eor $4c                                                  ; $8686 : $45, $4c
	jsr $2020                                                  ; $8688 : $20, $20, $20
	jsr $5845                                                  ; $868b : $20, $45, $58
	eor $20                                                  ; $868e : $45, $20
	jsr $3220                                                  ; $8690 : $20, $20, $32
	bmi $31                                                  ; $8693 : $30, $31

	.db $37                                                  ; $8695 : $37
	jsr $3020                                                  ; $8696 : $20, $20, $30
	sec                                                  ; $8699 : $38
	and $3331                                                  ; $869a : $2d, $31, $33
	and $3030                                                  ; $869d : $2d, $30, $30
	jsr $2020                                                  ; $86a0 : $20, $20, $20
	.db $4b                                                  ; $86a3 : $4b
	eor $59                                                  ; $86a4 : $45, $59
	eor $58                                                  ; $86a6 : $45, $58
	eor $52                                                  ; $86a8 : $45, $52
	jsr $4520                                                  ; $86aa : $20, $20, $45
	cli                                                  ; $86ad : $58
	eor $20                                                  ; $86ae : $45, $20
	jsr $3136                                                  ; $86b0 : $20, $36, $31
	and ($30), y                                                  ; $86b3 : $31, $30
	and ($20), y                                                  ; $86b5 : $31, $20
	jsr $3830                                                  ; $86b7 : $20, $30, $38
	and $3330                                                  ; $86ba : $2d, $30, $33
	and $3030                                                  ; $86bd : $2d, $30, $30
	jsr $2020                                                  ; $86c0 : $20, $20, $20
	.db $54                                                  ; $86c3 : $54
	eor $4950, y                                                  ; $86c4 : $59, $50, $49
	lsr $3147                                                  ; $86c7 : $4e, $47, $31
	jsr $4520                                                  ; $86ca : $20, $20, $45
	cli                                                  ; $86cd : $58
	eor $20                                                  ; $86ce : $45, $20
	jsr $3138                                                  ; $86d0 : $20, $38, $31
	.db $32                                                  ; $86d3 : $32
	bmi $32                                                  ; $86d4 : $30, $32

	jsr $3020                                                  ; $86d6 : $20, $20, $30
	sec                                                  ; $86d9 : $38
	and $3630                                                  ; $86da : $2d, $30, $36
	and $3030                                                  ; $86dd : $2d, $30, $30
	jsr $2020                                                  ; $86e0 : $20, $20, $20
	.db $54                                                  ; $86e3 : $54
	eor $4950, y                                                  ; $86e4 : $59, $50, $49
	lsr $3247                                                  ; $86e7 : $4e, $47, $32
	jsr $4520                                                  ; $86ea : $20, $20, $45
	cli                                                  ; $86ed : $58
	eor $20                                                  ; $86ee : $45, $20
	jsr $3131                                                  ; $86f0 : $20, $31, $31
	.db $33                                                  ; $86f3 : $33
	bmi $33                                                  ; $86f4 : $30, $33

	jsr $3020                                                  ; $86f6 : $20, $20, $30
	sec                                                  ; $86f9 : $38
	and $3630                                                  ; $86fa : $2d, $30, $36
	and $3030                                                  ; $86fd : $2d, $30, $30
	jsr $2020                                                  ; $8700 : $20, $20, $20
	.db $54                                                  ; $8703 : $54
	eor $4950, y                                                  ; $8704 : $59, $50, $49
	lsr $2047                                                  ; $8707 : $4e, $47, $20
	jsr $4520                                                  ; $870a : $20, $20, $45
	cli                                                  ; $870d : $58
	eor $20                                                  ; $870e : $45, $20
	jsr $3131                                                  ; $8710 : $20, $31, $31
	.db $34                                                  ; $8713 : $34
	bmi br_00_874a                                                  ; $8714 : $30, $34

	jsr $3020                                                  ; $8716 : $20, $20, $30
	sec                                                  ; $8719 : $38
	and $3830                                                  ; $871a : $2d, $30, $38
	and $3030                                                  ; $871d : $2d, $30, $30
	jsr $2020                                                  ; $8720 : $20, $20, $20
	eor $5355                                                  ; $8723 : $4d, $55, $53
	eor #$43                                                  ; $8726 : $49, $43
	jsr $2020                                                  ; $8728 : $20, $20, $20
	jsr $5845                                                  ; $872b : $20, $45, $58
	eor $20                                                  ; $872e : $45, $20
	jsr $3131                                                  ; $8730 : $20, $31, $31
	and $30, x                                                  ; $8733 : $35, $30
	and $20, x                                                  ; $8735 : $35, $20
	jsr $3830                                                  ; $8737 : $20, $30, $38
	and $3231                                                  ; $873a : $2d, $31, $32
	and $3030                                                  ; $873d : $2d, $30, $30
	jsr $2020                                                  ; $8740 : $20, $20, $20
	eor $44                                                  ; $8743 : $45, $44
	eor #$54                                                  ; $8745 : $49, $54
	jsr $2020                                                  ; $8747 : $20, $20, $20

br_00_874a:
	jsr $4520                                                  ; $874a : $20, $20, $45
	cli                                                  ; $874d : $58
	eor $20                                                  ; $874e : $45, $20
	jsr $3131                                                  ; $8750 : $20, $31, $31
	rol $30, x                                                  ; $8753 : $36, $30
	rol $20, x                                                  ; $8755 : $36, $20
	jsr $3830                                                  ; $8757 : $20, $30, $38
	and $3830                                                  ; $875a : $2d, $30, $38
	and $3030                                                  ; $875d : $2d, $30, $30
	jsr $2020                                                  ; $8760 : $20, $20, $20
	.db $43                                                  ; $8763 : $43
	eor ($4c, x)                                                  ; $8764 : $41, $4c
	.db $43                                                  ; $8766 : $43
	jsr $2020                                                  ; $8767 : $20, $20, $20
	jsr $4520                                                  ; $876a : $20, $20, $45
	cli                                                  ; $876d : $58
	eor $20                                                  ; $876e : $45, $20
	jsr $3131                                                  ; $8770 : $20, $31, $31
	.db $37                                                  ; $8773 : $37
	sec                                                  ; $8774 : $38
	.db $37                                                  ; $8775 : $37
	jsr $3020                                                  ; $8776 : $20, $20, $30
	sec                                                  ; $8779 : $38
	and $3531                                                  ; $877a : $2d, $31, $35
	and $3030                                                  ; $877d : $2d, $30, $30
	jsr $2020                                                  ; $8780 : $20, $20, $20
	.db $47                                                  ; $8783 : $47
	.db $42                                                  ; $8784 : $42
	eor ($53, x)                                                  ; $8785 : $41, $53
	eor #$43                                                  ; $8787 : $49, $43
	jsr $2020                                                  ; $8789 : $20, $20, $20
	eor $58                                                  ; $878c : $45, $58
	eor $20                                                  ; $878e : $45, $20
	jsr $3131                                                  ; $8790 : $20, $31, $31
	sec                                                  ; $8793 : $38
	bmi br_00_87ce                                                  ; $8794 : $30, $38

	jsr $3020                                                  ; $8796 : $20, $20, $30
	sec                                                  ; $8799 : $38
	and $3631                                                  ; $879a : $2d, $31, $36
	and $3030                                                  ; $879d : $2d, $30, $30
	jsr $2020                                                  ; $87a0 : $20, $20, $20
	.db $42                                                  ; $87a3 : $42
	.db $47                                                  ; $87a4 : $47
	.db $44                                                  ; $87a5 : $44
	.db $52                                                  ; $87a6 : $52
	eor ($57, x)                                                  ; $87a7 : $41, $57
	jsr $2020                                                  ; $87a9 : $20, $20, $20
	eor $58                                                  ; $87ac : $45, $58
	eor $20                                                  ; $87ae : $45, $20
	jsr $3820                                                  ; $87b0 : $20, $20, $38
	sec                                                  ; $87b3 : $38
	bmi $39                                                  ; $87b4 : $30, $39

	jsr $3020                                                  ; $87b6 : $20, $20, $30
	sec                                                  ; $87b9 : $38
	and $3830                                                  ; $87ba : $2d, $30, $38
	and $3030                                                  ; $87bd : $2d, $30, $30
	jsr $2020                                                  ; $87c0 : $20, $20, $20
	lsr $42                                                  ; $87c3 : $46, $42
	eor ($53, x)                                                  ; $87c5 : $41, $53
	eor #$43                                                  ; $87c7 : $49, $43
	jsr $2020                                                  ; $87c9 : $20, $20, $20
	eor $58                                                  ; $87cc : $45, $58

br_00_87ce:
	eor $20                                                  ; $87ce : $45, $20
	jsr $3620                                                  ; $87d0 : $20, $20, $36
	and $3031, y                                                  ; $87d3 : $39, $31, $30
	jsr $3020                                                  ; $87d6 : $20, $20, $30
	sec                                                  ; $87d9 : $38
	and $3231                                                  ; $87da : $2d, $31, $32
	and $3030                                                  ; $87dd : $2d, $30, $30
	jsr $2020                                                  ; $87e0 : $20, $20, $20
	eor $54                                                  ; $87e3 : $45, $54
	eor $53                                                  ; $87e5 : $45, $53
	.db $54                                                  ; $87e7 : $54
	jsr $2020                                                  ; $87e8 : $20, $20, $20
	jsr $5845                                                  ; $87eb : $20, $45, $58
	eor $20                                                  ; $87ee : $45, $20
	jsr $3420                                                  ; $87f0 : $20, $20, $34
	and $3131, y                                                  ; $87f3 : $39, $31, $31
	jsr $3020                                                  ; $87f6 : $20, $20, $30
	sec                                                  ; $87f9 : $38
	and $3830                                                  ; $87fa : $2d, $30, $38
	and $3030                                                  ; $87fd : $2d, $30, $30
	jsr $2020                                                  ; $8800 : $20, $20, $20
	eor $5441                                                  ; $8803 : $4d, $41, $54
	pha                                                  ; $8806 : $48
	jsr $2020                                                  ; $8807 : $20, $20, $20
	jsr $4220                                                  ; $880a : $20, $20, $42
	eor ($4b, x)                                                  ; $880d : $41, $4b
	jsr $2020                                                  ; $880f : $20, $20, $20
	rol $31, x                                                  ; $8812 : $36, $31
	.db $33                                                  ; $8814 : $33
	.db $32                                                  ; $8815 : $32
	jsr $3020                                                  ; $8816 : $20, $20, $30
	sec                                                  ; $8819 : $38
	and $3830                                                  ; $881a : $2d, $30, $38
	and $3030                                                  ; $881d : $2d, $30, $30
	jsr $2020                                                  ; $8820 : $20, $20, $20
	eor ($42, x)                                                  ; $8823 : $41, $42
	.db $43                                                  ; $8825 : $43
	jsr $2020                                                  ; $8826 : $20, $20, $20
	jsr $2020                                                  ; $8829 : $20, $20, $20
	.db $42                                                  ; $882c : $42
	eor ($4b, x)                                                  ; $882d : $41, $4b
	jsr $2020                                                  ; $882f : $20, $20, $20
	sec                                                  ; $8832 : $38
	and ($34), y                                                  ; $8833 : $31, $34
	.db $33                                                  ; $8835 : $33
	jsr $3020                                                  ; $8836 : $20, $20, $30
	sec                                                  ; $8839 : $38
	and $3631                                                  ; $883a : $2d, $31, $36
	and $3030                                                  ; $883d : $2d, $30, $30
	jsr $2020                                                  ; $8840 : $20, $20, $20
	eor $4c                                                  ; $8843 : $45, $4c
	bvc br_00_888e                                                  ; $8845 : $50, $47

	eor ($4d, x)                                                  ; $8847 : $41, $4d
	eor $20                                                  ; $8849 : $45, $20
	jsr $4142                                                  ; $884b : $20, $42, $41
	.db $4b                                                  ; $884e : $4b
	jsr $3320                                                  ; $884f : $20, $20, $33
	and ($30), y                                                  ; $8852 : $31, $30
	bmi br_00_8886                                                  ; $8854 : $30, $30

	jsr $3020                                                  ; $8856 : $20, $20, $30
	sec                                                  ; $8859 : $38
	and $3831                                                  ; $885a : $2d, $31, $38
	and $3030                                                  ; $885d : $2d, $30, $30
	jsr $2020                                                  ; $8860 : $20, $20, $20
	.db $53                                                  ; $8863 : $53
	.db $4f                                                  ; $8864 : $4f
	jmp $2020                                                  ; $8865 : $4c, $20, $20


	jsr $2020                                                  ; $8868 : $20, $20, $20
	jsr $5845                                                  ; $886b : $20, $45, $58
	eor $20                                                  ; $886e : $45, $20
	jsr $3120                                                  ; $8870 : $20, $20, $31
	rol $38, x                                                  ; $8873 : $36, $38
	bmi $20                                                  ; $8875 : $30, $20

	jsr $3330                                                  ; $8877 : $20, $30, $33
	and $3830                                                  ; $887a : $2d, $30, $38
	and $3030                                                  ; $887d : $2d, $30, $30
	jsr $2020                                                  ; $8880 : $20, $20, $20
	eor $4e49                                                  ; $8883 : $4d, $49, $4e

br_00_8886:
	eor $20                                                  ; $8886 : $45, $20
	jsr $2020                                                  ; $8888 : $20, $20, $20
	jsr $5845                                                  ; $888b : $20, $45, $58

br_00_888e:
	eor $20                                                  ; $888e : $45, $20
	jsr $3920                                                  ; $8890 : $20, $20, $39
	.db $32                                                  ; $8893 : $32
	bmi br_00_88c6                                                  ; $8894 : $30, $30

	jsr $3020                                                  ; $8896 : $20, $20, $30
	sec                                                  ; $8899 : $38
	and $3432                                                  ; $889a : $2d, $32, $34
	and $3030                                                  ; $889d : $2d, $30, $30
	jsr $2020                                                  ; $88a0 : $20, $20, $20
	eor ($43, x)                                                  ; $88a3 : $41, $43
	pha                                                  ; $88a5 : $48
	eor $53                                                  ; $88a6 : $45, $53
	.db $53                                                  ; $88a8 : $53
	jsr $2020                                                  ; $88a9 : $20, $20, $20
	.db $42                                                  ; $88ac : $42
	eor ($4b, x)                                                  ; $88ad : $41, $4b
	jsr $3120                                                  ; $88af : $20, $20, $31
	and ($30), y                                                  ; $88b2 : $31, $30
	bmi br_00_88e6                                                  ; $88b4 : $30, $30

	jsr $3020                                                  ; $88b6 : $20, $20, $30
	sec                                                  ; $88b9 : $38
	and $3830                                                  ; $88ba : $2d, $30, $38
	and $3030                                                  ; $88bd : $2d, $30, $30
	jsr $2020                                                  ; $88c0 : $20, $20, $20
	.db $54                                                  ; $88c3 : $54
	eor $54                                                  ; $88c4 : $45, $54

br_00_88c6:
	.db $52                                                  ; $88c6 : $52
	eor ($56, x)                                                  ; $88c7 : $41, $56
	eor $58                                                  ; $88c9 : $45, $58
	jsr $4142                                                  ; $88cb : $20, $42, $41
	.db $4b                                                  ; $88ce : $4b
	jsr $2020                                                  ; $88cf : $20, $20, $20
	.db $37                                                  ; $88d2 : $37
	.db $37                                                  ; $88d3 : $37
	sec                                                  ; $88d4 : $38
	bmi $20                                                  ; $88d5 : $30, $20

	jsr $3530                                                  ; $88d7 : $20, $30, $35
	and $3532                                                  ; $88da : $2d, $32, $35
	and $3030                                                  ; $88dd : $2d, $30, $30
	jsr $2020                                                  ; $88e0 : $20, $20, $20
	bvc $4f                                                  ; $88e3 : $50, $4f

	.db $4b                                                  ; $88e5 : $4b

br_00_88e6:
	eor $52                                                  ; $88e6 : $45, $52
	jsr $2020                                                  ; $88e8 : $20, $20, $20
	jsr $5845                                                  ; $88eb : $20, $45, $58
	eor $20                                                  ; $88ee : $45, $20
	jsr $3420                                                  ; $88f0 : $20, $20, $34
	.db $33                                                  ; $88f3 : $33
	and ($30), y                                                  ; $88f4 : $31, $30
	jsr $3020                                                  ; $88f6 : $20, $20, $30
	sec                                                  ; $88f9 : $38
	and $3830                                                  ; $88fa : $2d, $30, $38
	and $3030                                                  ; $88fd : $2d, $30, $30
	jsr $2020                                                  ; $8900 : $20, $20, $20
	.db $4b                                                  ; $8903 : $4b
	eor ($4c, x)                                                  ; $8904 : $41, $4c
	eor ($4f, x)                                                  ; $8906 : $41, $4f
	.db $4b                                                  ; $8908 : $4b
	jsr $2020                                                  ; $8909 : $20, $20, $20
	.db $42                                                  ; $890c : $42
	eor ($4b, x)                                                  ; $890d : $41, $4b
	jsr $3220                                                  ; $890f : $20, $20, $32
	.db $33                                                  ; $8912 : $33
	.db $34                                                  ; $8913 : $34
	and $30, x                                                  ; $8914 : $35, $30
	jsr $3020                                                  ; $8916 : $20, $20, $30
	sec                                                  ; $8919 : $38
	and $3830                                                  ; $891a : $2d, $30, $38
	and $3030                                                  ; $891d : $2d, $30, $30
	jsr $2020                                                  ; $8920 : $20, $20, $20
	.db $44                                                  ; $8923 : $44
	eor ($4e, x)                                                  ; $8924 : $41, $4e
	.db $43                                                  ; $8926 : $43
	eor $20                                                  ; $8927 : $45, $20
	jsr $2020                                                  ; $8929 : $20, $20, $20
	.db $42                                                  ; $892c : $42
	eor ($4b, x)                                                  ; $892d : $41, $4b
	jsr $2020                                                  ; $892f : $20, $20, $20
	.db $37                                                  ; $8932 : $37
	and ($38), y                                                  ; $8933 : $31, $38
	sec                                                  ; $8935 : $38
	jsr $3020                                                  ; $8936 : $20, $20, $30
	sec                                                  ; $8939 : $38
	and $3830                                                  ; $893a : $2d, $30, $38
	and $3030                                                  ; $893d : $2d, $30, $30
	jsr $2020                                                  ; $8940 : $20, $20, $20
	jsr $3332                                                  ; $8943 : $20, $32, $33
	jsr $6966                                                  ; $8946 : $20, $66, $69
	jmp ($2865)                                                  ; $8949 : $6c, $65, $28


	.db $73                                                  ; $894c : $73
	and #$20                                                  ; $894d : $29, $20
	jsr $2020                                                  ; $894f : $20, $20, $20
	jsr $3320                                                  ; $8952 : $20, $20, $33
	.db $34                                                  ; $8955 : $34
	and $33, x                                                  ; $8956 : $35, $33
	.db $37                                                  ; $8958 : $37
	bmi $20                                                  ; $8959 : $30, $20

	.db $62                                                  ; $895b : $62
	adc $6574, y                                                  ; $895c : $79, $74, $65
	.db $73                                                  ; $895f : $73
	jsr $2020                                                  ; $8960 : $20, $20, $20
	jsr $2030                                                  ; $8963 : $20, $30, $20
	jsr $6964                                                  ; $8966 : $20, $64, $69
	.db $72                                                  ; $8969 : $72
	plp                                                  ; $896a : $28
	.db $73                                                  ; $896b : $73
	and #$20                                                  ; $896c : $29, $20
	jsr $2020                                                  ; $896e : $20, $20, $20
	.db $33                                                  ; $8971 : $33
	bmi br_00_89a4                                                  ; $8972 : $30, $30

	bmi $30                                                  ; $8974 : $30, $30

	jsr $7962                                                  ; $8976 : $20, $62, $79
	.db $74                                                  ; $8979 : $74
	adc $73                                                  ; $897a : $65, $73
	jsr $7266                                                  ; $897c : $20, $66, $72
	adc $65                                                  ; $897f : $65, $65
	jsr $4320                                                  ; $8981 : $20, $20, $43
	pha                                                  ; $8984 : $48
	bmi $31                                                  ; $8985 : $30, $31

	jsr $2020                                                  ; $8987 : $20, $20, $20
	jsr $2020                                                  ; $898a : $20, $20, $20
	jsr $2020                                                  ; $898d : $20, $20, $20
	jsr $3120                                                  ; $8990 : $20, $20, $31
	rol $31, x                                                  ; $8993 : $36, $31
	bmi br_00_89b7                                                  ; $8995 : $30, $20

	jsr $3830                                                  ; $8997 : $20, $30, $38
	and $3130                                                  ; $899a : $2d, $30, $31
	and $3939                                                  ; $899d : $2d, $39, $39
	jsr $2020                                                  ; $89a0 : $20, $20, $20
	.db $43                                                  ; $89a3 : $43

br_00_89a4:
	pha                                                  ; $89a4 : $48
	bmi $34                                                  ; $89a5 : $30, $34

	jsr $2020                                                  ; $89a7 : $20, $20, $20
	jsr $2020                                                  ; $89aa : $20, $20, $20
	jsr $2020                                                  ; $89ad : $20, $20, $20
	jsr $3320                                                  ; $89b0 : $20, $20, $33
	.db $32                                                  ; $89b3 : $32
	.db $32                                                  ; $89b4 : $32
	bmi br_00_89d7                                                  ; $89b5 : $30, $20

br_00_89b7:
	jsr $3830                                                  ; $89b7 : $20, $30, $38
	and $3130                                                  ; $89ba : $2d, $30, $31
	and $3939                                                  ; $89bd : $2d, $39, $39
	jsr $2020                                                  ; $89c0 : $20, $20, $20
	.db $43                                                  ; $89c3 : $43
	pha                                                  ; $89c4 : $48
	bmi $35                                                  ; $89c5 : $30, $35

	jsr $2020                                                  ; $89c7 : $20, $20, $20
	jsr $2020                                                  ; $89ca : $20, $20, $20
	jsr $2020                                                  ; $89cd : $20, $20, $20
	jsr $3420                                                  ; $89d0 : $20, $20, $34
	.db $33                                                  ; $89d3 : $33
	.db $33                                                  ; $89d4 : $33
	bmi br_00_89f7                                                  ; $89d5 : $30, $20

br_00_89d7:
	jsr $3830                                                  ; $89d7 : $20, $30, $38
	and $3130                                                  ; $89da : $2d, $30, $31
	and $3939                                                  ; $89dd : $2d, $39, $39
	jsr $2020                                                  ; $89e0 : $20, $20, $20
	.db $43                                                  ; $89e3 : $43
	pha                                                  ; $89e4 : $48
	bmi $36                                                  ; $89e5 : $30, $36

	jsr $2020                                                  ; $89e7 : $20, $20, $20
	jsr $2020                                                  ; $89ea : $20, $20, $20
	jsr $2020                                                  ; $89ed : $20, $20, $20
	jsr $3520                                                  ; $89f0 : $20, $20, $35
	rol $34, x                                                  ; $89f3 : $36, $34
	bmi $20                                                  ; $89f5 : $30, $20

br_00_89f7:
	jsr $3830                                                  ; $89f7 : $20, $30, $38
	and $3130                                                  ; $89fa : $2d, $30, $31
	and $3939                                                  ; $89fd : $2d, $39, $39
	jsr $2020                                                  ; $8a00 : $20, $20, $20
	jsr $2034                                                  ; $8a03 : $20, $34, $20
	ror $69                                                  ; $8a06 : $66, $69
	jmp ($2865)                                                  ; $8a08 : $6c, $65, $28


	.db $73                                                  ; $8a0b : $73
	and #$20                                                  ; $8a0c : $29, $20
	jsr $2020                                                  ; $8a0e : $20, $20, $20
	and ($34), y                                                  ; $8a11 : $31, $34
	sec                                                  ; $8a13 : $38
	bmi $30                                                  ; $8a14 : $30, $30

	jsr $7962                                                  ; $8a16 : $20, $62, $79
	.db $74                                                  ; $8a19 : $74
	adc $73                                                  ; $8a1a : $65, $73
	jsr $2020                                                  ; $8a1c : $20, $20, $20
	jsr $2020                                                  ; $8a1f : $20, $20, $20
	jsr $3020                                                  ; $8a22 : $20, $20, $30
	jsr $6964                                                  ; $8a25 : $20, $64, $69
	.db $72                                                  ; $8a28 : $72
	plp                                                  ; $8a29 : $28
	.db $73                                                  ; $8a2a : $73
	and #$20                                                  ; $8a2b : $29, $20
	jsr $2020                                                  ; $8a2d : $20, $20, $20
	and ($31), y                                                  ; $8a30 : $31, $31
	sec                                                  ; $8a32 : $38
	bmi br_00_8a65                                                  ; $8a33 : $30, $30

	bmi $20                                                  ; $8a35 : $30, $20

	.db $62                                                  ; $8a37 : $62
	adc $6574, y                                                  ; $8a38 : $79, $74, $65
	.db $73                                                  ; $8a3b : $73
	jsr $7266                                                  ; $8a3c : $20, $66, $72
	adc $65                                                  ; $8a3f : $65, $65
	jsr $4320                                                  ; $8a41 : $20, $20, $43
	.db $4f                                                  ; $8a44 : $4f
	lsr $4946                                                  ; $8a45 : $4e, $46, $49
	.db $47                                                  ; $8a48 : $47
	rol $5953                                                  ; $8a49 : $2e, $53, $59
	.db $53                                                  ; $8a4c : $53
	jsr $2020                                                  ; $8a4d : $20, $20, $20
	jsr $2020                                                  ; $8a50 : $20, $20, $20
	jsr $3420                                                  ; $8a53 : $20, $20, $34
	rol $20, x                                                  ; $8a56 : $36, $20
	bmi br_00_8a8c                                                  ; $8a58 : $30, $32

	and $3330                                                  ; $8a5a : $2d, $30, $33
	and $3939                                                  ; $8a5d : $2d, $39, $39
	jsr $2020                                                  ; $8a60 : $20, $20, $20
	eor ($55, x)                                                  ; $8a63 : $41, $55

br_00_8a65:
	.db $54                                                  ; $8a65 : $54
	.db $4f                                                  ; $8a66 : $4f
	eor $58                                                  ; $8a67 : $45, $58
	eor $43                                                  ; $8a69 : $45, $43
	rol $4142                                                  ; $8a6b : $2e, $42, $41
	.db $54                                                  ; $8a6e : $54
	jsr $2020                                                  ; $8a6f : $20, $20, $20
	jsr $2020                                                  ; $8a72 : $20, $20, $20
	sec                                                  ; $8a75 : $38
	bmi br_00_8a98                                                  ; $8a76 : $30, $20

	bmi $32                                                  ; $8a78 : $30, $32

	and $3330                                                  ; $8a7a : $2d, $30, $33
	and $3939                                                  ; $8a7d : $2d, $39, $39
	jsr $2020                                                  ; $8a80 : $20, $20, $20
	.db $43                                                  ; $8a83 : $43
	.db $4f                                                  ; $8a84 : $4f
	eor $414d                                                  ; $8a85 : $4d, $4d, $41
	lsr $2e44                                                  ; $8a88 : $4e, $44, $2e
	.db $43                                                  ; $8a8b : $43

br_00_8a8c:
	.db $4f                                                  ; $8a8c : $4f
	eor $2020                                                  ; $8a8d : $4d, $20, $20
	jsr $2020                                                  ; $8a90 : $20, $20, $20
	.db $34                                                  ; $8a93 : $34
	bmi $39                                                  ; $8a94 : $30, $39

	rol $20, x                                                  ; $8a96 : $36, $20

br_00_8a98:
	bmi $32                                                  ; $8a98 : $30, $32

	and $3330                                                  ; $8a9a : $2d, $30, $33
	and $3939                                                  ; $8a9d : $2d, $39, $39
	jsr $2020                                                  ; $8aa0 : $20, $20, $20
	.db $57                                                  ; $8aa3 : $57
	eor #$4e                                                  ; $8aa4 : $49, $4e
	.db $44                                                  ; $8aa6 : $44
	.db $4f                                                  ; $8aa7 : $4f
	.db $57                                                  ; $8aa8 : $57
	.db $53                                                  ; $8aa9 : $53
	jsr $2020                                                  ; $8aaa : $20, $20, $20
	jsr $443c                                                  ; $8aad : $20, $3c, $44
	eor #$52                                                  ; $8ab0 : $49, $52
	rol $2020, x                                                  ; $8ab2 : $3e, $20, $20
	jsr $2020                                                  ; $8ab5 : $20, $20, $20
	bmi $38                                                  ; $8ab8 : $30, $38

	and $3830                                                  ; $8aba : $2d, $30, $38
	and $3030                                                  ; $8abd : $2d, $30, $30
	jsr $2020                                                  ; $8ac0 : $20, $20, $20
	bvc $52                                                  ; $8ac3 : $50, $52

	.db $4f                                                  ; $8ac5 : $4f
	.db $47                                                  ; $8ac6 : $47
	.db $52                                                  ; $8ac7 : $52
	eor ($4d, x)                                                  ; $8ac8 : $41, $4d
	jsr $2020                                                  ; $8aca : $20, $20, $20
	jsr $443c                                                  ; $8acd : $20, $3c, $44
	eor #$52                                                  ; $8ad0 : $49, $52
	rol $2020, x                                                  ; $8ad2 : $3e, $20, $20
	jsr $2020                                                  ; $8ad5 : $20, $20, $20
	bmi br_00_8b12                                                  ; $8ad8 : $30, $38

	and $3830                                                  ; $8ada : $2d, $30, $38
	and $3030                                                  ; $8add : $2d, $30, $30
	jsr $2020                                                  ; $8ae0 : $20, $20, $20
	jsr $2033                                                  ; $8ae3 : $20, $33, $20
	ror $69                                                  ; $8ae6 : $66, $69
	jmp ($2865)                                                  ; $8ae8 : $6c, $65, $28


	.db $73                                                  ; $8aeb : $73
	and #$20                                                  ; $8aec : $29, $20
	jsr $2020                                                  ; $8aee : $20, $20, $20
	jsr $3234                                                  ; $8af1 : $20, $34, $32
	.db $32                                                  ; $8af4 : $32
	rol $20, x                                                  ; $8af5 : $36, $20
	.db $62                                                  ; $8af7 : $62
	adc $6574, y                                                  ; $8af8 : $79, $74, $65
	.db $73                                                  ; $8afb : $73
	jsr $2020                                                  ; $8afc : $20, $20, $20
	jsr $2020                                                  ; $8aff : $20, $20, $20
	jsr $3220                                                  ; $8b02 : $20, $20, $32
	jsr $6964                                                  ; $8b05 : $20, $64, $69
	.db $72                                                  ; $8b08 : $72
	plp                                                  ; $8b09 : $28
	.db $73                                                  ; $8b0a : $73
	and #$20                                                  ; $8b0b : $29, $20
	jsr $3120                                                  ; $8b0d : $20, $20, $31
	and ($38), y                                                  ; $8b10 : $31, $38

br_00_8b12:
	bmi $30                                                  ; $8b12 : $30, $30

	bmi $30                                                  ; $8b14 : $30, $30

	jsr $7962                                                  ; $8b16 : $20, $62, $79
	.db $74                                                  ; $8b19 : $74
	adc $73                                                  ; $8b1a : $65, $73
	jsr $7266                                                  ; $8b1c : $20, $66, $72
	adc $65                                                  ; $8b1f : $65, $65
	jsr $5020                                                  ; $8b21 : $20, $20, $50
	.db $72                                                  ; $8b24 : $72
	adc $73                                                  ; $8b25 : $65, $73
	.db $73                                                  ; $8b27 : $73
	jsr $6e61                                                  ; $8b28 : $20, $61, $6e
	adc $6b20, y                                                  ; $8b2b : $79, $20, $6b
	adc $79                                                  ; $8b2e : $65, $79
	jsr $6f74                                                  ; $8b30 : $20, $74, $6f
	jsr $6f63                                                  ; $8b33 : $20, $63, $6f
	ror $6974                                                  ; $8b36 : $6e, $74, $69
	ror $6575                                                  ; $8b39 : $6e, $75, $65
	jsr $2e2e                                                  ; $8b3c : $20, $2e, $2e
	rol $2020                                                  ; $8b3f : $2e, $20, $20
	jsr $6f56                                                  ; $8b42 : $20, $56, $6f
	jmp ($6d75)                                                  ; $8b45 : $6c, $75, $6d


	adc $20                                                  ; $8b48 : $65, $20
	adc #$6e                                                  ; $8b4a : $69, $6e
	jsr $7264                                                  ; $8b4c : $20, $64, $72
	adc #$76                                                  ; $8b4f : $69, $76
	adc $20                                                  ; $8b51 : $65, $20
	.db $43                                                  ; $8b53 : $43
	jsr $7369                                                  ; $8b54 : $20, $69, $73
	jsr $7242                                                  ; $8b57 : $20, $42, $72
	adc ($76, x)                                                  ; $8b5a : $61, $76
	adc $20                                                  ; $8b5c : $65, $20
	jsr $2020                                                  ; $8b5e : $20, $20, $20
	jsr $5620                                                  ; $8b61 : $20, $20, $56
	.db $6f                                                  ; $8b64 : $6f
	jmp ($6d75)                                                  ; $8b65 : $6c, $75, $6d


	adc $20                                                  ; $8b68 : $65, $20
	.db $53                                                  ; $8b6a : $53
	adc $72                                                  ; $8b6b : $65, $72
	adc #$61                                                  ; $8b6d : $69, $61
	jmp ($6920)                                                  ; $8b6f : $6c, $20, $69


	.db $73                                                  ; $8b72 : $73
	jsr $3245                                                  ; $8b73 : $20, $45, $32
	and $3146                                                  ; $8b76 : $2d, $46, $31
	jsr $2020                                                  ; $8b79 : $20, $20, $20
	jsr $2020                                                  ; $8b7c : $20, $20, $20
	jsr $2020                                                  ; $8b7f : $20, $20, $20
	jsr $6944                                                  ; $8b82 : $20, $44, $69
	.db $72                                                  ; $8b85 : $72
	adc $63                                                  ; $8b86 : $65, $63
	.db $74                                                  ; $8b88 : $74
	.db $6f                                                  ; $8b89 : $6f
	.db $72                                                  ; $8b8a : $72
	adc $6f20, y                                                  ; $8b8b : $79, $20, $6f
	ror $20                                                  ; $8b8e : $66, $20
	.db $43                                                  ; $8b90 : $43
	.db $3a                                                  ; $8b91 : $3a
	.db $5c                                                  ; $8b92 : $5c
	jsr $2020                                                  ; $8b93 : $20, $20, $20
	jsr $2020                                                  ; $8b96 : $20, $20, $20
	jsr $2020                                                  ; $8b99 : $20, $20, $20
	jsr $2020                                                  ; $8b9c : $20, $20, $20
	jsr $4420                                                  ; $8b9f : $20, $20, $44
	adc #$72                                                  ; $8ba2 : $69, $72
	adc $63                                                  ; $8ba4 : $65, $63
	.db $74                                                  ; $8ba6 : $74
	.db $6f                                                  ; $8ba7 : $6f
	.db $72                                                  ; $8ba8 : $72
	adc $6f20, y                                                  ; $8ba9 : $79, $20, $6f
	ror $20                                                  ; $8bac : $66, $20
	.db $43                                                  ; $8bae : $43
	.db $3a                                                  ; $8baf : $3a
	.db $5c                                                  ; $8bb0 : $5c
	.db $57                                                  ; $8bb1 : $57
	eor #$4e                                                  ; $8bb2 : $49, $4e
	.db $44                                                  ; $8bb4 : $44
	.db $4f                                                  ; $8bb5 : $4f
	.db $57                                                  ; $8bb6 : $57
	.db $53                                                  ; $8bb7 : $53
	jsr $2020                                                  ; $8bb8 : $20, $20, $20
	jsr $2020                                                  ; $8bbb : $20, $20, $20
	jsr $6944                                                  ; $8bbe : $20, $44, $69
	.db $72                                                  ; $8bc1 : $72
	adc $63                                                  ; $8bc2 : $65, $63
	.db $74                                                  ; $8bc4 : $74
	.db $6f                                                  ; $8bc5 : $6f
	.db $72                                                  ; $8bc6 : $72
	adc $6f20, y                                                  ; $8bc7 : $79, $20, $6f
	ror $20                                                  ; $8bca : $66, $20
	.db $43                                                  ; $8bcc : $43
	.db $3a                                                  ; $8bcd : $3a
	.db $5c                                                  ; $8bce : $5c
	bvc br_00_8c23                                                  ; $8bcf : $50, $52

	.db $4f                                                  ; $8bd1 : $4f
	.db $47                                                  ; $8bd2 : $47
	.db $52                                                  ; $8bd3 : $52
	eor ($4d, x)                                                  ; $8bd4 : $41, $4d
	jsr $2020                                                  ; $8bd6 : $20, $20, $20
	jsr $2020                                                  ; $8bd9 : $20, $20, $20
	jsr $6328                                                  ; $8bdc : $20, $28, $63
	.db $6f                                                  ; $8bdf : $6f
	ror $6974                                                  ; $8be0 : $6e, $74, $69
	ror $6975                                                  ; $8be3 : $6e, $75, $69
	ror $2067                                                  ; $8be6 : $6e, $67, $20
	jsr $3a63                                                  ; $8be9 : $20, $63, $3a
	.db $5c                                                  ; $8bec : $5c
	bvs br_00_8c61                                                  ; $8bed : $70, $72

	.db $6f                                                  ; $8bef : $6f
	.db $67                                                  ; $8bf0 : $67
	.db $72                                                  ; $8bf1 : $72
	adc ($6d, x)                                                  ; $8bf2 : $61, $6d
	and #$20                                                  ; $8bf4 : $29, $20
	jsr $2020                                                  ; $8bf6 : $20, $20, $20
	jsr Call_00_a320                                                  ; $8bf9 : $20, $20, $a3
	sta $c3                                                  ; $8bfc : $85, $c3
	sta $e3                                                  ; $8bfe : $85, $e3
	sta $03                                                  ; $8c00 : $85, $03
	stx $23                                                  ; $8c02 : $86, $23
	stx $43                                                  ; $8c04 : $86, $43
	stx $43                                                  ; $8c06 : $86, $43
	.db $8b                                                  ; $8c08 : $8b
	.db $63                                                  ; $8c09 : $63
	.db $8b                                                  ; $8c0a : $8b
	.db $bf                                                  ; $8c0b : $bf
	.db $8b                                                  ; $8c0c : $8b
	.db $63                                                  ; $8c0d : $63
	stx $83                                                  ; $8c0e : $86, $83
	stx $a3                                                  ; $8c10 : $86, $a3
	stx $c3                                                  ; $8c12 : $86, $c3
	stx $e3                                                  ; $8c14 : $86, $e3
	stx $03                                                  ; $8c16 : $86, $03
	.db $87                                                  ; $8c18 : $87
	.db $23                                                  ; $8c19 : $23
	.db $87                                                  ; $8c1a : $87
	.db $43                                                  ; $8c1b : $43
	.db $87                                                  ; $8c1c : $87
	.db $63                                                  ; $8c1d : $63
	.db $87                                                  ; $8c1e : $87
	.db $83                                                  ; $8c1f : $83
	.db $87                                                  ; $8c20 : $87
	.db $a3                                                  ; $8c21 : $a3
	.db $87                                                  ; $8c22 : $87

br_00_8c23:
	.db $c3                                                  ; $8c23 : $c3
	.db $87                                                  ; $8c24 : $87
	.db $e3                                                  ; $8c25 : $e3
	.db $87                                                  ; $8c26 : $87
	.db $03                                                  ; $8c27 : $03
	dey                                                  ; $8c28 : $88
	.db $23                                                  ; $8c29 : $23
	dey                                                  ; $8c2a : $88
	.db $43                                                  ; $8c2b : $43
	dey                                                  ; $8c2c : $88
	.db $63                                                  ; $8c2d : $63
	dey                                                  ; $8c2e : $88
	.db $83                                                  ; $8c2f : $83
	dey                                                  ; $8c30 : $88
	.db $a3                                                  ; $8c31 : $a3
	dey                                                  ; $8c32 : $88
	.db $c3                                                  ; $8c33 : $c3
	dey                                                  ; $8c34 : $88
	.db $e3                                                  ; $8c35 : $e3
	dey                                                  ; $8c36 : $88
	.db $03                                                  ; $8c37 : $03
	.db $89                                                  ; $8c38 : $89
	.db $23                                                  ; $8c39 : $23
	.db $89                                                  ; $8c3a : $89
	.db $43                                                  ; $8c3b : $43
	.db $89                                                  ; $8c3c : $89
	.db $63                                                  ; $8c3d : $63
	.db $89                                                  ; $8c3e : $89
	.db $43                                                  ; $8c3f : $43
	.db $8b                                                  ; $8c40 : $8b
	.db $63                                                  ; $8c41 : $63
	.db $8b                                                  ; $8c42 : $8b
	lda ($8b, x)                                                  ; $8c43 : $a1, $8b
	.db $83                                                  ; $8c45 : $83
	.db $89                                                  ; $8c46 : $89
	.db $a3                                                  ; $8c47 : $a3
	.db $89                                                  ; $8c48 : $89
	.db $c3                                                  ; $8c49 : $c3
	.db $89                                                  ; $8c4a : $89
	.db $e3                                                  ; $8c4b : $e3
	.db $89                                                  ; $8c4c : $89
	.db $03                                                  ; $8c4d : $03
	txa                                                  ; $8c4e : $8a
	.db $23                                                  ; $8c4f : $23
	txa                                                  ; $8c50 : $8a
	.db $43                                                  ; $8c51 : $43
	.db $8b                                                  ; $8c52 : $8b
	.db $63                                                  ; $8c53 : $63
	.db $8b                                                  ; $8c54 : $8b
	.db $83                                                  ; $8c55 : $83
	.db $8b                                                  ; $8c56 : $8b
	.db $43                                                  ; $8c57 : $43
	txa                                                  ; $8c58 : $8a
	.db $63                                                  ; $8c59 : $63
	txa                                                  ; $8c5a : $8a
	.db $83                                                  ; $8c5b : $83
	txa                                                  ; $8c5c : $8a
	.db $a3                                                  ; $8c5d : $a3
	txa                                                  ; $8c5e : $8a
	.db $c3                                                  ; $8c5f : $c3
	txa                                                  ; $8c60 : $8a

br_00_8c61:
	.db $e3                                                  ; $8c61 : $e3
	txa                                                  ; $8c62 : $8a
	.db $03                                                  ; $8c63 : $03
	.db $8b                                                  ; $8c64 : $8b
	.db $43                                                  ; $8c65 : $43
	.db $8b                                                  ; $8c66 : $8b
	.db $63                                                  ; $8c67 : $63
	.db $8b                                                  ; $8c68 : $8b
	.db $bf                                                  ; $8c69 : $bf
	.db $8b                                                  ; $8c6a : $8b
	.db $63                                                  ; $8c6b : $63
	stx $83                                                  ; $8c6c : $86, $83
	stx $a3                                                  ; $8c6e : $86, $a3
	stx $c3                                                  ; $8c70 : $86, $c3
	stx $e3                                                  ; $8c72 : $86, $e3
	stx $03                                                  ; $8c74 : $86, $03
	.db $87                                                  ; $8c76 : $87
	.db $23                                                  ; $8c77 : $23
	.db $87                                                  ; $8c78 : $87
	.db $43                                                  ; $8c79 : $43
	.db $87                                                  ; $8c7a : $87
	.db $63                                                  ; $8c7b : $63
	.db $87                                                  ; $8c7c : $87
	.db $83                                                  ; $8c7d : $83
	.db $87                                                  ; $8c7e : $87
	.db $a3                                                  ; $8c7f : $a3
	.db $87                                                  ; $8c80 : $87
	.db $23                                                  ; $8c81 : $23
	.db $8b                                                  ; $8c82 : $8b
	cmp $c38b, x                                                  ; $8c83 : $dd, $8b, $c3
	.db $87                                                  ; $8c86 : $87
	.db $e3                                                  ; $8c87 : $e3
	.db $87                                                  ; $8c88 : $87
	.db $03                                                  ; $8c89 : $03
	dey                                                  ; $8c8a : $88
	.db $23                                                  ; $8c8b : $23
	dey                                                  ; $8c8c : $88
	.db $43                                                  ; $8c8d : $43
	dey                                                  ; $8c8e : $88
	.db $63                                                  ; $8c8f : $63
	dey                                                  ; $8c90 : $88
	.db $83                                                  ; $8c91 : $83
	dey                                                  ; $8c92 : $88
	.db $a3                                                  ; $8c93 : $a3
	dey                                                  ; $8c94 : $88
	.db $c3                                                  ; $8c95 : $c3
	dey                                                  ; $8c96 : $88
	.db $e3                                                  ; $8c97 : $e3
	dey                                                  ; $8c98 : $88
	.db $03                                                  ; $8c99 : $03
	.db $89                                                  ; $8c9a : $89
	.db $23                                                  ; $8c9b : $23
	.db $89                                                  ; $8c9c : $89
	.db $43                                                  ; $8c9d : $43
	.db $89                                                  ; $8c9e : $89
	.db $63                                                  ; $8c9f : $63
	.db $89                                                  ; $8ca0 : $89
	eor $58                                                  ; $8ca1 : $45, $58
	eor #$54                                                  ; $8ca3 : $49, $54
	.db $00                                                  ; $8ca5 : $00
	.db $44                                                  ; $8ca6 : $44
	eor #$52                                                  ; $8ca7 : $49, $52
	.db $00                                                  ; $8ca9 : $00
	.db $43                                                  ; $8caa : $43
	jmp $0053                                                  ; $8cab : $4c, $53, $00


	.db $57                                                  ; $8cae : $57
	.db $4f                                                  ; $8caf : $4f
	.db $52                                                  ; $8cb0 : $52
	.db $44                                                  ; $8cb1 : $44
	.db $00                                                  ; $8cb2 : $00
	eor $58                                                  ; $8cb3 : $45, $58
	.db $43                                                  ; $8cb5 : $43
	eor $4c                                                  ; $8cb6 : $45, $4c
	.db $00                                                  ; $8cb8 : $00
	.db $4b                                                  ; $8cb9 : $4b
	eor $59                                                  ; $8cba : $45, $59
	eor $43                                                  ; $8cbc : $45, $43
	eor $52                                                  ; $8cbe : $45, $52
	.db $00                                                  ; $8cc0 : $00
	.db $54                                                  ; $8cc1 : $54
	eor $4950, y                                                  ; $8cc2 : $59, $50, $49
	lsr $3147                                                  ; $8cc5 : $4e, $47, $31
	.db $00                                                  ; $8cc8 : $00
	.db $54                                                  ; $8cc9 : $54
	eor $4950, y                                                  ; $8cca : $59, $50, $49
	lsr $3247                                                  ; $8ccd : $4e, $47, $32
	.db $00                                                  ; $8cd0 : $00
	eor $5355                                                  ; $8cd1 : $4d, $55, $53
	eor #$43                                                  ; $8cd4 : $49, $43
	.db $00                                                  ; $8cd6 : $00
	eor $44                                                  ; $8cd7 : $45, $44
	eor #$54                                                  ; $8cd9 : $49, $54
	.db $00                                                  ; $8cdb : $00
	.db $43                                                  ; $8cdc : $43
	eor ($4c, x)                                                  ; $8cdd : $41, $4c
	.db $43                                                  ; $8cdf : $43
	.db $00                                                  ; $8ce0 : $00
	.db $47                                                  ; $8ce1 : $47
	.db $42                                                  ; $8ce2 : $42
	eor ($53, x)                                                  ; $8ce3 : $41, $53
	eor #$43                                                  ; $8ce5 : $49, $43
	.db $00                                                  ; $8ce7 : $00
	.db $42                                                  ; $8ce8 : $42
	.db $47                                                  ; $8ce9 : $47
	.db $44                                                  ; $8cea : $44
	.db $52                                                  ; $8ceb : $52
	eor ($57, x)                                                  ; $8cec : $41, $57
	.db $00                                                  ; $8cee : $00
	lsr $42                                                  ; $8cef : $46, $42
	eor ($53, x)                                                  ; $8cf1 : $41, $53
	eor #$43                                                  ; $8cf3 : $49, $43
	.db $00                                                  ; $8cf5 : $00
	eor $54                                                  ; $8cf6 : $45, $54
	eor $53                                                  ; $8cf8 : $45, $53
	.db $54                                                  ; $8cfa : $54
	.db $00                                                  ; $8cfb : $00
	.db $53                                                  ; $8cfc : $53
	.db $4f                                                  ; $8cfd : $4f
	jmp $4d00                                                  ; $8cfe : $4c, $00, $4d


	eor #$4e                                                  ; $8d01 : $49, $4e
	eor $00                                                  ; $8d03 : $45, $00
	bvc br_00_8d56                                                  ; $8d05 : $50, $4f

	.db $4b                                                  ; $8d07 : $4b
	eor $52                                                  ; $8d08 : $45, $52
	.db $00                                                  ; $8d0a : $00
	bvc $4f                                                  ; $8d0b : $50, $4f

	.db $4b                                                  ; $8d0d : $4b
	eor $52                                                  ; $8d0e : $45, $52
	.db $00                                                  ; $8d10 : $00
	eor $54                                                  ; $8d11 : $45, $54
	eor $53                                                  ; $8d13 : $45, $53
	.db $54                                                  ; $8d15 : $54
	.db $00                                                  ; $8d16 : $00
	eor $54                                                  ; $8d17 : $45, $54
	eor $53                                                  ; $8d19 : $45, $53
	.db $54                                                  ; $8d1b : $54
	.db $00                                                  ; $8d1c : $00
	eor $54                                                  ; $8d1d : $45, $54
	eor $53                                                  ; $8d1f : $45, $53
	.db $54                                                  ; $8d21 : $54
	.db $00                                                  ; $8d22 : $00
	eor $54                                                  ; $8d23 : $45, $54
	eor $53                                                  ; $8d25 : $45, $53
	.db $54                                                  ; $8d27 : $54
	.db $00                                                  ; $8d28 : $00
	bvc $4f                                                  ; $8d29 : $50, $4f

	.db $4b                                                  ; $8d2b : $4b
	eor $52                                                  ; $8d2c : $45, $52
	.db $00                                                  ; $8d2e : $00
	bvc $4f                                                  ; $8d2f : $50, $4f

	.db $4b                                                  ; $8d31 : $4b
	eor $52                                                  ; $8d32 : $45, $52
	.db $00                                                  ; $8d34 : $00
	bvc $4f                                                  ; $8d35 : $50, $4f

	.db $4b                                                  ; $8d37 : $4b
	eor $52                                                  ; $8d38 : $45, $52
	.db $00                                                  ; $8d3a : $00
	.db $43                                                  ; $8d3b : $43
	.db $44                                                  ; $8d3c : $44
	.db $5c                                                  ; $8d3d : $5c
	.db $57                                                  ; $8d3e : $57
	eor #$4e                                                  ; $8d3f : $49, $4e
	.db $44                                                  ; $8d41 : $44
	.db $4f                                                  ; $8d42 : $4f
	.db $57                                                  ; $8d43 : $57
	.db $53                                                  ; $8d44 : $53
	.db $00                                                  ; $8d45 : $00
	.db $43                                                  ; $8d46 : $43
	.db $44                                                  ; $8d47 : $44
	.db $5c                                                  ; $8d48 : $5c
	bvc $52                                                  ; $8d49 : $50, $52

	.db $4f                                                  ; $8d4b : $4f
	.db $47                                                  ; $8d4c : $47
	.db $52                                                  ; $8d4d : $52
	eor ($4d, x)                                                  ; $8d4e : $41, $4d
	.db $00                                                  ; $8d50 : $00
	.db $43                                                  ; $8d51 : $43
	.db $44                                                  ; $8d52 : $44
	.db $5c                                                  ; $8d53 : $5c
	.db $00                                                  ; $8d54 : $00
	.db $43                                                  ; $8d55 : $43

br_00_8d56:
	.db $44                                                  ; $8d56 : $44
	jsr $4957                                                  ; $8d57 : $20, $57, $49
	lsr $4f44                                                  ; $8d5a : $4e, $44, $4f
	.db $57                                                  ; $8d5d : $57
	.db $53                                                  ; $8d5e : $53
	.db $00                                                  ; $8d5f : $00
	.db $43                                                  ; $8d60 : $43
	.db $44                                                  ; $8d61 : $44
	jsr $5250                                                  ; $8d62 : $20, $50, $52
	.db $4f                                                  ; $8d65 : $4f
	.db $47                                                  ; $8d66 : $47
	.db $52                                                  ; $8d67 : $52
	eor ($4d, x)                                                  ; $8d68 : $41, $4d
	.db $00                                                  ; $8d6a : $00
	.db $44                                                  ; $8d6b : $44
	eor #$52                                                  ; $8d6c : $49, $52
	.db $2f                                                  ; $8d6e : $2f
	bvc br_00_8d71                                                  ; $8d6f : $50, $00

br_00_8d71:
	.db $00                                                  ; $8d71 : $00

Call_00_8d72:
	jsr Call_00_8447                                                  ; $8d72 : $20, $47, $84
	lda #$00                                                  ; $8d75 : $a9, $00
	sta $2b                                                  ; $8d77 : $85, $2b
	jsr Call_00_8e2b                                                  ; $8d79 : $20, $2b, $8e

Jump_00_8d7c:
br_00_8d7c:
	jsr Call_00_d700                                                  ; $8d7c : $20, $00, $d7
	lda $8f                                                  ; $8d7f : $a5, $8f
	bne br_00_8d9e                                                  ; $8d81 : $d0, $1b

	lda $a2                                                  ; $8d83 : $a5, $a2
	cmp #$01                                                  ; $8d85 : $c9, $01
	bne br_00_8d7c                                                  ; $8d87 : $d0, $f3

	jsr $df96                                                  ; $8d89 : $20, $96, $df
	bcs br_00_8d7c                                                  ; $8d8c : $b0, $ee

	lda $1c                                                  ; $8d8e : $a5, $1c
	cmp #$00                                                  ; $8d90 : $c9, $00
	bne br_00_8d97                                                  ; $8d92 : $d0, $03

	jmp Jump_00_8dcf                                                  ; $8d94 : $4c, $cf, $8d


br_00_8d97:
	cmp #$80                                                  ; $8d97 : $c9, $80
	beq br_00_8dd7                                                  ; $8d99 : $f0, $3c

	jmp Jump_00_8d7c                                                  ; $8d9b : $4c, $7c, $8d


br_00_8d9e:
	cmp #$1b                                                  ; $8d9e : $c9, $1b
	beq br_00_8dcf                                                  ; $8da0 : $f0, $2d

	cmp #$02                                                  ; $8da2 : $c9, $02
	bne br_00_8dac                                                  ; $8da4 : $d0, $06

	jsr Call_00_905d                                                  ; $8da6 : $20, $5d, $90
	jmp Jump_00_8d7c                                                  ; $8da9 : $4c, $7c, $8d


br_00_8dac:
	cmp #$0d                                                  ; $8dac : $c9, $0d
	beq br_00_8dd7                                                  ; $8dae : $f0, $27

	jsr Call_00_9070                                                  ; $8db0 : $20, $70, $90
	bcs br_00_8d7c                                                  ; $8db3 : $b0, $c7

	ldx $2e                                                  ; $8db5 : $a6, $2e
	sta $3b, x                                                  ; $8db7 : $95, $3b
	inc $2e                                                  ; $8db9 : $e6, $2e
	jsr Call_00_9083                                                  ; $8dbb : $20, $83, $90
	inc $2c                                                  ; $8dbe : $e6, $2c
	lda $2e                                                  ; $8dc0 : $a5, $2e
	clc                                                  ; $8dc2 : $18
	adc #$03                                                  ; $8dc3 : $69, $03
	cmp $26                                                  ; $8dc5 : $c5, $26
	bcs br_00_8e02                                                  ; $8dc7 : $b0, $39

	jsr $8409                                                  ; $8dc9 : $20, $09, $84
	jmp Jump_00_8d7c                                                  ; $8dcc : $4c, $7c, $8d


Jump_00_8dcf:
br_00_8dcf:
	jsr Call_00_845b                                                  ; $8dcf : $20, $5b, $84
	lda #$00                                                  ; $8dd2 : $a9, $00
	sta $1c                                                  ; $8dd4 : $85, $1c
	rts                                                  ; $8dd6 : $60


br_00_8dd7:
	lda $2e                                                  ; $8dd7 : $a5, $2e
	beq br_00_8d7c                                                  ; $8dd9 : $f0, $a1

	jsr Call_00_8e93                                                  ; $8ddb : $20, $93, $8e
	jsr Call_00_8eac                                                  ; $8dde : $20, $ac, $8e
	bcs br_00_8e02                                                  ; $8de1 : $b0, $1f

	lda $25                                                  ; $8de3 : $a5, $25
	cmp #$0a                                                  ; $8de5 : $c9, $0a
	bne br_00_8df7                                                  ; $8de7 : $d0, $0e

	jsr Call_00_9284                                                  ; $8de9 : $20, $84, $92
	lda #$05                                                  ; $8dec : $a9, $05
	sta $1c                                                  ; $8dee : $85, $1c
	jsr Call_00_845b                                                  ; $8df0 : $20, $5b, $84
	jsr Call_00_90e7                                                  ; $8df3 : $20, $e7, $90
	rts                                                  ; $8df6 : $60


br_00_8df7:
	cmp #$03                                                  ; $8df7 : $c9, $03
	bcc br_00_8e02                                                  ; $8df9 : $90, $07

	cmp #$19                                                  ; $8dfb : $c9, $19
	bcs br_00_8e02                                                  ; $8dfd : $b0, $03

	jmp Jump_00_859d                                                  ; $8dff : $4c, $9d, $85


br_00_8e02:
	lda #$09                                                  ; $8e02 : $a9, $09
	sta $2c                                                  ; $8e04 : $85, $2c
	lda #$03                                                  ; $8e06 : $a9, $03
	sta $25                                                  ; $8e08 : $85, $25
	lda #$fb                                                  ; $8e0a : $a9, $fb
	sta $27                                                  ; $8e0c : $85, $27
	lda #$8b                                                  ; $8e0e : $a9, $8b
	sta $28                                                  ; $8e10 : $85, $28
	jsr Call_00_8fe1                                                  ; $8e12 : $20, $e1, $8f
	jsr Call_00_845b                                                  ; $8e15 : $20, $5b, $84
	lda #$20                                                  ; $8e18 : $a9, $20
	sta $07fc                                                  ; $8e1a : $8d, $fc, $07

br_00_8e1d:
	lda $07fc                                                  ; $8e1d : $ad, $fc, $07
	bne br_00_8e1d                                                  ; $8e20 : $d0, $fb

	jsr Call_00_8447                                                  ; $8e22 : $20, $47, $84
	jsr Call_00_8e2b                                                  ; $8e25 : $20, $2b, $8e
	jmp Jump_00_8d7c                                                  ; $8e28 : $4c, $7c, $8d


Call_00_8e2b:
	lda #$13                                                  ; $8e2b : $a9, $13
	sta $26                                                  ; $8e2d : $85, $26
	lda #$09                                                  ; $8e2f : $a9, $09
	sta $2c                                                  ; $8e31 : $85, $2c
	lda #$0c                                                  ; $8e33 : $a9, $0c
	sta $2d                                                  ; $8e35 : $85, $2d
	lda #$05                                                  ; $8e37 : $a9, $05
	sta $25                                                  ; $8e39 : $85, $25
	lda #$fb                                                  ; $8e3b : $a9, $fb
	sta $27                                                  ; $8e3d : $85, $27
	lda #$8b                                                  ; $8e3f : $a9, $8b
	sta $28                                                  ; $8e41 : $85, $28
	jsr Call_00_8fe1                                                  ; $8e43 : $20, $e1, $8f
	inc $2c                                                  ; $8e46 : $e6, $2c
	inc $2c                                                  ; $8e48 : $e6, $2c
	inc $2c                                                  ; $8e4a : $e6, $2c
	lda #$00                                                  ; $8e4c : $a9, $00
	sta $2e                                                  ; $8e4e : $85, $2e
	jsr $8409                                                  ; $8e50 : $20, $09, $84
	rts                                                  ; $8e53 : $60


Call_00_8e54:
	jsr Call_00_92ed                                                  ; $8e54 : $20, $ed, $92
	jsr Call_00_9245                                                  ; $8e57 : $20, $45, $92
	jsr Call_00_92aa                                                  ; $8e5a : $20, $aa, $92
	lda #$20                                                  ; $8e5d : $a9, $20
	sta PPUADDR                                                  ; $8e5f : $8d, $06, $20
	lda #$00                                                  ; $8e62 : $a9, $00
	sta PPUADDR                                                  ; $8e64 : $8d, $06, $20
	ldx #$00                                                  ; $8e67 : $a2, $00
	ldy #$04                                                  ; $8e69 : $a0, $04
	lda #$00                                                  ; $8e6b : $a9, $00

br_00_8e6d:
	sta PPUDATA                                                  ; $8e6d : $8d, $07, $20
	dex                                                  ; $8e70 : $ca
	bne br_00_8e6d                                                  ; $8e71 : $d0, $fa

	dey                                                  ; $8e73 : $88
	bne br_00_8e6d                                                  ; $8e74 : $d0, $f7

	jsr Call_00_9284                                                  ; $8e76 : $20, $84, $92
	jsr Call_00_929e                                                  ; $8e79 : $20, $9e, $92
	rts                                                  ; $8e7c : $60


Call_00_8e7d:
	lda #$00                                                  ; $8e7d : $a9, $00
	sta PPUADDR                                                  ; $8e7f : $8d, $06, $20
	sta PPUADDR                                                  ; $8e82 : $8d, $06, $20
	tax                                                  ; $8e85 : $aa
	tay                                                  ; $8e86 : $a8

br_00_8e87:
	sta PPUDATA                                                  ; $8e87 : $8d, $07, $20
	inx                                                  ; $8e8a : $e8
	bne br_00_8e87                                                  ; $8e8b : $d0, $fa

	iny                                                  ; $8e8d : $c8
	cpy #$20                                                  ; $8e8e : $c0, $20
	bcc br_00_8e87                                                  ; $8e90 : $90, $f5

	rts                                                  ; $8e92 : $60


Call_00_8e93:
	ldy #$00                                                  ; $8e93 : $a0, $00

br_00_8e95:
	lda $3b.w, y                                                  ; $8e95 : $b9, $3b, $00
	cmp #$61                                                  ; $8e98 : $c9, $61
	bcc br_00_8ea6                                                  ; $8e9a : $90, $0a

	cmp #$7b                                                  ; $8e9c : $c9, $7b
	bcs br_00_8ea6                                                  ; $8e9e : $b0, $06

	sec                                                  ; $8ea0 : $38
	sbc #$20                                                  ; $8ea1 : $e9, $20
	sta $3b.w, y                                                  ; $8ea3 : $99, $3b, $00

br_00_8ea6:
	iny                                                  ; $8ea6 : $c8
	cpy $2e                                                  ; $8ea7 : $c4, $2e
	bcc br_00_8e95                                                  ; $8ea9 : $90, $ea

	rts                                                  ; $8eab : $60


Call_00_8eac:
	lda #$00                                                  ; $8eac : $a9, $00
	sta $25                                                  ; $8eae : $85, $25
	lda #$a1                                                  ; $8eb0 : $a9, $a1
	sta $14                                                  ; $8eb2 : $85, $14
	lda #$8c                                                  ; $8eb4 : $a9, $8c
	sta $15                                                  ; $8eb6 : $85, $15

br_00_8eb8:
	jsr Call_00_8ed7                                                  ; $8eb8 : $20, $d7, $8e
	jsr Call_00_8ee1                                                  ; $8ebb : $20, $e1, $8e
	bcc br_00_8ed6                                                  ; $8ebe : $90, $16

	inc $25                                                  ; $8ec0 : $e6, $25
	iny                                                  ; $8ec2 : $c8
	tya                                                  ; $8ec3 : $98
	clc                                                  ; $8ec4 : $18
	adc $14                                                  ; $8ec5 : $65, $14
	sta $14                                                  ; $8ec7 : $85, $14
	lda #$00                                                  ; $8ec9 : $a9, $00
	adc $15                                                  ; $8ecb : $65, $15
	sta $15                                                  ; $8ecd : $85, $15
	ldy #$00                                                  ; $8ecf : $a0, $00
	lda ($14), y                                                  ; $8ed1 : $b1, $14
	bne br_00_8eb8                                                  ; $8ed3 : $d0, $e3

	sec                                                  ; $8ed5 : $38

br_00_8ed6:
	rts                                                  ; $8ed6 : $60


Call_00_8ed7:
	ldy #$00                                                  ; $8ed7 : $a0, $00

br_00_8ed9:
	lda ($14), y                                                  ; $8ed9 : $b1, $14
	beq br_00_8ee0                                                  ; $8edb : $f0, $03

	iny                                                  ; $8edd : $c8
	bne br_00_8ed9                                                  ; $8ede : $d0, $f9

br_00_8ee0:
	rts                                                  ; $8ee0 : $60


Call_00_8ee1:
	cpy $2e                                                  ; $8ee1 : $c4, $2e
	bne br_00_8ef7                                                  ; $8ee3 : $d0, $12

	ldy #$00                                                  ; $8ee5 : $a0, $00

br_00_8ee7:
	lda ($14), y                                                  ; $8ee7 : $b1, $14
	cmp $3b.w, y                                                  ; $8ee9 : $d9, $3b, $00
	bne br_00_8ef5                                                  ; $8eec : $d0, $07

	iny                                                  ; $8eee : $c8
	cpy $2e                                                  ; $8eef : $c4, $2e
	bcc br_00_8ee7                                                  ; $8ef1 : $90, $f4

	clc                                                  ; $8ef3 : $18
	rts                                                  ; $8ef4 : $60


br_00_8ef5:
	ldy $2e                                                  ; $8ef5 : $a4, $2e

br_00_8ef7:
	sec                                                  ; $8ef7 : $38
	rts                                                  ; $8ef8 : $60


Call_00_8ef9:
	lda $2a                                                  ; $8ef9 : $a5, $2a
	sta $25                                                  ; $8efb : $85, $25
	lda #$fb                                                  ; $8efd : $a9, $fb
	sta $27                                                  ; $8eff : $85, $27
	lda #$8b                                                  ; $8f01 : $a9, $8b
	sta $28                                                  ; $8f03 : $85, $28
	jsr Call_00_8fe1                                                  ; $8f05 : $20, $e1, $8f
	lda #$0c                                                  ; $8f08 : $a9, $0c
	sta $2c                                                  ; $8f0a : $85, $2c
	lda $2a                                                  ; $8f0c : $a5, $2a
	cmp #$02                                                  ; $8f0e : $c9, $02
	bne br_00_8f16                                                  ; $8f10 : $d0, $04

	lda #$05                                                  ; $8f12 : $a9, $05
	sta $2c                                                  ; $8f14 : $85, $2c

br_00_8f16:
	lda #$00                                                  ; $8f16 : $a9, $00
	sta $2e                                                  ; $8f18 : $85, $2e
	jsr $8409                                                  ; $8f1a : $20, $09, $84
	rts                                                  ; $8f1d : $60


Call_00_8f1e:
	lda #$fb                                                  ; $8f1e : $a9, $fb
	sta $27                                                  ; $8f20 : $85, $27
	lda #$8b                                                  ; $8f22 : $a9, $8b
	sta $28                                                  ; $8f24 : $85, $28
	lda #$03                                                  ; $8f26 : $a9, $03
	sta $25                                                  ; $8f28 : $85, $25
	jsr Call_00_8fe1                                                  ; $8f2a : $20, $e1, $8f
	jsr Call_00_9028                                                  ; $8f2d : $20, $28, $90

Call_00_8f30:
	ldx $2c                                                  ; $8f30 : $a6, $2c
	lda $2d                                                  ; $8f32 : $a5, $2d
	cmp #$1e                                                  ; $8f34 : $c9, $1e
	bcc br_00_8f3a                                                  ; $8f36 : $90, $02

	sbc #$1e                                                  ; $8f38 : $e9, $1e

br_00_8f3a:
	tay                                                  ; $8f3a : $a8
	jsr Call_00_90b6                                                  ; $8f3b : $20, $b6, $90
	ldx #$00                                                  ; $8f3e : $a2, $00
	lda $26                                                  ; $8f40 : $a5, $26
	tay                                                  ; $8f42 : $a8
	sta $0700, x                                                  ; $8f43 : $9d, $00, $07
	inx                                                  ; $8f46 : $e8
	lda $13                                                  ; $8f47 : $a5, $13
	sta $0700, x                                                  ; $8f49 : $9d, $00, $07
	inx                                                  ; $8f4c : $e8
	lda $12                                                  ; $8f4d : $a5, $12
	sta $0700, x                                                  ; $8f4f : $9d, $00, $07
	inx                                                  ; $8f52 : $e8
	lda #$00                                                  ; $8f53 : $a9, $00

br_00_8f55:
	sta $0700, x                                                  ; $8f55 : $9d, $00, $07
	inx                                                  ; $8f58 : $e8
	dey                                                  ; $8f59 : $88
	bne br_00_8f55                                                  ; $8f5a : $d0, $f9

	jsr Call_00_9290                                                  ; $8f5c : $20, $90, $92
	rts                                                  ; $8f5f : $60


Call_00_8f60:
	jsr Call_00_9028                                                  ; $8f60 : $20, $28, $90
	lda #$00                                                  ; $8f63 : $a9, $00
	sta $25                                                  ; $8f65 : $85, $25
	lda $2a                                                  ; $8f67 : $a5, $2a
	bne br_00_8f79                                                  ; $8f69 : $d0, $0e

	lda #$09                                                  ; $8f6b : $a9, $09
	sta $16                                                  ; $8f6d : $85, $16
	lda #$3f                                                  ; $8f6f : $a9, $3f
	sta $27                                                  ; $8f71 : $85, $27
	lda #$8c                                                  ; $8f73 : $a9, $8c
	sta $28                                                  ; $8f75 : $85, $28
	bne br_00_8fd1                                                  ; $8f77 : $d0, $58

br_00_8f79:
	cmp #$01                                                  ; $8f79 : $c9, $01
	bne br_00_8f8b                                                  ; $8f7b : $d0, $0e

	lda #$1b                                                  ; $8f7d : $a9, $1b
	sta $16                                                  ; $8f7f : $85, $16
	lda #$07                                                  ; $8f81 : $a9, $07
	sta $27                                                  ; $8f83 : $85, $27
	lda #$8c                                                  ; $8f85 : $a9, $8c
	sta $28                                                  ; $8f87 : $85, $28
	bne br_00_8fd1                                                  ; $8f89 : $d0, $46

br_00_8f8b:
	cmp #$02                                                  ; $8f8b : $c9, $02
	bne br_00_8f9e                                                  ; $8f8d : $d0, $0f

	lda #$0a                                                  ; $8f8f : $a9, $0a
	sta $16                                                  ; $8f91 : $85, $16
	lda #$51                                                  ; $8f93 : $a9, $51
	sta $27                                                  ; $8f95 : $85, $27
	lda #$8c                                                  ; $8f97 : $a9, $8c
	sta $28                                                  ; $8f99 : $85, $28
	jmp Jump_00_8fd1                                                  ; $8f9b : $4c, $d1, $8f


br_00_8f9e:
	jsr Call_00_845b                                                  ; $8f9e : $20, $5b, $84
	lda #$01                                                  ; $8fa1 : $a9, $01
	sta $2a                                                  ; $8fa3 : $85, $2a
	lda #$0f                                                  ; $8fa5 : $a9, $0f
	sta $16                                                  ; $8fa7 : $85, $16
	lda #$65                                                  ; $8fa9 : $a9, $65
	sta $27                                                  ; $8fab : $85, $27
	lda #$8c                                                  ; $8fad : $a9, $8c
	sta $28                                                  ; $8faf : $85, $28
	jsr Call_00_8fd1                                                  ; $8fb1 : $20, $d1, $8f

br_00_8fb4:
	jsr Call_00_d700                                                  ; $8fb4 : $20, $00, $d7
	lda $8f                                                  ; $8fb7 : $a5, $8f
	beq br_00_8fb4                                                  ; $8fb9 : $f0, $f9

	jsr Call_00_8447                                                  ; $8fbb : $20, $47, $84
	jsr Call_00_9028                                                  ; $8fbe : $20, $28, $90
	lda #$00                                                  ; $8fc1 : $a9, $00
	sta $25                                                  ; $8fc3 : $85, $25
	lda #$0e                                                  ; $8fc5 : $a9, $0e
	sta $16                                                  ; $8fc7 : $85, $16
	lda #$83                                                  ; $8fc9 : $a9, $83
	sta $27                                                  ; $8fcb : $85, $27
	lda #$8c                                                  ; $8fcd : $a9, $8c
	sta $28                                                  ; $8fcf : $85, $28

Call_00_8fd1:
Jump_00_8fd1:
br_00_8fd1:
	jsr Call_00_8fe1                                                  ; $8fd1 : $20, $e1, $8f
	jsr Call_00_9028                                                  ; $8fd4 : $20, $28, $90
	jsr Call_00_9028                                                  ; $8fd7 : $20, $28, $90
	inc $25                                                  ; $8fda : $e6, $25
	dec $16                                                  ; $8fdc : $c6, $16
	bne br_00_8fd1                                                  ; $8fde : $d0, $f1

	rts                                                  ; $8fe0 : $60


Call_00_8fe1:
	ldx $2c                                                  ; $8fe1 : $a6, $2c
	lda $2d                                                  ; $8fe3 : $a5, $2d
	cmp #$1e                                                  ; $8fe5 : $c9, $1e
	bcc br_00_8feb                                                  ; $8fe7 : $90, $02

	sbc #$1e                                                  ; $8fe9 : $e9, $1e

br_00_8feb:
	tay                                                  ; $8feb : $a8
	jsr Call_00_90b6                                                  ; $8fec : $20, $b6, $90
	ldx #$00                                                  ; $8fef : $a2, $00
	lda $26                                                  ; $8ff1 : $a5, $26
	sta $0700, x                                                  ; $8ff3 : $9d, $00, $07
	inx                                                  ; $8ff6 : $e8
	lda $13                                                  ; $8ff7 : $a5, $13
	sta $0700, x                                                  ; $8ff9 : $9d, $00, $07
	inx                                                  ; $8ffc : $e8
	lda $12                                                  ; $8ffd : $a5, $12
	sta $0700, x                                                  ; $8fff : $9d, $00, $07
	inx                                                  ; $9002 : $e8
	lda $25                                                  ; $9003 : $a5, $25
	asl a                                                  ; $9005 : $0a
	tay                                                  ; $9006 : $a8
	lda ($27), y                                                  ; $9007 : $b1, $27
	iny                                                  ; $9009 : $c8
	sta $14                                                  ; $900a : $85, $14
	lda ($27), y                                                  ; $900c : $b1, $27
	sta $15                                                  ; $900e : $85, $15
	ldy #$00                                                  ; $9010 : $a0, $00

br_00_9012:
	lda ($14), y                                                  ; $9012 : $b1, $14
	cmp #$ff                                                  ; $9014 : $c9, $ff
	beq br_00_9024                                                  ; $9016 : $f0, $0c

	sec                                                  ; $9018 : $38
	sbc #$20                                                  ; $9019 : $e9, $20
	sta $0700, x                                                  ; $901b : $9d, $00, $07
	inx                                                  ; $901e : $e8
	iny                                                  ; $901f : $c8
	cpy $26                                                  ; $9020 : $c4, $26
	bcc br_00_9012                                                  ; $9022 : $90, $ee

br_00_9024:
	jsr Call_00_9290                                                  ; $9024 : $20, $90, $92
	rts                                                  ; $9027 : $60


Call_00_9028:
	lda #$01                                                  ; $9028 : $a9, $01
	sta $2c                                                  ; $902a : $85, $2c
	inc $2d                                                  ; $902c : $e6, $2d
	lda $2d                                                  ; $902e : $a5, $2d
	cmp #$1e                                                  ; $9030 : $c9, $1e
	bcc br_00_9050                                                  ; $9032 : $90, $1c

	cmp #$3c                                                  ; $9034 : $c9, $3c
	bcc br_00_9042                                                  ; $9036 : $90, $0a

	lda #$00                                                  ; $9038 : $a9, $00
	sta $09                                                  ; $903a : $85, $09
	lda #$1d                                                  ; $903c : $a9, $1d
	sta $2d                                                  ; $903e : $85, $2d
	bne br_00_9050                                                  ; $9040 : $d0, $0e

br_00_9042:
	jsr Call_00_8f30                                                  ; $9042 : $20, $30, $8f
	lda #$1d                                                  ; $9045 : $a9, $1d
	sta $2b                                                  ; $9047 : $85, $2b
	clc                                                  ; $9049 : $18
	lda #$08                                                  ; $904a : $a9, $08
	adc $09                                                  ; $904c : $65, $09
	sta $09                                                  ; $904e : $85, $09

br_00_9050:
	rts                                                  ; $9050 : $60


Call_00_9051:
	lda #$00                                                  ; $9051 : $a9, $00
	sta $2e                                                  ; $9053 : $85, $2e
	lda #$01                                                  ; $9055 : $a9, $01
	sta $2c                                                  ; $9057 : $85, $2c
	jsr Call_00_8ef9                                                  ; $9059 : $20, $f9, $8e
	rts                                                  ; $905c : $60


Call_00_905d:
	lda $2e                                                  ; $905d : $a5, $2e
	beq br_00_906f                                                  ; $905f : $f0, $0e

	lda #$00                                                  ; $9061 : $a9, $00
	sta $29                                                  ; $9063 : $85, $29
	dec $2c                                                  ; $9065 : $c6, $2c
	jsr Call_00_9083                                                  ; $9067 : $20, $83, $90
	dec $2e                                                  ; $906a : $c6, $2e
	jsr $8409                                                  ; $906c : $20, $09, $84

br_00_906f:
	rts                                                  ; $906f : $60


Call_00_9070:
	cmp #$20                                                  ; $9070 : $c9, $20
	bcc br_00_9081                                                  ; $9072 : $90, $0d

	cmp #$80                                                  ; $9074 : $c9, $80
	bcs br_00_9081                                                  ; $9076 : $b0, $09

	pha                                                  ; $9078 : $48
	sec                                                  ; $9079 : $38
	sbc #$20                                                  ; $907a : $e9, $20
	sta $29                                                  ; $907c : $85, $29
	pla                                                  ; $907e : $68
	clc                                                  ; $907f : $18
	rts                                                  ; $9080 : $60


br_00_9081:
	sec                                                  ; $9081 : $38
	rts                                                  ; $9082 : $60


Call_00_9083:
	txa                                                  ; $9083 : $8a
	pha                                                  ; $9084 : $48
	tya                                                  ; $9085 : $98
	pha                                                  ; $9086 : $48
	ldx $2c                                                  ; $9087 : $a6, $2c
	lda $2d                                                  ; $9089 : $a5, $2d
	cmp #$1e                                                  ; $908b : $c9, $1e
	bcc br_00_9092                                                  ; $908d : $90, $03

	sec                                                  ; $908f : $38
	sbc #$1e                                                  ; $9090 : $e9, $1e

br_00_9092:
	tay                                                  ; $9092 : $a8
	jsr Call_00_90b6                                                  ; $9093 : $20, $b6, $90
	lda #$01                                                  ; $9096 : $a9, $01
	sta $0700                                                  ; $9098 : $8d, $00, $07
	lda $13                                                  ; $909b : $a5, $13
	sta $0701                                                  ; $909d : $8d, $01, $07
	lda $12                                                  ; $90a0 : $a5, $12
	sta $0702                                                  ; $90a2 : $8d, $02, $07
	sta $13                                                  ; $90a5 : $85, $13
	lda $29                                                  ; $90a7 : $a5, $29
	sta $0703                                                  ; $90a9 : $8d, $03, $07
	ldx #$04                                                  ; $90ac : $a2, $04
	jsr Call_00_9290                                                  ; $90ae : $20, $90, $92
	pla                                                  ; $90b1 : $68
	tay                                                  ; $90b2 : $a8
	pla                                                  ; $90b3 : $68
	tax                                                  ; $90b4 : $aa
	rts                                                  ; $90b5 : $60


Call_00_90b6:
	lda #$00                                                  ; $90b6 : $a9, $00
	sta $12                                                  ; $90b8 : $85, $12
	sty $13                                                  ; $90ba : $84, $13
	lsr $13                                                  ; $90bc : $46, $13
	ror $12                                                  ; $90be : $66, $12
	lsr $13                                                  ; $90c0 : $46, $13
	ror $12                                                  ; $90c2 : $66, $12
	lsr $13                                                  ; $90c4 : $46, $13
	ror $12                                                  ; $90c6 : $66, $12
	txa                                                  ; $90c8 : $8a
	ora $12                                                  ; $90c9 : $05, $12
	sta $12                                                  ; $90cb : $85, $12
	ldx #$20                                                  ; $90cd : $a2, $20
	lda $06                                                  ; $90cf : $a5, $06
	and #$02                                                  ; $90d1 : $29, $02
	beq br_00_90d7                                                  ; $90d3 : $f0, $02

	ldx #$24                                                  ; $90d5 : $a2, $24

br_00_90d7:
	txa                                                  ; $90d7 : $8a
	ora $13                                                  ; $90d8 : $05, $13
	sta $13                                                  ; $90da : $85, $13
	rts                                                  ; $90dc : $60


Call_00_90dd:
	lda #$01                                                  ; $90dd : $a9, $01
	ora $0e                                                  ; $90df : $05, $0e
	sta $0e                                                  ; $90e1 : $85, $0e
	jsr Call_00_92e2                                                  ; $90e3 : $20, $e2, $92
	rts                                                  ; $90e6 : $60


Call_00_90e7:
	lda #$fe                                                  ; $90e7 : $a9, $fe
	and $0e                                                  ; $90e9 : $25, $0e
	sta $0e                                                  ; $90eb : $85, $0e
	jsr Call_00_9449                                                  ; $90ed : $20, $49, $94
	rts                                                  ; $90f0 : $60


Call_00_90f1:
	ldx #$00                                                  ; $90f1 : $a2, $00
-	lda DecompressData.w, x                                                  ; $90f3 : $bd, $fd, $90
	sta wDecompress.w, x                                                  ; $90f6 : $9d, $00, $04
	inx                                                  ; $90f9 : $e8
	bne -                                                  ; $90fa : $d0, $f7

	rts                                                  ; $90fc : $60


DecompressData:
	pha                                                  ; $90fd : $48
	txa                                                  ; $90fe : $8a
	pha                                                  ; $90ff : $48
	tya                                                  ; $9100 : $98
	pha                                                  ; $9101 : $48

; set bank
	lda $11                                                  ; $9102 : $a5, $11
	jsr wBankSwitch                                                  ; $9104 : $20, $f0, $01

; y to be offset in rom
	ldy #$00                                                  ; $9107 : $a0, $00

; 1st word is ppu addr in big-endian
	lda ($14), y                                                  ; $9109 : $b1, $14
	sta PPUADDR                                                  ; $910b : $8d, $06, $20
	iny                                                  ; $910e : $c8
	lda ($14), y                                                  ; $910f : $b1, $14
	sta PPUADDR                                                  ; $9111 : $8d, $06, $20
	iny                                                  ; $9114 : $c8

; put 2nd word in 16.w
	lda ($14), y                                                  ; $9115 : $b1, $14
	sta $16                                                  ; $9117 : $85, $16
	iny                                                  ; $9119 : $c8
	lda ($14), y                                                  ; $911a : $b1, $14
	sta $17                                                  ; $911c : $85, $17
	iny                                                  ; $911e : $c8

; now reset rom src to curr pos
	tya                                                  ; $911f : $98
	clc                                                  ; $9120 : $18
	adc $14                                                  ; $9121 : $65, $14
	sta $14                                                  ; $9123 : $85, $14
	lda $15                                                  ; $9125 : $a5, $15
	adc #$00                                                  ; $9127 : $69, $00
	sta $15                                                  ; $9129 : $85, $15

@loop_912b:
; put src+8 in 1a eg 45 from Data_e_8010
	ldy #$08                                                  ; $912b : $a0, $08
	lda ($14), y                                                  ; $912d : $b1, $14
	sta $1a                                                  ; $912f : $85, $1a

; put 900 in 18.w
	lda #$00                                                  ; $9131 : $a9, $00
	sta $18                                                  ; $9133 : $85, $18
	lda #$09                                                  ; $9135 : $a9, $09
	sta $19                                                  ; $9137 : $85, $19

@loop_9139:
; by default copy 1 byte
	ldx #$01                                                  ; $9139 : $a2, $01
	ror $1a                                                  ; $913b : $66, $1a
	bcc @brLoop_9146                                                  ; $913d : $90, $07

; bit set, copy from after the control byte into X 1st (num bytes to copy)
	ldy $19                                                  ; $913f : $a4, $19
	lda ($14), y                                                  ; $9141 : $b1, $14
	tax                                                  ; $9143 : $aa
	inc $19                                                  ; $9144 : $e6, $19

@brLoop_9146:
; load from src+0 (before control byte)
	ldy $18                                                  ; $9146 : $a4, $18
	lda ($14), y                                                  ; $9148 : $b1, $14
; gfx written here
	sta PPUDATA                                                  ; $914a : $8d, $07, $20

; dec 16 then 17 until all bytes copied
	dec $16                                                  ; $914d : $c6, $16
	bne @br_9157                                                  ; $914f : $d0, $06

	lda $17                                                  ; $9151 : $a5, $17
	beq @end_9171                                                  ; $9153 : $f0, $1c

	dec $17                                                  ; $9155 : $c6, $17

@br_9157:
	dex                                                  ; $9157 : $ca
	bne @brLoop_9146                                                  ; $9158 : $d0, $ec

; once bytes copied, inc $18 to point to next of 8 bytes
	inc $18                                                  ; $915a : $e6, $18
	ldy $18                                                  ; $915c : $a4, $18
	cpy #$08                                                  ; $915e : $c0, $08
	bcc @loop_9139                                                  ; $9160 : $90, $d7

; go to where 19 is now pointing and loop
	lda $14                                                  ; $9162 : $a5, $14
	clc                                                  ; $9164 : $18
	adc $19                                                  ; $9165 : $65, $19
	sta $14                                                  ; $9167 : $85, $14
	lda $15                                                  ; $9169 : $a5, $15
	adc #$00                                                  ; $916b : $69, $00
	sta $15                                                  ; $916d : $85, $15
	bne @loop_912b                                                  ; $916f : $d0, $ba

@end_9171:
	lda $10                                                  ; $9171 : $a5, $10
	jsr wBankSwitch                                                  ; $9173 : $20, $f0, $01
	pla                                                  ; $9176 : $68
	tay                                                  ; $9177 : $a8
	pla                                                  ; $9178 : $68
	tax                                                  ; $9179 : $aa
	pla                                                  ; $917a : $68
	rts                                                  ; $917b : $60


; $047f
	tya                                                  ; $917c : $98
	pha                                                  ; $917d : $48
	lda $11                                                  ; $917e : $a5, $11
	jsr wBankSwitch                                                  ; $9180 : $20, $f0, $01
	lda PPUSTATUS                                                  ; $9183 : $ad, $02, $20
	lda #$3f                                                  ; $9186 : $a9, $3f
	sta PPUADDR                                                  ; $9188 : $8d, $06, $20
	lda #$00                                                  ; $918b : $a9, $00
	sta PPUADDR                                                  ; $918d : $8d, $06, $20
	tay                                                  ; $9190 : $a8

br_00_9191:
	lda ($14), y                                                  ; $9191 : $b1, $14
	sta PPUDATA                                                  ; $9193 : $8d, $07, $20
	iny                                                  ; $9196 : $c8
	cpy #$10                                                  ; $9197 : $c0, $10
	bne br_00_9191                                                  ; $9199 : $d0, $f6

	lda #$00                                                  ; $919b : $a9, $00
	sta PPUSCROLL                                                  ; $919d : $8d, $05, $20
	sta PPUSCROLL                                                  ; $91a0 : $8d, $05, $20
	sta PPUADDR                                                  ; $91a3 : $8d, $06, $20
	sta PPUADDR                                                  ; $91a6 : $8d, $06, $20
	lda $10                                                  ; $91a9 : $a5, $10
	jsr wBankSwitch                                                  ; $91ab : $20, $f0, $01
	pla                                                  ; $91ae : $68
	tay                                                  ; $91af : $a8
	rts                                                  ; $91b0 : $60


Jump_00_91b1:
	pha                                                  ; $91b1 : $48
	txa                                                  ; $91b2 : $8a
	pha                                                  ; $91b3 : $48
	tya                                                  ; $91b4 : $98
	pha                                                  ; $91b5 : $48
	lda #$00                                                  ; $91b6 : $a9, $00
	sta $ac                                                  ; $91b8 : $85, $ac
	lda #$91                                                  ; $91ba : $a9, $91
	pha                                                  ; $91bc : $48
	lda #$cc                                                  ; $91bd : $a9, $cc
	pha                                                  ; $91bf : $48
	lda $0a                                                  ; $91c0 : $a5, $0a
	asl a                                                  ; $91c2 : $0a
	tax                                                  ; $91c3 : $aa
	lda $9212, x                                                  ; $91c4 : $bd, $12, $92
	pha                                                  ; $91c7 : $48
	lda $9211, x                                                  ; $91c8 : $bd, $11, $92
	pha                                                  ; $91cb : $48
	rts                                                  ; $91cc : $60


	lda #$00                                                  ; $91cd : $a9, $00
	sta OAMADDR                                                  ; $91cf : $8d, $03, $20
	lda #$02                                                  ; $91d2 : $a9, $02
	sta OAMDMA                                                  ; $91d4 : $8d, $14, $40
	lda #$00                                                  ; $91d7 : $a9, $00
	sta PPUADDR                                                  ; $91d9 : $8d, $06, $20
	sta PPUADDR                                                  ; $91dc : $8d, $06, $20
	lda $08                                                  ; $91df : $a5, $08
	sta PPUSCROLL                                                  ; $91e1 : $8d, $05, $20
	lda $09                                                  ; $91e4 : $a5, $09
	sta PPUSCROLL                                                  ; $91e6 : $8d, $05, $20
	lda $06                                                  ; $91e9 : $a5, $06
	sta PPUCTRL                                                  ; $91eb : $8d, $00, $20
	lda $07                                                  ; $91ee : $a5, $07
	sta PPUMASK                                                  ; $91f0 : $8d, $01, $20
	dec $07fc                                                  ; $91f3 : $ce, $fc, $07
	jsr Call_00_9325                                                  ; $91f6 : $20, $25, $93
	jsr Call_00_961c                                                  ; $91f9 : $20, $1c, $96
	jsr $d9cf                                                  ; $91fc : $20, $cf, $d9
	jsr Call_00_d723                                                  ; $91ff : $20, $23, $d7
	jsr Call_00_dbbc                                                  ; $9202 : $20, $bc, $db
	jsr Call_00_8426                                                  ; $9205 : $20, $26, $84
	jsr Call_00_f2a8                                                  ; $9208 : $20, $a8, $f2

br_00_920b:
	pla                                                  ; $920b : $68
	tay                                                  ; $920c : $a8
	pla                                                  ; $920d : $68
	tax                                                  ; $920e : $aa
	pla                                                  ; $920f : $68
	rti                                                  ; $9210 : $40


	clc                                                  ; $9211 : $18
	.db $92                                                  ; $9212 : $92
	.db $22                                                  ; $9213 : $22
	.db $92                                                  ; $9214 : $92
	.db $53                                                  ; $9215 : $53
	.db $92                                                  ; $9216 : $92
	bne br_00_920b                                                  ; $9217 : $d0, $f2

	rts                                                  ; $9219 : $60


Call_00_921a:
	lda #$01                                                  ; $921a : $a9, $01
	sta $0a                                                  ; $921c : $85, $0a
-	lda $0a                                                  ; $921e : $a5, $0a
	bne -                                                  ; $9220 : $d0, $fc

	rts                                                  ; $9222 : $60


	lda PPUSTATUS                                                  ; $9223 : $ad, $02, $20
	lda #$3f                                                  ; $9226 : $a9, $3f
	sta PPUADDR                                                  ; $9228 : $8d, $06, $20
	lda #$00                                                  ; $922b : $a9, $00
	sta PPUADDR                                                  ; $922d : $8d, $06, $20
	ldx #$10                                                  ; $9230 : $a2, $10
	lda #$0c                                                  ; $9232 : $a9, $0c

br_00_9234:
	sta PPUDATA                                                  ; $9234 : $8d, $07, $20
	dex                                                  ; $9237 : $ca
	bne br_00_9234                                                  ; $9238 : $d0, $fa

	lda #$00                                                  ; $923a : $a9, $00
	sta $0a                                                  ; $923c : $85, $0a
	jsr Call_00_9245                                                  ; $923e : $20, $45, $92
	jsr Call_00_92aa                                                  ; $9241 : $20, $aa, $92
	rts                                                  ; $9244 : $60


Call_00_9245:
	pha                                                  ; $9245 : $48
	lda PPUSTATUS                                                  ; $9246 : $ad, $02, $20
	lda $06                                                  ; $9249 : $a5, $06
	and #$7f                                                  ; $924b : $29, $7f
	sta PPUCTRL                                                  ; $924d : $8d, $00, $20
	sta $06                                                  ; $9250 : $85, $06
	pla                                                  ; $9252 : $68
	rts                                                  ; $9253 : $60


	ldx #$00                                                  ; $9254 : $a2, $00
	ldy $0700, x                                                  ; $9256 : $bc, $00, $07
	sty $ac                                                  ; $9259 : $84, $ac
	bne br_00_9260                                                  ; $925b : $d0, $03

	sty $0a                                                  ; $925d : $84, $0a
	rts                                                  ; $925f : $60


br_00_9260:
	inx                                                  ; $9260 : $e8
	lda PPUSTATUS                                                  ; $9261 : $ad, $02, $20
	lda $0700, x                                                  ; $9264 : $bd, $00, $07
	sta PPUADDR                                                  ; $9267 : $8d, $06, $20
	inx                                                  ; $926a : $e8
	lda $0700, x                                                  ; $926b : $bd, $00, $07
	sta PPUADDR                                                  ; $926e : $8d, $06, $20

br_00_9271:
	inx                                                  ; $9271 : $e8
	lda $0700, x                                                  ; $9272 : $bd, $00, $07
	sta PPUDATA                                                  ; $9275 : $8d, $07, $20
	dey                                                  ; $9278 : $88
	bne br_00_9271                                                  ; $9279 : $d0, $f6

	inx                                                  ; $927b : $e8
	ldy $0700, x                                                  ; $927c : $bc, $00, $07
	bne br_00_9260                                                  ; $927f : $d0, $df

	sty $0a                                                  ; $9281 : $84, $0a
	rts                                                  ; $9283 : $60


Call_00_9284:
	pha                                                  ; $9284 : $48
	lda $06                                                  ; $9285 : $a5, $06
	ora #$80                                                  ; $9287 : $09, $80
	sta PPUCTRL                                                  ; $9289 : $8d, $00, $20
	sta $06                                                  ; $928c : $85, $06
	pla                                                  ; $928e : $68
	rts                                                  ; $928f : $60


Call_00_9290:
	lda #$00                                                  ; $9290 : $a9, $00
	sta $0700, x                                                  ; $9292 : $9d, $00, $07

Call_00_9295:
Jump_00_9295:
	lda #$02                                                  ; $9295 : $a9, $02
	sta $0a                                                  ; $9297 : $85, $0a

br_00_9299:
	lda $0a                                                  ; $9299 : $a5, $0a
	bne br_00_9299                                                  ; $929b : $d0, $fc

	rts                                                  ; $929d : $60


Call_00_929e:
	pha                                                  ; $929e : $48
	lda $07                                                  ; $929f : $a5, $07
	ora #$18                                                  ; $92a1 : $09, $18

Jump_00_92a3:
	sta PPUMASK                                                  ; $92a3 : $8d, $01, $20
	sta $07                                                  ; $92a6 : $85, $07
	pla                                                  ; $92a8 : $68
	rts                                                  ; $92a9 : $60


Call_00_92aa:
	pha                                                  ; $92aa : $48
	lda $07                                                  ; $92ab : $a5, $07
	and #$e7                                                  ; $92ad : $29, $e7
	jmp Jump_00_92a3                                                  ; $92af : $4c, $a3, $92


	pha                                                  ; $92b2 : $48
	lda $07                                                  ; $92b3 : $a5, $07
	and #$ef                                                  ; $92b5 : $29, $ef
	sta PPUMASK                                                  ; $92b7 : $8d, $01, $20
	sta $07                                                  ; $92ba : $85, $07
	pla                                                  ; $92bc : $68
	rts                                                  ; $92bd : $60


	pha                                                  ; $92be : $48
	lda $07                                                  ; $92bf : $a5, $07
	ora #$10                                                  ; $92c1 : $09, $10
	sta PPUMASK                                                  ; $92c3 : $8d, $01, $20
	sta $07                                                  ; $92c6 : $85, $07
	pla                                                  ; $92c8 : $68
	rts                                                  ; $92c9 : $60


	pha                                                  ; $92ca : $48
	lda $07                                                  ; $92cb : $a5, $07
	and #$f7                                                  ; $92cd : $29, $f7
	sta PPUMASK                                                  ; $92cf : $8d, $01, $20
	sta $07                                                  ; $92d2 : $85, $07
	pla                                                  ; $92d4 : $68
	rts                                                  ; $92d5 : $60


	pha                                                  ; $92d6 : $48
	lda $07                                                  ; $92d7 : $a5, $07
	ora #$08                                                  ; $92d9 : $09, $08
	sta PPUMASK                                                  ; $92db : $8d, $01, $20
	sta $07                                                  ; $92de : $85, $07
	pla                                                  ; $92e0 : $68
	rts                                                  ; $92e1 : $60


Call_00_92e2:
	lda #$ef                                                  ; $92e2 : $a9, $ef
	ldx #$00                                                  ; $92e4 : $a2, $00

br_00_92e6:
	sta $0200, x                                                  ; $92e6 : $9d, $00, $02
	inx                                                  ; $92e9 : $e8
	bne br_00_92e6                                                  ; $92ea : $d0, $fa

	rts                                                  ; $92ec : $60


Call_00_92ed:
br_00_92ed:
	lda PPUSTATUS                                                  ; $92ed : $ad, $02, $20
	bmi br_00_92ed                                                  ; $92f0 : $30, $fb

br_00_92f2:
	lda PPUSTATUS                                                  ; $92f2 : $ad, $02, $20
	bpl br_00_92f2                                                  ; $92f5 : $10, $fb

	rts                                                  ; $92f7 : $60


	inc $14                                                  ; $92f8 : $e6, $14
	bne br_00_92fe                                                  ; $92fa : $d0, $02

	inc $15                                                  ; $92fc : $e6, $15

br_00_92fe:
	rts                                                  ; $92fe : $60


Call_00_92ff:
	ldx #$00                                                  ; $92ff : $a2, $00

br_00_9301:
	lda #$00                                                  ; $9301 : $a9, $00
	sta $00, x                                                  ; $9303 : $95, $00
	sta $0300, x                                                  ; $9305 : $9d, $00, $03
	sta $0400, x                                                  ; $9308 : $9d, $00, $04
	sta $0500, x                                                  ; $930b : $9d, $00, $05
	sta $0600, x                                                  ; $930e : $9d, $00, $06
	sta $0700, x                                                  ; $9311 : $9d, $00, $07
	lda #$ef                                                  ; $9314 : $a9, $ef
	sta $0200, x                                                  ; $9316 : $9d, $00, $02
	inx                                                  ; $9319 : $e8
	bne br_00_9301                                                  ; $931a : $d0, $e5

	lda #$90                                                  ; $931c : $a9, $90
	sta $06                                                  ; $931e : $85, $06
	lda #$1e                                                  ; $9320 : $a9, $1e
	sta $07                                                  ; $9322 : $85, $07
	rts                                                  ; $9324 : $60


Call_00_9325:
	lda $23                                                  ; $9325 : $a5, $23
	beq br_00_9355                                                  ; $9327 : $f0, $2c

br_00_9329:
	bit PPUSTATUS                                                  ; $9329 : $2c, $02, $20
	bmi br_00_9329                                                  ; $932c : $30, $fb

	bit PPUSTATUS                                                  ; $932e : $2c, $02, $20
	ldy #$0c                                                  ; $9331 : $a0, $0c
	lda $ac                                                  ; $9333 : $a5, $ac
	bne br_00_933c                                                  ; $9335 : $d0, $05

	lda #$eb                                                  ; $9337 : $a9, $eb
	jmp Jump_00_9347                                                  ; $9339 : $4c, $47, $93


br_00_933c:
	cmp #$01                                                  ; $933c : $c9, $01
	bne br_00_9345                                                  ; $933e : $d0, $05

	lda #$e1                                                  ; $9340 : $a9, $e1
	jmp Jump_00_9347                                                  ; $9342 : $4c, $47, $93


br_00_9345:
	lda #$aa                                                  ; $9345 : $a9, $aa

Jump_00_9347:
	tax                                                  ; $9347 : $aa

br_00_9348:
	dex                                                  ; $9348 : $ca
	bne br_00_9348                                                  ; $9349 : $d0, $fd

	dey                                                  ; $934b : $88
	bne br_00_9348                                                  ; $934c : $d0, $fa

	lda $06                                                  ; $934e : $a5, $06
	eor #$10                                                  ; $9350 : $49, $10
	sta PPUCTRL                                                  ; $9352 : $8d, $00, $20

br_00_9355:
	rts                                                  ; $9355 : $60


	lda #$76                                                  ; $9356 : $a9, $76
	sta $0200                                                  ; $9358 : $8d, $00, $02
	lda #$23                                                  ; $935b : $a9, $23
	sta $0202                                                  ; $935d : $8d, $02, $02
	lda #$00                                                  ; $9360 : $a9, $00
	sta $0203                                                  ; $9362 : $8d, $03, $02
	lda #$40                                                  ; $9365 : $a9, $40
	sta $0201                                                  ; $9367 : $8d, $01, $02
	rts                                                  ; $936a : $60


; $1c - screen idx
LoadScreen:
	lda #$00                                                  ; $936b : $a9, $00
	sta $08                                                  ; $936d : $85, $08
	sta $09                                                  ; $936f : $85, $09
	jsr Call_00_921a                                                  ; $9371 : $20, $1a, $92

; eg screen 0 gives $e4c7
	lda $1c                                                  ; $9374 : $a5, $1c
	asl a                                                  ; $9376 : $0a
	tay                                                  ; $9377 : $a8
	lda ScreenSetupsSrcData.w, y                                                  ; $9378 : $b9, $75, $e4
	sta $1d                                                  ; $937b : $85, $1d
	lda ScreenSetupsSrcData.w+1, y                                                  ; $937d : $b9, $76, $e4
	sta $1e                                                  ; $9380 : $85, $1e

;
	lda #$00                                                  ; $9382 : $a9, $00
	sta $10                                                  ; $9384 : $85, $10

; get bank eg $0b for screen 0
	ldx $1c                                                  ; $9386 : $a6, $1c
	lda ScreenSetupsSrcBanks.w, x                                                  ; $9388 : $bd, $ed, $93
	sta $11                                                  ; $938b : $85, $11

; 1st decompression is the 2nd word address
	ldy #$02                                                  ; $938d : $a0, $02
	lda ($1d), y                                                  ; $938f : $b1, $1d
	sta $14                                                  ; $9391 : $85, $14
	iny                                                  ; $9393 : $c8
	lda ($1d), y                                                  ; $9394 : $b1, $1d
	sta $15                                                  ; $9396 : $85, $15
	iny                                                  ; $9398 : $c8
	jsr wDecompress                                                  ; $9399 : $20, $00, $04

; byte after determines if a 3rd decompression occurs
	lda ($1d), y                                                  ; $939c : $b1, $1d
	sta $23                                                  ; $939e : $85, $23
	iny                                                  ; $93a0 : $c8

; 2nd decompression address is after that byte
	lda ($1d), y                                                  ; $93a1 : $b1, $1d
	sta $14                                                  ; $93a3 : $85, $14
	iny                                                  ; $93a5 : $c8
	lda ($1d), y                                                  ; $93a6 : $b1, $1d
	sta $15                                                  ; $93a8 : $85, $15
	iny                                                  ; $93aa : $c8
	jsr wDecompress                                                  ; $93ab : $20, $00, $04

; perform a 3rd decompression based on an above byte
	lda $23                                                  ; $93ae : $a5, $23
	beq @cont_93bf                                                  ; $93b0 : $f0, $0d

	lda ($1d), y                                                  ; $93b2 : $b1, $1d
	sta $14                                                  ; $93b4 : $85, $14
	iny                                                  ; $93b6 : $c8
	lda ($1d), y                                                  ; $93b7 : $b1, $1d
	sta $15                                                  ; $93b9 : $85, $15
	iny                                                  ; $93bb : $c8
	jsr wDecompress                                                  ; $93bc : $20, $00, $04

@cont_93bf:
; 1st word address loads palettes
	ldy #$00                                                  ; $93bf : $a0, $00
	lda ($1d), y                                                  ; $93c1 : $b1, $1d
	sta $14                                                  ; $93c3 : $85, $14
	iny                                                  ; $93c5 : $c8
	lda ($1d), y                                                  ; $93c6 : $b1, $1d
	sta $15                                                  ; $93c8 : $85, $15
	iny                                                  ; $93ca : $c8
	jsr $047f                                                  ; $93cb : $20, $7f, $04

;
	lda $1c                                                  ; $93ce : $a5, $1c
	asl a                                                  ; $93d0 : $0a
	tay                                                  ; $93d1 : $a8
	lda $dfe0, y                                                  ; $93d2 : $b9, $e0, $df
	sta $1f                                                  ; $93d5 : $85, $1f
	lda $dfe1, y                                                  ; $93d7 : $b9, $e1, $df
	sta $20                                                  ; $93da : $85, $20
	lda $dcd8, y                                                  ; $93dc : $b9, $d8, $dc
	sta $21                                                  ; $93df : $85, $21
	lda $dcd9, y                                                  ; $93e1 : $b9, $d9, $dc
	sta $22                                                  ; $93e4 : $85, $22

;
	jsr Call_00_9284                                                  ; $93e6 : $20, $84, $92
	jsr Call_00_929e                                                  ; $93e9 : $20, $9e, $92
	rts                                                  ; $93ec : $60


ScreenSetupsSrcBanks:
	.db $0b
	.db $0b
	.db $0b
	.db $0b
	.db $0b
	.db $0b
	.db $0b
	.db $0b
	.db $0e
	.db $0c
	.db $0c
	.db $0c
	.db $0c
	.db $0c
	.db $0c
	.db $0c
	.db $0d
	.db $0d
	.db $0d
	.db $0d
	.db $0d
	.db $0d
	.db $0d
	.db $0e
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $08


Call_00_9416:
	jsr Call_00_92e2                                                  ; $9416 : $20, $e2, $92
	lda #$3f                                                  ; $9419 : $a9, $3f
	sta PPUADDR                                                  ; $941b : $8d, $06, $20
	lda #$10                                                  ; $941e : $a9, $10
	sta PPUADDR                                                  ; $9420 : $8d, $06, $20
	ldx #$00                                                  ; $9423 : $a2, $00
	stx $24                                                  ; $9425 : $86, $24

br_00_9427:
	lda $954a, x                                                  ; $9427 : $bd, $4a, $95
	sta PPUDATA                                                  ; $942a : $8d, $07, $20
	inx                                                  ; $942d : $e8
	cpx #$10                                                  ; $942e : $e0, $10
	bcc br_00_9427                                                  ; $9430 : $90, $f5

	jsr Call_00_9449                                                  ; $9432 : $20, $49, $94
	jsr Call_00_948a                                                  ; $9435 : $20, $8a, $94
	jsr Call_00_94a2                                                  ; $9438 : $20, $a2, $94
	ldx #$00                                                  ; $943b : $a2, $00

br_00_943d:
	lda $95cc, x                                                  ; $943d : $bd, $cc, $95
	sta PPUDATA                                                  ; $9440 : $8d, $07, $20
	inx                                                  ; $9443 : $e8
	cpx #$20                                                  ; $9444 : $e0, $20
	bcc br_00_943d                                                  ; $9446 : $90, $f5

	rts                                                  ; $9448 : $60


Call_00_9449:
	ldx #$00                                                  ; $9449 : $a2, $00

br_00_944b:
	lda $955a, x                                                  ; $944b : $bd, $5a, $95
	sta $0204, x                                                  ; $944e : $9d, $04, $02
	inx                                                  ; $9451 : $e8
	cpx #$08                                                  ; $9452 : $e0, $08
	bcc br_00_944b                                                  ; $9454 : $90, $f5

	rts                                                  ; $9456 : $60


Call_00_9457:
	ldx #$00                                                  ; $9457 : $a2, $00
	lda #$20                                                  ; $9459 : $a9, $20
	sta $0700, x                                                  ; $945b : $9d, $00, $07
	inx                                                  ; $945e : $e8
	lda #$0f                                                  ; $945f : $a9, $0f
	sta $0700, x                                                  ; $9461 : $9d, $00, $07
	inx                                                  ; $9464 : $e8
	lda #$e0                                                  ; $9465 : $a9, $e0
	sta $0700, x                                                  ; $9467 : $9d, $00, $07
	inx                                                  ; $946a : $e8
	lda $24                                                  ; $946b : $a5, $24
	asl a                                                  ; $946d : $0a
	tay                                                  ; $946e : $a8
	lda $9566, y                                                  ; $946f : $b9, $66, $95
	sta $14                                                  ; $9472 : $85, $14
	lda $9567, y                                                  ; $9474 : $b9, $67, $95
	sta $15                                                  ; $9477 : $85, $15
	ldy #$00                                                  ; $9479 : $a0, $00

br_00_947b:
	lda ($14), y                                                  ; $947b : $b1, $14
	sta $0700, x                                                  ; $947d : $9d, $00, $07
	inx                                                  ; $9480 : $e8
	iny                                                  ; $9481 : $c8
	cpy #$20                                                  ; $9482 : $c0, $20
	bcc br_00_947b                                                  ; $9484 : $90, $f5

	jsr Call_00_9290                                                  ; $9486 : $20, $90, $92
	rts                                                  ; $9489 : $60


Call_00_948a:
	lda #$0f                                                  ; $948a : $a9, $0f
	sta PPUADDR                                                  ; $948c : $8d, $06, $20
	lda #$00                                                  ; $948f : $a9, $00
	sta PPUADDR                                                  ; $9491 : $8d, $06, $20
	ldx #$00                                                  ; $9494 : $a2, $00

br_00_9496:
	lda $94ba, x                                                  ; $9496 : $bd, $ba, $94
	sta PPUDATA                                                  ; $9499 : $8d, $07, $20
	inx                                                  ; $949c : $e8
	cpx #$90                                                  ; $949d : $e0, $90
	bne br_00_9496                                                  ; $949f : $d0, $f5

	rts                                                  ; $94a1 : $60


Call_00_94a2:
	lda #$0f                                                  ; $94a2 : $a9, $0f
	sta PPUADDR                                                  ; $94a4 : $8d, $06, $20
	lda #$c0                                                  ; $94a7 : $a9, $c0
	sta PPUADDR                                                  ; $94a9 : $8d, $06, $20
	ldx #$00                                                  ; $94ac : $a2, $00

br_00_94ae:
	lda $956c, x                                                  ; $94ae : $bd, $6c, $95
	sta PPUDATA                                                  ; $94b1 : $8d, $07, $20
	inx                                                  ; $94b4 : $e8
	cpx #$20                                                  ; $94b5 : $e0, $20
	bcc br_00_94ae                                                  ; $94b7 : $90, $f5

	rts                                                  ; $94b9 : $60


	.db $ff                                                  ; $94ba : $ff
	.db $80                                                  ; $94bb : $80
	.db $80                                                  ; $94bc : $80
	.db $80                                                  ; $94bd : $80
	.db $80                                                  ; $94be : $80
	.db $80                                                  ; $94bf : $80
	.db $80                                                  ; $94c0 : $80
	.db $80                                                  ; $94c1 : $80
	.db $00                                                  ; $94c2 : $00
	.db $00                                                  ; $94c3 : $00
	.db $00                                                  ; $94c4 : $00
	.db $00                                                  ; $94c5 : $00
	.db $00                                                  ; $94c6 : $00
	.db $00                                                  ; $94c7 : $00
	.db $00                                                  ; $94c8 : $00
	.db $00                                                  ; $94c9 : $00
	.db $ff                                                  ; $94ca : $ff
	.db $00                                                  ; $94cb : $00
	.db $00                                                  ; $94cc : $00
	.db $00                                                  ; $94cd : $00
	.db $00                                                  ; $94ce : $00
	.db $00                                                  ; $94cf : $00
	.db $00                                                  ; $94d0 : $00
	.db $00                                                  ; $94d1 : $00
	.db $00                                                  ; $94d2 : $00
	.db $00                                                  ; $94d3 : $00
	.db $00                                                  ; $94d4 : $00
	.db $00                                                  ; $94d5 : $00
	.db $00                                                  ; $94d6 : $00
	.db $00                                                  ; $94d7 : $00
	.db $00                                                  ; $94d8 : $00
	.db $00                                                  ; $94d9 : $00
	.db $ff                                                  ; $94da : $ff
	ora ($01, x)                                                  ; $94db : $01, $01
	ora ($01, x)                                                  ; $94dd : $01, $01
	ora ($01, x)                                                  ; $94df : $01, $01
	ora ($00, x)                                                  ; $94e1 : $01, $00
	.db $00                                                  ; $94e3 : $00
	.db $00                                                  ; $94e4 : $00
	.db $00                                                  ; $94e5 : $00
	.db $00                                                  ; $94e6 : $00
	.db $00                                                  ; $94e7 : $00
	.db $00                                                  ; $94e8 : $00
	.db $00                                                  ; $94e9 : $00
	.db $00                                                  ; $94ea : $00
	.db $00                                                  ; $94eb : $00
	.db $00                                                  ; $94ec : $00
	.db $00                                                  ; $94ed : $00
	.db $00                                                  ; $94ee : $00
	.db $00                                                  ; $94ef : $00
	.db $00                                                  ; $94f0 : $00
	.db $00                                                  ; $94f1 : $00
	.db $00                                                  ; $94f2 : $00
	.db $00                                                  ; $94f3 : $00
	.db $00                                                  ; $94f4 : $00
	.db $00                                                  ; $94f5 : $00
	.db $00                                                  ; $94f6 : $00
	.db $00                                                  ; $94f7 : $00
	.db $00                                                  ; $94f8 : $00
	.db $00                                                  ; $94f9 : $00
	.db $80                                                  ; $94fa : $80
	.db $80                                                  ; $94fb : $80
	.db $80                                                  ; $94fc : $80
	.db $80                                                  ; $94fd : $80
	.db $80                                                  ; $94fe : $80
	.db $80                                                  ; $94ff : $80
	.db $80                                                  ; $9500 : $80
	.db $80                                                  ; $9501 : $80
	.db $00                                                  ; $9502 : $00
	.db $00                                                  ; $9503 : $00
	.db $00                                                  ; $9504 : $00
	.db $00                                                  ; $9505 : $00
	.db $00                                                  ; $9506 : $00
	.db $00                                                  ; $9507 : $00
	.db $00                                                  ; $9508 : $00
	.db $00                                                  ; $9509 : $00
	ora ($01, x)                                                  ; $950a : $01, $01
	ora ($01, x)                                                  ; $950c : $01, $01
	ora ($01, x)                                                  ; $950e : $01, $01
	ora ($01, x)                                                  ; $9510 : $01, $01
	.db $00                                                  ; $9512 : $00
	.db $00                                                  ; $9513 : $00
	.db $00                                                  ; $9514 : $00
	.db $00                                                  ; $9515 : $00
	.db $00                                                  ; $9516 : $00
	.db $00                                                  ; $9517 : $00
	.db $00                                                  ; $9518 : $00

br_00_9519:
	.db $00                                                  ; $9519 : $00
	.db $80                                                  ; $951a : $80
	.db $80                                                  ; $951b : $80
	.db $80                                                  ; $951c : $80
	.db $80                                                  ; $951d : $80
	.db $80                                                  ; $951e : $80
	.db $80                                                  ; $951f : $80
	.db $80                                                  ; $9520 : $80
	.db $ff                                                  ; $9521 : $ff
	.db $00                                                  ; $9522 : $00
	.db $00                                                  ; $9523 : $00
	.db $00                                                  ; $9524 : $00
	.db $00                                                  ; $9525 : $00
	.db $00                                                  ; $9526 : $00
	.db $00                                                  ; $9527 : $00
	.db $00                                                  ; $9528 : $00
	.db $00                                                  ; $9529 : $00
	.db $00                                                  ; $952a : $00
	.db $00                                                  ; $952b : $00
	.db $00                                                  ; $952c : $00
	.db $00                                                  ; $952d : $00
	.db $00                                                  ; $952e : $00
	.db $00                                                  ; $952f : $00
	.db $00                                                  ; $9530 : $00
	.db $ff                                                  ; $9531 : $ff
	.db $00                                                  ; $9532 : $00
	.db $00                                                  ; $9533 : $00
	.db $00                                                  ; $9534 : $00
	.db $00                                                  ; $9535 : $00
	.db $00                                                  ; $9536 : $00
	.db $00                                                  ; $9537 : $00
	.db $00                                                  ; $9538 : $00
	.db $00                                                  ; $9539 : $00
	ora ($01, x)                                                  ; $953a : $01, $01
	ora ($01, x)                                                  ; $953c : $01, $01
	ora ($01, x)                                                  ; $953e : $01, $01
	ora ($ff, x)                                                  ; $9540 : $01, $ff
	.db $00                                                  ; $9542 : $00
	.db $00                                                  ; $9543 : $00
	.db $00                                                  ; $9544 : $00
	.db $00                                                  ; $9545 : $00
	.db $00                                                  ; $9546 : $00
	.db $00                                                  ; $9547 : $00
	.db $00                                                  ; $9548 : $00
	.db $00                                                  ; $9549 : $00
	.db $0c                                                  ; $954a : $0c
	.db $3f                                                  ; $954b : $3f
	bmi $16                                                  ; $954c : $30, $16

	.db $0c                                                  ; $954e : $0c
	.db $3f                                                  ; $954f : $3f
	bmi br_00_9562                                                  ; $9550 : $30, $10

	.db $0c                                                  ; $9552 : $0c
	.db $3f                                                  ; $9553 : $3f
	bmi br_00_9586                                                  ; $9554 : $30, $30

	.db $0c                                                  ; $9556 : $0c
	.db $0c                                                  ; $9557 : $0c
	.db $0c                                                  ; $9558 : $0c
	.db $0c                                                  ; $9559 : $0c
	.db $80                                                  ; $955a : $80
	inc $8000, x                                                  ; $955b : $fe, $00, $80
	dey                                                  ; $955e : $88
	.db $ff                                                  ; $955f : $ff
	.db $00                                                  ; $9560 : $00
	.db $80                                                  ; $9561 : $80

br_00_9562:
	.db $00                                                  ; $9562 : $00
	sbc $01.w, x                                                  ; $9563 : $fd, $01, $00
	sty $ac95                                                  ; $9566 : $8c, $95, $ac
	sta $cc, x                                                  ; $9569 : $95, $cc
	sta $ff, x                                                  ; $956b : $95, $ff
	.db $ff                                                  ; $956d : $ff
	.db $ff                                                  ; $956e : $ff
	.db $ff                                                  ; $956f : $ff
	.db $ff                                                  ; $9570 : $ff
	.db $ff                                                  ; $9571 : $ff
	.db $ff                                                  ; $9572 : $ff
	.db $ff                                                  ; $9573 : $ff
	.db $ff                                                  ; $9574 : $ff
	.db $ff                                                  ; $9575 : $ff
	.db $ff                                                  ; $9576 : $ff
	.db $ff                                                  ; $9577 : $ff
	.db $ff                                                  ; $9578 : $ff
	.db $ff                                                  ; $9579 : $ff
	.db $ff                                                  ; $957a : $ff
	.db $ff                                                  ; $957b : $ff
	.db $00                                                  ; $957c : $00
	.db $00                                                  ; $957d : $00
	.db $00                                                  ; $957e : $00
	.db $00                                                  ; $957f : $00
	.db $00                                                  ; $9580 : $00
	.db $00                                                  ; $9581 : $00
	.db $00                                                  ; $9582 : $00
	.db $ff                                                  ; $9583 : $ff
	.db $00                                                  ; $9584 : $00
	.db $00                                                  ; $9585 : $00

br_00_9586:
	.db $00                                                  ; $9586 : $00
	.db $00                                                  ; $9587 : $00
	.db $00                                                  ; $9588 : $00
	.db $00                                                  ; $9589 : $00
	.db $ff                                                  ; $958a : $ff
	.db $00                                                  ; $958b : $00
	.db $80                                                  ; $958c : $80
	cpy #$a0                                                  ; $958d : $c0, $a0
	bcc br_00_9519                                                  ; $958f : $90, $88

	sty $82                                                  ; $9591 : $84, $82
	sta ($00, x)                                                  ; $9593 : $81, $00
	.db $00                                                  ; $9595 : $00
	rti                                                  ; $9596 : $40


	rts                                                  ; $9597 : $60


	bvs $78                                                  ; $9598 : $70, $78

	.db $7c                                                  ; $959a : $7c
	ror $a487, x                                                  ; $959b : $7e, $87, $a4
	.db $d2                                                  ; $959e : $d2
	.db $92                                                  ; $959f : $92
	ora #$09                                                  ; $95a0 : $09, $09
	.db $0f                                                  ; $95a2 : $0f
	.db $00                                                  ; $95a3 : $00
	sei                                                  ; $95a4 : $78
	cli                                                  ; $95a5 : $58
	.db $0c                                                  ; $95a6 : $0c
	.db $0c                                                  ; $95a7 : $0c
	asl $06                                                  ; $95a8 : $06, $06
	.db $00                                                  ; $95aa : $00
	.db $00                                                  ; $95ab : $00
	.db $00                                                  ; $95ac : $00
	ror $1818, x                                                  ; $95ad : $7e, $18, $18
	clc                                                  ; $95b0 : $18
	clc                                                  ; $95b1 : $18
	clc                                                  ; $95b2 : $18
	clc                                                  ; $95b3 : $18
	.db $00                                                  ; $95b4 : $00
	.db $00                                                  ; $95b5 : $00
	ror $00                                                  ; $95b6 : $66, $00
	.db $00                                                  ; $95b8 : $00
	.db $00                                                  ; $95b9 : $00
	.db $00                                                  ; $95ba : $00
	.db $00                                                  ; $95bb : $00
	clc                                                  ; $95bc : $18
	clc                                                  ; $95bd : $18
	clc                                                  ; $95be : $18
	clc                                                  ; $95bf : $18
	clc                                                  ; $95c0 : $18
	ror $00.w, x                                                  ; $95c1 : $7e, $00, $00
	.db $00                                                  ; $95c4 : $00
	.db $00                                                  ; $95c5 : $00
	.db $00                                                  ; $95c6 : $00
	.db $00                                                  ; $95c7 : $00
	.db $00                                                  ; $95c8 : $00
	.db $00                                                  ; $95c9 : $00
	ror $ff00, x                                                  ; $95ca : $7e, $00, $ff
	.db $df                                                  ; $95cd : $df
	ror $5a42, x                                                  ; $95ce : $7e, $42, $5a
	.db $42                                                  ; $95d1 : $42
	bit $24                                                  ; $95d2 : $24, $24
	.db $00                                                  ; $95d4 : $00
	ror $3c00, x                                                  ; $95d5 : $7e, $00, $3c
	bit $3c                                                  ; $95d8 : $24, $3c
	clc                                                  ; $95da : $18
	clc                                                  ; $95db : $18
	bit $42                                                  ; $95dc : $24, $42
	.db $42                                                  ; $95de : $42
	.db $5a                                                  ; $95df : $5a
	ror $ffdf, x                                                  ; $95e0 : $7e, $df, $ff
	.db $00                                                  ; $95e3 : $00
	clc                                                  ; $95e4 : $18
	.db $3c                                                  ; $95e5 : $3c
	.db $3c                                                  ; $95e6 : $3c
	bit $00                                                  ; $95e7 : $24, $00
	ror $00.w, x                                                  ; $95e9 : $7e, $00, $00

Call_00_95ec:
	lda #$00                                                  ; $95ec : $a9, $00
	sta SND_CHN                                                  ; $95ee : $8d, $15, $40
	sta $7d                                                  ; $95f1 : $85, $7d
	sta $7e                                                  ; $95f3 : $85, $7e
	sta $7f                                                  ; $95f5 : $85, $7f
	sta $85                                                  ; $95f7 : $85, $85
	lda #$ff                                                  ; $95f9 : $a9, $ff
	sta $79                                                  ; $95fb : $85, $79
	sta $7b                                                  ; $95fd : $85, $7b
	sta $7a                                                  ; $95ff : $85, $7a
	sta $7c                                                  ; $9601 : $85, $7c
	rts                                                  ; $9603 : $60


	lda #$00                                                  ; $9604 : $a9, $00
	sta SND_CHN                                                  ; $9606 : $8d, $15, $40
	sta $7d                                                  ; $9609 : $85, $7d
	sta $7e                                                  ; $960b : $85, $7e
	sta $7f                                                  ; $960d : $85, $7f
	sta $85                                                  ; $960f : $85, $85
	lda #$ff                                                  ; $9611 : $a9, $ff
	sta $79                                                  ; $9613 : $85, $79
	sta $7b                                                  ; $9615 : $85, $7b
	sta $7a                                                  ; $9617 : $85, $7a
	sta $7c                                                  ; $9619 : $85, $7c
	rts                                                  ; $961b : $60


Call_00_961c:
	pha                                                  ; $961c : $48
	txa                                                  ; $961d : $8a
	pha                                                  ; $961e : $48
	tya                                                  ; $961f : $98
	pha                                                  ; $9620 : $48
	lda $79                                                  ; $9621 : $a5, $79
	cmp #$ff                                                  ; $9623 : $c9, $ff
	beq br_00_962a                                                  ; $9625 : $f0, $03

	jsr Call_00_96da                                                  ; $9627 : $20, $da, $96

br_00_962a:
	lda $7b                                                  ; $962a : $a5, $7b
	cmp #$ff                                                  ; $962c : $c9, $ff
	beq br_00_9633                                                  ; $962e : $f0, $03

	jsr Call_00_97b3                                                  ; $9630 : $20, $b3, $97

br_00_9633:
	lda $7a                                                  ; $9633 : $a5, $7a
	cmp #$ff                                                  ; $9635 : $c9, $ff
	beq br_00_963c                                                  ; $9637 : $f0, $03

	jsr Call_00_9800                                                  ; $9639 : $20, $00, $98

br_00_963c:
	pla                                                  ; $963c : $68
	tay                                                  ; $963d : $a8
	pla                                                  ; $963e : $68
	tax                                                  ; $963f : $aa
	pla                                                  ; $9640 : $68
	rts                                                  ; $9641 : $60


Call_00_9642:
	lda #$ff                                                  ; $9642 : $a9, $ff
	sta $79                                                  ; $9644 : $85, $79
	jsr Call_00_9877                                                  ; $9646 : $20, $77, $98
	rts                                                  ; $9649 : $60


	lda #$ff                                                  ; $964a : $a9, $ff
	sta $7c                                                  ; $964c : $85, $7c
	jsr Call_00_9877                                                  ; $964e : $20, $77, $98
	rts                                                  ; $9651 : $60


Call_00_9652:
	pha                                                  ; $9652 : $48
	txa                                                  ; $9653 : $8a
	pha                                                  ; $9654 : $48
	tya                                                  ; $9655 : $98
	pha                                                  ; $9656 : $48
	jsr Call_00_96aa                                                  ; $9657 : $20, $aa, $96
	jsr Call_00_96c2                                                  ; $965a : $20, $c2, $96
	pla                                                  ; $965d : $68
	tay                                                  ; $965e : $a8
	pla                                                  ; $965f : $68
	tax                                                  ; $9660 : $aa
	pla                                                  ; $9661 : $68
	rts                                                  ; $9662 : $60


Call_00_9663:
	pha                                                  ; $9663 : $48
	txa                                                  ; $9664 : $8a
	pha                                                  ; $9665 : $48
	tya                                                  ; $9666 : $98
	pha                                                  ; $9667 : $48
	lda $7b                                                  ; $9668 : $a5, $7b
	asl a                                                  ; $966a : $0a
	tax                                                  ; $966b : $aa
	lda $992e, x                                                  ; $966c : $bd, $2e, $99
	sta $8a                                                  ; $966f : $85, $8a
	inx                                                  ; $9671 : $e8
	lda $992e, x                                                  ; $9672 : $bd, $2e, $99
	sta $8b                                                  ; $9675 : $85, $8b
	lda #$01                                                  ; $9677 : $a9, $01
	sta $82                                                  ; $9679 : $85, $82
	jsr Call_00_9877                                                  ; $967b : $20, $77, $98
	pla                                                  ; $967e : $68
	tay                                                  ; $967f : $a8
	pla                                                  ; $9680 : $68
	tax                                                  ; $9681 : $aa
	pla                                                  ; $9682 : $68
	rts                                                  ; $9683 : $60


Call_00_9684:
	pha                                                  ; $9684 : $48
	txa                                                  ; $9685 : $8a
	pha                                                  ; $9686 : $48
	tya                                                  ; $9687 : $98
	pha                                                  ; $9688 : $48
	clc                                                  ; $9689 : $18
	lda $7a                                                  ; $968a : $a5, $7a
	asl a                                                  ; $968c : $0a
	tax                                                  ; $968d : $aa
	lda $998c, x                                                  ; $968e : $bd, $8c, $99
	sta $8c                                                  ; $9691 : $85, $8c
	inx                                                  ; $9693 : $e8
	lda $998c, x                                                  ; $9694 : $bd, $8c, $99
	sta $8d                                                  ; $9697 : $85, $8d
	lda #$01                                                  ; $9699 : $a9, $01
	sta $83                                                  ; $969b : $85, $83
	jsr Call_00_9877                                                  ; $969d : $20, $77, $98
	lda #$00                                                  ; $96a0 : $a9, $00
	sta $85                                                  ; $96a2 : $85, $85
	pla                                                  ; $96a4 : $68
	tay                                                  ; $96a5 : $a8
	pla                                                  ; $96a6 : $68
	tax                                                  ; $96a7 : $aa
	pla                                                  ; $96a8 : $68
	rts                                                  ; $96a9 : $60


Call_00_96aa:
	clc                                                  ; $96aa : $18
	lda $79                                                  ; $96ab : $a5, $79
	asl a                                                  ; $96ad : $0a
	tax                                                  ; $96ae : $aa
	lda $99d6, x                                                  ; $96af : $bd, $d6, $99
	sta $86                                                  ; $96b2 : $85, $86
	inx                                                  ; $96b4 : $e8
	lda $99d6, x                                                  ; $96b5 : $bd, $d6, $99
	sta $87                                                  ; $96b8 : $85, $87
	lda #$01                                                  ; $96ba : $a9, $01
	sta $80                                                  ; $96bc : $85, $80
	jsr Call_00_9877                                                  ; $96be : $20, $77, $98
	rts                                                  ; $96c1 : $60


Call_00_96c2:
	clc                                                  ; $96c2 : $18
	lda $79                                                  ; $96c3 : $a5, $79
	asl a                                                  ; $96c5 : $0a
	tax                                                  ; $96c6 : $aa
	lda $99f0, x                                                  ; $96c7 : $bd, $f0, $99
	sta $88                                                  ; $96ca : $85, $88
	inx                                                  ; $96cc : $e8
	lda $99f0, x                                                  ; $96cd : $bd, $f0, $99
	sta $89                                                  ; $96d0 : $85, $89
	lda #$01                                                  ; $96d2 : $a9, $01
	sta $81                                                  ; $96d4 : $85, $81
	jsr Call_00_9877                                                  ; $96d6 : $20, $77, $98
	rts                                                  ; $96d9 : $60


Call_00_96da:
	clc                                                  ; $96da : $18
	dec $80                                                  ; $96db : $c6, $80
	bne br_00_96e2                                                  ; $96dd : $d0, $03

	jsr Call_00_96ea                                                  ; $96df : $20, $ea, $96

br_00_96e2:
	dec $81                                                  ; $96e2 : $c6, $81
	bne br_00_96e9                                                  ; $96e4 : $d0, $03

	jsr Call_00_9750                                                  ; $96e6 : $20, $50, $97

br_00_96e9:
	rts                                                  ; $96e9 : $60


Call_00_96ea:
	clc                                                  ; $96ea : $18
	ldx #$00                                                  ; $96eb : $a2, $00
	lda ($86, x)                                                  ; $96ed : $a1, $86
	sta $80                                                  ; $96ef : $85, $80
	cmp #$ff                                                  ; $96f1 : $c9, $ff
	bne br_00_96fb                                                  ; $96f3 : $d0, $06

	jsr Call_00_96aa                                                  ; $96f5 : $20, $aa, $96
	jmp Jump_00_974f                                                  ; $96f8 : $4c, $4f, $97


br_00_96fb:
	cmp #$00                                                  ; $96fb : $c9, $00
	bne br_00_9711                                                  ; $96fd : $d0, $12

	lda $7d                                                  ; $96ff : $a5, $7d
	beq br_00_970b                                                  ; $9701 : $f0, $08

	dec $7d                                                  ; $9703 : $c6, $7d
	jsr Call_00_96aa                                                  ; $9705 : $20, $aa, $96
	jmp Jump_00_974f                                                  ; $9708 : $4c, $4f, $97


br_00_970b:
	jsr Call_00_9642                                                  ; $970b : $20, $42, $96
	jmp Jump_00_974f                                                  ; $970e : $4c, $4f, $97


br_00_9711:
	jsr Call_00_9853                                                  ; $9711 : $20, $53, $98
	inc $86, x                                                  ; $9714 : $f6, $86
	lda ($86, x)                                                  ; $9716 : $a1, $86
	sta SQ1_VOL                                                  ; $9718 : $8d, $00, $40
	jsr Call_00_9853                                                  ; $971b : $20, $53, $98
	inc $86, x                                                  ; $971e : $f6, $86
	lda ($86, x)                                                  ; $9720 : $a1, $86
	sta SQ1_SWEEP                                                  ; $9722 : $8d, $01, $40
	jsr Call_00_9853                                                  ; $9725 : $20, $53, $98
	inc $86, x                                                  ; $9728 : $f6, $86
	lda ($86, x)                                                  ; $972a : $a1, $86
	sta SQ1_HI                                                  ; $972c : $8d, $03, $40
	jsr Call_00_9853                                                  ; $972f : $20, $53, $98
	inc $86, x                                                  ; $9732 : $f6, $86
	lda ($86, x)                                                  ; $9734 : $a1, $86
	sta SQ1_LO                                                  ; $9736 : $8d, $02, $40
	jsr Call_00_9853                                                  ; $9739 : $20, $53, $98
	inc $86, x                                                  ; $973c : $f6, $86
	lda ($86, x)                                                  ; $973e : $a1, $86
	cmp #$ff                                                  ; $9740 : $c9, $ff
	beq br_00_974a                                                  ; $9742 : $f0, $06

	sta $7a                                                  ; $9744 : $85, $7a
	lda #$ff                                                  ; $9746 : $a9, $ff
	sta $85                                                  ; $9748 : $85, $85

br_00_974a:
	jsr Call_00_9853                                                  ; $974a : $20, $53, $98
	inc $86, x                                                  ; $974d : $f6, $86

Jump_00_974f:
	rts                                                  ; $974f : $60


Call_00_9750:
	ldx #$00                                                  ; $9750 : $a2, $00
	lda ($88, x)                                                  ; $9752 : $a1, $88
	sta $81                                                  ; $9754 : $85, $81
	cmp #$ff                                                  ; $9756 : $c9, $ff
	bne br_00_9760                                                  ; $9758 : $d0, $06

	jsr Call_00_96c2                                                  ; $975a : $20, $c2, $96
	jmp Jump_00_97b2                                                  ; $975d : $4c, $b2, $97


br_00_9760:
	cmp #$00                                                  ; $9760 : $c9, $00
	bne br_00_9774                                                  ; $9762 : $d0, $10

	lda $7d                                                  ; $9764 : $a5, $7d
	beq br_00_976e                                                  ; $9766 : $f0, $06

	jsr Call_00_96c2                                                  ; $9768 : $20, $c2, $96
	jmp Jump_00_97b2                                                  ; $976b : $4c, $b2, $97


br_00_976e:
	jsr Call_00_9642                                                  ; $976e : $20, $42, $96
	jmp Jump_00_97b2                                                  ; $9771 : $4c, $b2, $97


br_00_9774:
	jsr Call_00_985c                                                  ; $9774 : $20, $5c, $98
	inc $88, x                                                  ; $9777 : $f6, $88
	lda ($88, x)                                                  ; $9779 : $a1, $88
	sta SQ2_VOL                                                  ; $977b : $8d, $04, $40
	jsr Call_00_985c                                                  ; $977e : $20, $5c, $98
	inc $88, x                                                  ; $9781 : $f6, $88
	lda ($88, x)                                                  ; $9783 : $a1, $88
	sta SQ2_SWEEP                                                  ; $9785 : $8d, $05, $40
	jsr Call_00_985c                                                  ; $9788 : $20, $5c, $98
	inc $88, x                                                  ; $978b : $f6, $88
	lda ($88, x)                                                  ; $978d : $a1, $88
	sta SQ2_HI                                                  ; $978f : $8d, $07, $40
	jsr Call_00_985c                                                  ; $9792 : $20, $5c, $98
	inc $88, x                                                  ; $9795 : $f6, $88
	lda ($88, x)                                                  ; $9797 : $a1, $88
	sta SQ2_LO                                                  ; $9799 : $8d, $06, $40
	jsr Call_00_985c                                                  ; $979c : $20, $5c, $98
	inc $88, x                                                  ; $979f : $f6, $88
	lda ($88, x)                                                  ; $97a1 : $a1, $88
	cmp #$ff                                                  ; $97a3 : $c9, $ff
	beq br_00_97ad                                                  ; $97a5 : $f0, $06

	sta $7a                                                  ; $97a7 : $85, $7a
	lda #$ff                                                  ; $97a9 : $a9, $ff
	sta $85                                                  ; $97ab : $85, $85

br_00_97ad:
	jsr Call_00_985c                                                  ; $97ad : $20, $5c, $98
	inc $88, x                                                  ; $97b0 : $f6, $88

Jump_00_97b2:
	rts                                                  ; $97b2 : $60


Call_00_97b3:
	dec $82                                                  ; $97b3 : $c6, $82
	bne br_00_97ba                                                  ; $97b5 : $d0, $03

	jsr Call_00_97bb                                                  ; $97b7 : $20, $bb, $97

br_00_97ba:
	rts                                                  ; $97ba : $60


Call_00_97bb:
	clc                                                  ; $97bb : $18
	ldx #$00                                                  ; $97bc : $a2, $00
	lda ($8a, x)                                                  ; $97be : $a1, $8a
	sta $82                                                  ; $97c0 : $85, $82
	cmp #$ff                                                  ; $97c2 : $c9, $ff
	bne br_00_97dc                                                  ; $97c4 : $d0, $16

	lda $7e                                                  ; $97c6 : $a5, $7e
	beq br_00_97d2                                                  ; $97c8 : $f0, $08

	dec $7e                                                  ; $97ca : $c6, $7e
	jsr Call_00_9663                                                  ; $97cc : $20, $63, $96
	jmp Jump_00_97ff                                                  ; $97cf : $4c, $ff, $97


br_00_97d2:
	lda #$ff                                                  ; $97d2 : $a9, $ff
	sta $7b                                                  ; $97d4 : $85, $7b
	jsr Call_00_9877                                                  ; $97d6 : $20, $77, $98
	jmp Jump_00_97ff                                                  ; $97d9 : $4c, $ff, $97


br_00_97dc:
	jsr Call_00_9865                                                  ; $97dc : $20, $65, $98
	inc $8a, x                                                  ; $97df : $f6, $8a
	lda ($8a, x)                                                  ; $97e1 : $a1, $8a
	sta TRI_LINEAR                                                  ; $97e3 : $8d, $08, $40
	jsr Call_00_9865                                                  ; $97e6 : $20, $65, $98
	inc $8a, x                                                  ; $97e9 : $f6, $8a
	lda ($8a, x)                                                  ; $97eb : $a1, $8a
	sta TRI_LO                                                  ; $97ed : $8d, $0a, $40
	jsr Call_00_9865                                                  ; $97f0 : $20, $65, $98
	inc $8a, x                                                  ; $97f3 : $f6, $8a
	lda ($8a, x)                                                  ; $97f5 : $a1, $8a
	sta TRI_HI                                                  ; $97f7 : $8d, $0b, $40
	jsr Call_00_9865                                                  ; $97fa : $20, $65, $98
	inc $8a, x                                                  ; $97fd : $f6, $8a

Jump_00_97ff:
	rts                                                  ; $97ff : $60


Call_00_9800:
	lda $85                                                  ; $9800 : $a5, $85
	beq br_00_9807                                                  ; $9802 : $f0, $03

	jsr Call_00_9684                                                  ; $9804 : $20, $84, $96

br_00_9807:
	dec $83                                                  ; $9807 : $c6, $83
	bne br_00_980e                                                  ; $9809 : $d0, $03

	jsr Call_00_980f                                                  ; $980b : $20, $0f, $98

br_00_980e:
	rts                                                  ; $980e : $60


Call_00_980f:
	ldx #$00                                                  ; $980f : $a2, $00
	lda ($8c, x)                                                  ; $9811 : $a1, $8c
	sta $83                                                  ; $9813 : $85, $83
	cmp #$ff                                                  ; $9815 : $c9, $ff
	bne br_00_982f                                                  ; $9817 : $d0, $16

	lda $7f                                                  ; $9819 : $a5, $7f
	beq br_00_9825                                                  ; $981b : $f0, $08

	dec $7f                                                  ; $981d : $c6, $7f
	jsr Call_00_9684                                                  ; $981f : $20, $84, $96
	jmp Jump_00_9852                                                  ; $9822 : $4c, $52, $98


br_00_9825:
	lda #$ff                                                  ; $9825 : $a9, $ff
	sta $7a                                                  ; $9827 : $85, $7a
	jsr Call_00_9877                                                  ; $9829 : $20, $77, $98
	jmp Jump_00_9852                                                  ; $982c : $4c, $52, $98


br_00_982f:
	jsr Call_00_986e                                                  ; $982f : $20, $6e, $98
	inc $8c, x                                                  ; $9832 : $f6, $8c
	lda ($8c, x)                                                  ; $9834 : $a1, $8c
	sta NOISE_VOL                                                  ; $9836 : $8d, $0c, $40
	jsr Call_00_986e                                                  ; $9839 : $20, $6e, $98
	inc $8c, x                                                  ; $983c : $f6, $8c
	lda ($8c, x)                                                  ; $983e : $a1, $8c
	sta NOISE_LO                                                  ; $9840 : $8d, $0e, $40
	jsr Call_00_986e                                                  ; $9843 : $20, $6e, $98
	inc $8c, x                                                  ; $9846 : $f6, $8c
	lda ($8c, x)                                                  ; $9848 : $a1, $8c
	sta NOISE_HI                                                  ; $984a : $8d, $0f, $40
	jsr Call_00_986e                                                  ; $984d : $20, $6e, $98
	inc $8c, x                                                  ; $9850 : $f6, $8c

Jump_00_9852:
	rts                                                  ; $9852 : $60


Call_00_9853:
	lda $86                                                  ; $9853 : $a5, $86
	cmp #$ff                                                  ; $9855 : $c9, $ff
	bne br_00_985b                                                  ; $9857 : $d0, $02

	inc $87                                                  ; $9859 : $e6, $87

br_00_985b:
	rts                                                  ; $985b : $60


Call_00_985c:
	lda $88                                                  ; $985c : $a5, $88
	cmp #$ff                                                  ; $985e : $c9, $ff
	bne br_00_9864                                                  ; $9860 : $d0, $02

	inc $89                                                  ; $9862 : $e6, $89

br_00_9864:
	rts                                                  ; $9864 : $60


Call_00_9865:
	lda $8a                                                  ; $9865 : $a5, $8a
	cmp #$ff                                                  ; $9867 : $c9, $ff
	bne br_00_986d                                                  ; $9869 : $d0, $02

	inc $8b                                                  ; $986b : $e6, $8b

br_00_986d:
	rts                                                  ; $986d : $60


Call_00_986e:
	lda $8c                                                  ; $986e : $a5, $8c
	cmp #$ff                                                  ; $9870 : $c9, $ff
	bne br_00_9876                                                  ; $9872 : $d0, $02

	inc $8d                                                  ; $9874 : $e6, $8d

br_00_9876:
	rts                                                  ; $9876 : $60


Call_00_9877:
	lda $7c                                                  ; $9877 : $a5, $7c
	cmp #$ff                                                  ; $9879 : $c9, $ff
	bne br_00_9884                                                  ; $987b : $d0, $07

	lda #$0f                                                  ; $987d : $a9, $0f
	sta $84                                                  ; $987f : $85, $84
	jmp Jump_00_9888                                                  ; $9881 : $4c, $88, $98


br_00_9884:
	lda #$1f                                                  ; $9884 : $a9, $1f
	sta $84                                                  ; $9886 : $85, $84

Jump_00_9888:
	lda $79                                                  ; $9888 : $a5, $79
	cmp #$ff                                                  ; $988a : $c9, $ff
	beq br_00_9898                                                  ; $988c : $f0, $0a

	lda #$1f                                                  ; $988e : $a9, $1f
	and $84                                                  ; $9890 : $25, $84
	sta SND_CHN                                                  ; $9892 : $8d, $15, $40
	jmp Jump_00_98bc                                                  ; $9895 : $4c, $bc, $98


br_00_9898:
	lda #$1c                                                  ; $9898 : $a9, $1c
	and $84                                                  ; $989a : $25, $84
	sta SND_CHN                                                  ; $989c : $8d, $15, $40
	lda $7b                                                  ; $989f : $a5, $7b
	cmp #$ff                                                  ; $98a1 : $c9, $ff
	bne br_00_98d9                                                  ; $98a3 : $d0, $34

	lda #$18                                                  ; $98a5 : $a9, $18
	and $84                                                  ; $98a7 : $25, $84
	sta SND_CHN                                                  ; $98a9 : $8d, $15, $40
	lda $7a                                                  ; $98ac : $a5, $7a
	cmp #$ff                                                  ; $98ae : $c9, $ff
	bne br_00_98f6                                                  ; $98b0 : $d0, $44

	lda #$10                                                  ; $98b2 : $a9, $10
	and $84                                                  ; $98b4 : $25, $84
	sta SND_CHN                                                  ; $98b6 : $8d, $15, $40
	jmp Jump_00_98f6                                                  ; $98b9 : $4c, $f6, $98


Jump_00_98bc:
	lda $7b                                                  ; $98bc : $a5, $7b
	cmp #$ff                                                  ; $98be : $c9, $ff
	bne br_00_98d9                                                  ; $98c0 : $d0, $17

	lda #$1b                                                  ; $98c2 : $a9, $1b
	and $84                                                  ; $98c4 : $25, $84
	sta SND_CHN                                                  ; $98c6 : $8d, $15, $40
	lda $7a                                                  ; $98c9 : $a5, $7a
	cmp #$ff                                                  ; $98cb : $c9, $ff
	bne br_00_98f6                                                  ; $98cd : $d0, $27

	lda #$13                                                  ; $98cf : $a9, $13
	and $84                                                  ; $98d1 : $25, $84
	sta SND_CHN                                                  ; $98d3 : $8d, $15, $40
	jmp Jump_00_98f6                                                  ; $98d6 : $4c, $f6, $98


br_00_98d9:
	lda $7a                                                  ; $98d9 : $a5, $7a
	cmp #$ff                                                  ; $98db : $c9, $ff
	bne br_00_98f6                                                  ; $98dd : $d0, $17

	lda $79                                                  ; $98df : $a5, $79
	cmp #$ff                                                  ; $98e1 : $c9, $ff
	bne br_00_98ef                                                  ; $98e3 : $d0, $0a

	lda #$14                                                  ; $98e5 : $a9, $14
	and $84                                                  ; $98e7 : $25, $84
	sta SND_CHN                                                  ; $98e9 : $8d, $15, $40
	jmp Jump_00_98f6                                                  ; $98ec : $4c, $f6, $98


br_00_98ef:
	lda #$17                                                  ; $98ef : $a9, $17
	and $84                                                  ; $98f1 : $25, $84
	sta SND_CHN                                                  ; $98f3 : $8d, $15, $40

Jump_00_98f6:
br_00_98f6:
	rts                                                  ; $98f6 : $60


	pha                                                  ; $98f7 : $48
	txa                                                  ; $98f8 : $8a
	pha                                                  ; $98f9 : $48
	tya                                                  ; $98fa : $98
	pha                                                  ; $98fb : $48
	clc                                                  ; $98fc : $18
	lda $7c                                                  ; $98fd : $a5, $7c
	asl a                                                  ; $98ff : $0a
	tax                                                  ; $9900 : $aa
	lda $99c4, x                                                  ; $9901 : $bd, $c4, $99
	sta $8e                                                  ; $9904 : $85, $8e
	inx                                                  ; $9906 : $e8
	lda $99c4, x                                                  ; $9907 : $bd, $c4, $99
	sta $8f                                                  ; $990a : $85, $8f
	ldy #$00                                                  ; $990c : $a0, $00
	lda ($8e), y                                                  ; $990e : $b1, $8e
	sta DMC_FREQ                                                  ; $9910 : $8d, $10, $40
	iny                                                  ; $9913 : $c8
	lda ($8e), y                                                  ; $9914 : $b1, $8e
	sta DMC_RAW                                                  ; $9916 : $8d, $11, $40
	iny                                                  ; $9919 : $c8
	lda ($8e), y                                                  ; $991a : $b1, $8e
	sta $4012                                                  ; $991c : $8d, $12, $40
	iny                                                  ; $991f : $c8
	lda ($8e), y                                                  ; $9920 : $b1, $8e
	sta $4013                                                  ; $9922 : $8d, $13, $40
	jsr Call_00_9877                                                  ; $9925 : $20, $77, $98
	pla                                                  ; $9928 : $68
	tay                                                  ; $9929 : $a8
	pla                                                  ; $992a : $68
	tax                                                  ; $992b : $aa
	pla                                                  ; $992c : $68
	rts                                                  ; $992d : $60


.include "data/bank_000.s"


br_00_d6f6:
	lda $8f                                                  ; $d6f6 : $a5, $8f
	bne br_00_d6f6                                                  ; $d6f8 : $d0, $fc

	rts                                                  ; $d6fa : $60


br_00_d6fb:
	lda $a2                                                  ; $d6fb : $a5, $a2
	bne br_00_d6fb                                                  ; $d6fd : $d0, $fc

	rts                                                  ; $d6ff : $60


Call_00_d700:
	lda #$ff                                                  ; $d700 : $a9, $ff
	sta $8f                                                  ; $d702 : $85, $8f
	sta $a2                                                  ; $d704 : $85, $a2

br_00_d706:
	lda $8f                                                  ; $d706 : $a5, $8f
	ora $a2                                                  ; $d708 : $05, $a2
	bne br_00_d706                                                  ; $d70a : $d0, $fa

br_00_d70c:
	ldx $a2                                                  ; $d70c : $a6, $a2
	bne br_00_d71c                                                  ; $d70e : $d0, $0c

	ldx $8f                                                  ; $d710 : $a6, $8f
	beq br_00_d70c                                                  ; $d712 : $f0, $f8

	cpx #$0d                                                  ; $d714 : $e0, $0d
	bne br_00_d71c                                                  ; $d716 : $d0, $04

	lda #$01                                                  ; $d718 : $a9, $01
	sta $a2                                                  ; $d71a : $85, $a2

Call_00_d71c:
br_00_d71c:
	lda #$00                                                  ; $d71c : $a9, $00
	sta $a3                                                  ; $d71e : $85, $a3
	sta $a4                                                  ; $d720 : $85, $a4
	rts                                                  ; $d722 : $60


Call_00_d723:
	lda #$05                                                  ; $d723 : $a9, $05
	sta JOY1                                                  ; $d725 : $8d, $16, $40
	nop                                                  ; $d728 : $ea
	nop                                                  ; $d729 : $ea
	nop                                                  ; $d72a : $ea
	nop                                                  ; $d72b : $ea
	nop                                                  ; $d72c : $ea
	nop                                                  ; $d72d : $ea
	ldx #$00                                                  ; $d72e : $a2, $00

br_00_d730:
	lda #$04                                                  ; $d730 : $a9, $04
	sta JOY1                                                  ; $d732 : $8d, $16, $40
	nop                                                  ; $d735 : $ea
	nop                                                  ; $d736 : $ea
	nop                                                  ; $d737 : $ea
	nop                                                  ; $d738 : $ea
	lda FRAME_COUNTER_CTRL                                                  ; $d739 : $ad, $17, $40
	lsr a                                                  ; $d73c : $4a
	and #$0f                                                  ; $d73d : $29, $0f
	sta $95, x                                                  ; $d73f : $95, $95
	lda #$06                                                  ; $d741 : $a9, $06
	sta JOY1                                                  ; $d743 : $8d, $16, $40
	nop                                                  ; $d746 : $ea
	nop                                                  ; $d747 : $ea
	nop                                                  ; $d748 : $ea
	nop                                                  ; $d749 : $ea
	lda FRAME_COUNTER_CTRL                                                  ; $d74a : $ad, $17, $40
	rol a                                                  ; $d74d : $2a
	rol a                                                  ; $d74e : $2a
	rol a                                                  ; $d74f : $2a
	and #$f0                                                  ; $d750 : $29, $f0
	ora $95, x                                                  ; $d752 : $15, $95
	eor #$ff                                                  ; $d754 : $49, $ff
	sta $95, x                                                  ; $d756 : $95, $95
	inx                                                  ; $d758 : $e8
	cpx #$0a                                                  ; $d759 : $e0, $0a
	bne br_00_d730                                                  ; $d75b : $d0, $d3

	lda #$00                                                  ; $d75d : $a9, $00
	sta $90                                                  ; $d75f : $85, $90
	sta $91                                                  ; $d761 : $85, $91
	sta $92                                                  ; $d763 : $85, $92
	lda #$80                                                  ; $d765 : $a9, $80
	and $9a                                                  ; $d767 : $25, $9a
	beq br_00_d776                                                  ; $d769 : $f0, $0b

	eor $9a                                                  ; $d76b : $45, $9a
	sta $9a                                                  ; $d76d : $85, $9a
	lda #$ff                                                  ; $d76f : $a9, $ff
	sta $90                                                  ; $d771 : $85, $90
	jmp Jump_00_d795                                                  ; $d773 : $4c, $95, $d7


br_00_d776:
	lda #$80                                                  ; $d776 : $a9, $80
	and $9c                                                  ; $d778 : $25, $9c
	beq br_00_d787                                                  ; $d77a : $f0, $0b

	eor $9c                                                  ; $d77c : $45, $9c
	sta $9c                                                  ; $d77e : $85, $9c
	lda #$ff                                                  ; $d780 : $a9, $ff
	sta $91                                                  ; $d782 : $85, $91
	jmp Jump_00_d795                                                  ; $d784 : $4c, $95, $d7


br_00_d787:
	lda #$08                                                  ; $d787 : $a9, $08
	and $96                                                  ; $d789 : $25, $96
	beq br_00_d795                                                  ; $d78b : $f0, $08

	eor $96                                                  ; $d78d : $45, $96
	sta $96                                                  ; $d78f : $85, $96
	lda #$ff                                                  ; $d791 : $a9, $ff
	sta $92                                                  ; $d793 : $85, $92

Jump_00_d795:
br_00_d795:
	ldx #$00                                                  ; $d795 : $a2, $00
	ldy #$0a                                                  ; $d797 : $a0, $0a

br_00_d799:
	lda $95, x                                                  ; $d799 : $b5, $95
	bne br_00_d7e7                                                  ; $d79b : $d0, $4a

	inx                                                  ; $d79d : $e8
	dey                                                  ; $d79e : $88
	bne br_00_d799                                                  ; $d79f : $d0, $f8

Jump_00_d7a1:
br_00_d7a1:
	lda #$00                                                  ; $d7a1 : $a9, $00

Jump_00_d7a3:
br_00_d7a3:
	sta $8f                                                  ; $d7a3 : $85, $8f
	lda #$10                                                  ; $d7a5 : $a9, $10
	bit $0e                                                  ; $d7a7 : $24, $0e
	bne br_00_d7e6                                                  ; $d7a9 : $d0, $3b

	lda $8f                                                  ; $d7ab : $a5, $8f
	cmp #$05                                                  ; $d7ad : $c9, $05
	bne br_00_d7bb                                                  ; $d7af : $d0, $0a

	lda #$00                                                  ; $d7b1 : $a9, $00
	sta $a0                                                  ; $d7b3 : $85, $a0
	lda #$ff                                                  ; $d7b5 : $a9, $ff
	sta $a1                                                  ; $d7b7 : $85, $a1
	bne br_00_d7e3                                                  ; $d7b9 : $d0, $28

br_00_d7bb:
	cmp #$18                                                  ; $d7bb : $c9, $18
	bne br_00_d7c9                                                  ; $d7bd : $d0, $0a

	lda #$00                                                  ; $d7bf : $a9, $00
	sta $a0                                                  ; $d7c1 : $85, $a0
	lda #$01                                                  ; $d7c3 : $a9, $01
	sta $a1                                                  ; $d7c5 : $85, $a1
	bne br_00_d7e3                                                  ; $d7c7 : $d0, $1a

br_00_d7c9:
	cmp #$13                                                  ; $d7c9 : $c9, $13
	bne br_00_d7d7                                                  ; $d7cb : $d0, $0a

	lda #$00                                                  ; $d7cd : $a9, $00
	sta $a1                                                  ; $d7cf : $85, $a1
	lda #$ff                                                  ; $d7d1 : $a9, $ff
	sta $a0                                                  ; $d7d3 : $85, $a0
	bne br_00_d7e3                                                  ; $d7d5 : $d0, $0c

br_00_d7d7:
	cmp #$04                                                  ; $d7d7 : $c9, $04
	bne br_00_d7e6                                                  ; $d7d9 : $d0, $0b

	lda #$00                                                  ; $d7db : $a9, $00
	sta $a1                                                  ; $d7dd : $85, $a1
	lda #$01                                                  ; $d7df : $a9, $01
	sta $a0                                                  ; $d7e1 : $85, $a0

br_00_d7e3:
	jsr Call_00_da14                                                  ; $d7e3 : $20, $14, $da

br_00_d7e6:
	rts                                                  ; $d7e6 : $60


br_00_d7e7:
	ldy #$00                                                  ; $d7e7 : $a0, $00
	clc                                                  ; $d7e9 : $18

br_00_d7ea:
	lsr a                                                  ; $d7ea : $4a
	bcs br_00_d7f0                                                  ; $d7eb : $b0, $03

	iny                                                  ; $d7ed : $c8
	bne br_00_d7ea                                                  ; $d7ee : $d0, $fa

br_00_d7f0:
	txa                                                  ; $d7f0 : $8a
	asl a                                                  ; $d7f1 : $0a
	asl a                                                  ; $d7f2 : $0a
	asl a                                                  ; $d7f3 : $0a
	sty $94                                                  ; $d7f4 : $84, $94
	ora $94                                                  ; $d7f6 : $05, $94
	tax                                                  ; $d7f8 : $aa
	lda $90                                                  ; $d7f9 : $a5, $90
	beq br_00_d80e                                                  ; $d7fb : $f0, $11

	lda $d847, x                                                  ; $d7fd : $bd, $47, $d8
	cmp #$20                                                  ; $d800 : $c9, $20
	bcc br_00_d7a3                                                  ; $d802 : $90, $9f

	sbc #$40                                                  ; $d804 : $e9, $40
	bcc br_00_d7a1                                                  ; $d806 : $90, $99

	cmp #$20                                                  ; $d808 : $c9, $20
	bcc br_00_d7a3                                                  ; $d80a : $90, $97

	bcs br_00_d7a1                                                  ; $d80c : $b0, $93

br_00_d80e:
	lda $91                                                  ; $d80e : $a5, $91
	beq br_00_d822                                                  ; $d810 : $f0, $10

	lda $93                                                  ; $d812 : $a5, $93
	bne br_00_d81c                                                  ; $d814 : $d0, $06

	lda $d937, x                                                  ; $d816 : $bd, $37, $d9
	jmp Jump_00_d839                                                  ; $d819 : $4c, $39, $d8


br_00_d81c:
	lda $d897, x                                                  ; $d81c : $bd, $97, $d8
	jmp Jump_00_d839                                                  ; $d81f : $4c, $39, $d8


br_00_d822:
	lda $92                                                  ; $d822 : $a5, $92
	beq br_00_d82c                                                  ; $d824 : $f0, $06

	lda $d987, x                                                  ; $d826 : $bd, $87, $d9
	jmp Jump_00_d839                                                  ; $d829 : $4c, $39, $d8


br_00_d82c:
	lda $93                                                  ; $d82c : $a5, $93
	bne br_00_d836                                                  ; $d82e : $d0, $06

	lda $d847, x                                                  ; $d830 : $bd, $47, $d8
	jmp Jump_00_d839                                                  ; $d833 : $4c, $39, $d8


br_00_d836:
	lda $d8e7, x                                                  ; $d836 : $bd, $e7, $d8

Jump_00_d839:
	cmp #$ff                                                  ; $d839 : $c9, $ff
	beq br_00_d840                                                  ; $d83b : $f0, $03

	jmp Jump_00_d7a3                                                  ; $d83d : $4c, $a3, $d7


br_00_d840:
	eor $93                                                  ; $d840 : $45, $93
	sta $93                                                  ; $d842 : $85, $93
	jmp Jump_00_d7a1                                                  ; $d844 : $4c, $a1, $d7


	.db $34                                                  ; $d847 : $34
	.db $47                                                  ; $d848 : $47
	lsr $43                                                  ; $d849 : $46, $43
	sbc ($45), y                                                  ; $d84b : $f1, $45
	and $56, x                                                  ; $d84d : $35, $56
	.db $32                                                  ; $d84f : $32
	.db $44                                                  ; $d850 : $44
	.db $53                                                  ; $d851 : $53
	.db $00                                                  ; $d852 : $00
	beq br_00_d8ac                                                  ; $d853 : $f0, $57

	.db $33                                                  ; $d855 : $33
	cli                                                  ; $d856 : $58
	asl $02, x                                                  ; $d857 : $16, $02
	ora #$04                                                  ; $d859 : $09, $04
	.db $f7                                                  ; $d85b : $f7
	.db $12                                                  ; $d85c : $12
	.db $07                                                  ; $d85d : $07
	.db $0b                                                  ; $d85e : $0b
	and $4c49, y                                                  ; $d85f : $39, $49, $4c
	bit $4ff4                                                  ; $d862 : $2c, $f4, $4f
	bmi $2e                                                  ; $d865 : $30, $2e

	eor $050d, x                                                  ; $d867 : $5d, $0d, $05
	.db $13                                                  ; $d86a : $13
	inc $5b, x                                                  ; $d86b : $f6, $5b
	.db $5c                                                  ; $d86d : $5c
	clc                                                  ; $d86e : $18
	eor ($ff), y                                                  ; $d86f : $51, $ff
	.db $5a                                                  ; $d871 : $5a
	.db $03                                                  ; $d872 : $03
	.db $1b                                                  ; $d873 : $1b
	eor ($31, x)                                                  ; $d874 : $41, $31
	.db $00                                                  ; $d876 : $00
	.db $37                                                  ; $d877 : $37
	eor $4d4b, y                                                  ; $d878 : $59, $4b, $4d
	.db $f3                                                  ; $d87b : $f3
	eor $38, x                                                  ; $d87c : $55, $38
	lsr a                                                  ; $d87e : $4a
	and $273b                                                  ; $d87f : $2d, $3b, $27
	.db $2f                                                  ; $d882 : $2f
	sbc $50, x                                                  ; $d883 : $f5, $50
	and $5400, x                                                  ; $d885 : $3d, $00, $54
	pha                                                  ; $d888 : $48
	lsr $f220                                                  ; $d889 : $4e, $20, $f2
	.db $52                                                  ; $d88c : $52
	rol $42, x                                                  ; $d88d : $36, $42
	rts                                                  ; $d88f : $60


	sbc $fbfa, y                                                  ; $d890 : $f9, $fa, $fb
	.db $2b                                                  ; $d893 : $2b
	and $2f2a                                                  ; $d894 : $2d, $2a, $2f
	bit $47                                                  ; $d897 : $24, $47
	lsr $43                                                  ; $d899 : $46, $43
	sbc ($45), y                                                  ; $d89b : $f1, $45
	and $56                                                  ; $d89d : $25, $56
	rti                                                  ; $d89f : $40


	.db $44                                                  ; $d8a0 : $44
	.db $53                                                  ; $d8a1 : $53
	.db $00                                                  ; $d8a2 : $00
	.db $02                                                  ; $d8a3 : $02
	.db $57                                                  ; $d8a4 : $57
	.db $23                                                  ; $d8a5 : $23
	cli                                                  ; $d8a6 : $58
	.db $12                                                  ; $d8a7 : $12
	php                                                  ; $d8a8 : $08
	.db $00                                                  ; $d8a9 : $00
	.db $1c                                                  ; $d8aa : $1c
	clc                                                  ; $d8ab : $18

br_00_d8ac:
	.db $00                                                  ; $d8ac : $00
	.db $00                                                  ; $d8ad : $00
	.db $0c                                                  ; $d8ae : $0c
	plp                                                  ; $d8af : $28
	eor #$4c                                                  ; $d8b0 : $49, $4c
	.db $3c                                                  ; $d8b2 : $3c
	bpl $4f                                                  ; $d8b3 : $10, $4f

	and #$3e                                                  ; $d8b5 : $29, $3e
	adc $1e0d, x                                                  ; $d8b7 : $7d, $0d, $1e
	ora $7b17, x                                                  ; $d8ba : $1d, $17, $7b
	.db $7c                                                  ; $d8bd : $7c
	.db $1f                                                  ; $d8be : $1f
	eor ($ff), y                                                  ; $d8bf : $51, $ff
	.db $5a                                                  ; $d8c1 : $5a
	.db $03                                                  ; $d8c2 : $03
	.db $1b                                                  ; $d8c3 : $1b
	eor ($21, x)                                                  ; $d8c4 : $41, $21
	.db $00                                                  ; $d8c6 : $00
	rol $59                                                  ; $d8c7 : $26, $59
	.db $4b                                                  ; $d8c9 : $4b
	eor $550f                                                  ; $d8ca : $4d, $0f, $55
	rol a                                                  ; $d8cd : $2a
	lsr a                                                  ; $d8ce : $4a
	.db $5f                                                  ; $d8cf : $5f
	.db $3a                                                  ; $d8d0 : $3a
	.db $22                                                  ; $d8d1 : $22
	.db $3f                                                  ; $d8d2 : $3f
	ora ($50), y                                                  ; $d8d3 : $11, $50
	.db $2b                                                  ; $d8d5 : $2b
	.db $00                                                  ; $d8d6 : $00
	.db $54                                                  ; $d8d7 : $54
	pha                                                  ; $d8d8 : $48
	lsr $0e20                                                  ; $d8d9 : $4e, $20, $0e
	.db $52                                                  ; $d8dc : $52
	lsr $7e42, x                                                  ; $d8dd : $5e, $42, $7e
	sbc $fbfa, y                                                  ; $d8e0 : $f9, $fa, $fb
	.db $2b                                                  ; $d8e3 : $2b
	and $2f2a                                                  ; $d8e4 : $2d, $2a, $2f
	.db $34                                                  ; $d8e7 : $34
	.db $67                                                  ; $d8e8 : $67
	ror $63                                                  ; $d8e9 : $66, $63
	sbc ($65), y                                                  ; $d8eb : $f1, $65
	and $76, x                                                  ; $d8ed : $35, $76
	.db $32                                                  ; $d8ef : $32
	.db $64                                                  ; $d8f0 : $64
	.db $73                                                  ; $d8f1 : $73
	.db $00                                                  ; $d8f2 : $00
	beq $77                                                  ; $d8f3 : $f0, $77

	.db $33                                                  ; $d8f5 : $33
	sei                                                  ; $d8f6 : $78
	asl $02, x                                                  ; $d8f7 : $16, $02
	ora #$04                                                  ; $d8f9 : $09, $04
	.db $f7                                                  ; $d8fb : $f7
	.db $12                                                  ; $d8fc : $12
	.db $07                                                  ; $d8fd : $07
	.db $0b                                                  ; $d8fe : $0b
	and $6c69, y                                                  ; $d8ff : $39, $69, $6c
	bit $6ff4                                                  ; $d902 : $2c, $f4, $6f
	bmi $2e                                                  ; $d905 : $30, $2e

	eor $050d, x                                                  ; $d907 : $5d, $0d, $05
	.db $13                                                  ; $d90a : $13
	inc $5b, x                                                  ; $d90b : $f6, $5b
	.db $5c                                                  ; $d90d : $5c
	clc                                                  ; $d90e : $18
	adc ($ff), y                                                  ; $d90f : $71, $ff
	.db $7a                                                  ; $d911 : $7a
	.db $03                                                  ; $d912 : $03
	.db $1b                                                  ; $d913 : $1b
	adc ($31, x)                                                  ; $d914 : $61, $31
	.db $00                                                  ; $d916 : $00
	.db $37                                                  ; $d917 : $37
	adc $6d6b, y                                                  ; $d918 : $79, $6b, $6d
	.db $f3                                                  ; $d91b : $f3
	adc $38, x                                                  ; $d91c : $75, $38
	ror a                                                  ; $d91e : $6a
	and $273b                                                  ; $d91f : $2d, $3b, $27
	.db $2f                                                  ; $d922 : $2f
	sbc $70, x                                                  ; $d923 : $f5, $70
	and $7400, x                                                  ; $d925 : $3d, $00, $74
	pla                                                  ; $d928 : $68
	ror $f220                                                  ; $d929 : $6e, $20, $f2
	.db $72                                                  ; $d92c : $72
	rol $62, x                                                  ; $d92d : $36, $62
	rts                                                  ; $d92f : $60


	sbc $fbfa, y                                                  ; $d930 : $f9, $fa, $fb
	.db $2b                                                  ; $d933 : $2b
	and $2f2a                                                  ; $d934 : $2d, $2a, $2f
	bit $67                                                  ; $d937 : $24, $67
	ror $63                                                  ; $d939 : $66, $63
	asl $65                                                  ; $d93b : $06, $65
	and $76                                                  ; $d93d : $25, $76
	rti                                                  ; $d93f : $40


	.db $64                                                  ; $d940 : $64
	.db $73                                                  ; $d941 : $73
	.db $00                                                  ; $d942 : $00
	.db $02                                                  ; $d943 : $02
	.db $77                                                  ; $d944 : $77
	.db $23                                                  ; $d945 : $23
	sei                                                  ; $d946 : $78
	.db $12                                                  ; $d947 : $12
	php                                                  ; $d948 : $08
	.db $00                                                  ; $d949 : $00
	.db $1c                                                  ; $d94a : $1c
	clc                                                  ; $d94b : $18
	.db $00                                                  ; $d94c : $00
	.db $00                                                  ; $d94d : $00
	.db $0c                                                  ; $d94e : $0c
	plp                                                  ; $d94f : $28
	adc #$6c                                                  ; $d950 : $69, $6c
	.db $3c                                                  ; $d952 : $3c
	bpl br_00_d9c4                                                  ; $d953 : $10, $6f

	bmi br_00_d995                                                  ; $d955 : $30, $3e

	adc $1e0d, x                                                  ; $d957 : $7d, $0d, $1e
	ora $7b17, x                                                  ; $d95a : $1d, $17, $7b
	.db $7c                                                  ; $d95d : $7c
	.db $1f                                                  ; $d95e : $1f
	adc ($00), y                                                  ; $d95f : $71, $00
	.db $7a                                                  ; $d961 : $7a
	.db $03                                                  ; $d962 : $03
	.db $1b                                                  ; $d963 : $1b
	adc ($21, x)                                                  ; $d964 : $61, $21
	.db $00                                                  ; $d966 : $00
	rol $79                                                  ; $d967 : $26, $79
	.db $6b                                                  ; $d969 : $6b
	adc $750f                                                  ; $d96a : $6d, $0f, $75
	rol a                                                  ; $d96d : $2a
	ror a                                                  ; $d96e : $6a
	.db $5f                                                  ; $d96f : $5f
	.db $3a                                                  ; $d970 : $3a
	.db $22                                                  ; $d971 : $22
	.db $3f                                                  ; $d972 : $3f
	ora ($70), y                                                  ; $d973 : $11, $70
	.db $2b                                                  ; $d975 : $2b
	.db $00                                                  ; $d976 : $00
	.db $74                                                  ; $d977 : $74
	pla                                                  ; $d978 : $68
	ror $0e20                                                  ; $d979 : $6e, $20, $0e
	.db $72                                                  ; $d97c : $72
	lsr $7e62, x                                                  ; $d97d : $5e, $62, $7e
	sbc $fbfa, y                                                  ; $d980 : $f9, $fa, $fb
	.db $2b                                                  ; $d983 : $2b
	and $2f2a                                                  ; $d984 : $2d, $2a, $2f
	.db $eb                                                  ; $d987 : $eb
	.db $00                                                  ; $d988 : $00
	.db $00                                                  ; $d989 : $00
	.db $00                                                  ; $d98a : $00
	.db $00                                                  ; $d98b : $00
	.db $00                                                  ; $d98c : $00
	cpx $e900                                                  ; $d98d : $ec, $00, $e9
	.db $00                                                  ; $d990 : $00
	.db $00                                                  ; $d991 : $00
	.db $00                                                  ; $d992 : $00
	.db $00                                                  ; $d993 : $00
	.db $00                                                  ; $d994 : $00

br_00_d995:
	nop                                                  ; $d995 : $ea
	.db $00                                                  ; $d996 : $00
	.db $12                                                  ; $d997 : $12
	php                                                  ; $d998 : $08
	.db $00                                                  ; $d999 : $00
	.db $1c                                                  ; $d99a : $1c
	.db $00                                                  ; $d99b : $00
	.db $00                                                  ; $d99c : $00
	.db $00                                                  ; $d99d : $00
	.db $0b                                                  ; $d99e : $0b
	beq br_00_d9a1                                                  ; $d99f : $f0, $00

br_00_d9a1:
	.db $00                                                  ; $d9a1 : $00
	.db $00                                                  ; $d9a2 : $00
	.db $00                                                  ; $d9a3 : $00
	.db $00                                                  ; $d9a4 : $00
	sbc ($00), y                                                  ; $d9a5 : $f1, $00
	.db $00                                                  ; $d9a7 : $00
	ora $1d1e                                                  ; $d9a8 : $0d, $1e, $1d
	.db $00                                                  ; $d9ab : $00
	.db $00                                                  ; $d9ac : $00
	.db $ff                                                  ; $d9ad : $ff
	.db $1f                                                  ; $d9ae : $1f
	.db $00                                                  ; $d9af : $00
	.db $00                                                  ; $d9b0 : $00
	.db $00                                                  ; $d9b1 : $00
	.db $03                                                  ; $d9b2 : $03
	.db $1b                                                  ; $d9b3 : $1b
	.db $00                                                  ; $d9b4 : $00
	inx                                                  ; $d9b5 : $e8
	.db $00                                                  ; $d9b6 : $00
	inc $00.w                                                  ; $d9b7 : $ee, $00, $00
	.db $00                                                  ; $d9ba : $00
	.db $00                                                  ; $d9bb : $00
	.db $00                                                  ; $d9bc : $00
	.db $ef                                                  ; $d9bd : $ef
	.db $00                                                  ; $d9be : $00
	.db $f2                                                  ; $d9bf : $f2
	.db $00                                                  ; $d9c0 : $00
	.db $00                                                  ; $d9c1 : $00
	.db $00                                                  ; $d9c2 : $00
	.db $00                                                  ; $d9c3 : $00

br_00_d9c4:
	.db $00                                                  ; $d9c4 : $00
	sbc $00.w, x                                                  ; $d9c5 : $fd, $00, $00
	.db $00                                                  ; $d9c8 : $00
	.db $00                                                  ; $d9c9 : $00
	jsr $0000                                                  ; $d9ca : $20, $00, $00
	sbc $a900                                                  ; $d9cd : $ed, $00, $a9
	ora ($8d, x)                                                  ; $d9d0 : $01, $8d
	asl $40, x                                                  ; $d9d2 : $16, $40
	nop                                                  ; $d9d4 : $ea
	nop                                                  ; $d9d5 : $ea
	lda #$00                                                  ; $d9d6 : $a9, $00
	sta JOY1                                                  ; $d9d8 : $8d, $16, $40
	ldx #$18                                                  ; $d9db : $a2, $18

br_00_d9dd:
	lda JOY1                                                  ; $d9dd : $ad, $16, $40
	ror a                                                  ; $d9e0 : $6a
	rol $a1                                                  ; $d9e1 : $26, $a1
	rol $a0                                                  ; $d9e3 : $26, $a0
	rol $9f                                                  ; $d9e5 : $26, $9f
	jsr Call_00_db2d                                                  ; $d9e7 : $20, $2d, $db
	dex                                                  ; $d9ea : $ca
	bne br_00_d9dd                                                  ; $d9eb : $d0, $f0

	lda $9f                                                  ; $d9ed : $a5, $9f
	asl a                                                  ; $d9ef : $0a
	ror $a2                                                  ; $d9f0 : $66, $a2
	asl a                                                  ; $d9f2 : $0a
	ror $a2                                                  ; $d9f3 : $66, $a2
	lsr $a2                                                  ; $d9f5 : $46, $a2
	lsr $a2                                                  ; $d9f7 : $46, $a2
	lsr $a2                                                  ; $d9f9 : $46, $a2
	lsr $a2                                                  ; $d9fb : $46, $a2
	lsr $a2                                                  ; $d9fd : $46, $a2
	lsr $a2                                                  ; $d9ff : $46, $a2
	lda $a2                                                  ; $da01 : $a5, $a2
	lda $9f                                                  ; $da03 : $a5, $9f
	and #$30                                                  ; $da05 : $29, $30
	cmp #$20                                                  ; $da07 : $c9, $20
	beq br_00_da11                                                  ; $da09 : $f0, $06

	jsr Call_00_da2a                                                  ; $da0b : $20, $2a, $da
	jmp Jump_00_da14                                                  ; $da0e : $4c, $14, $da


br_00_da11:
	jsr Call_00_da62                                                  ; $da11 : $20, $62, $da

Call_00_da14:
Jump_00_da14:
	lda #$01                                                  ; $da14 : $a9, $01
	bit $0e                                                  ; $da16 : $24, $0e
	bne br_00_da1d                                                  ; $da18 : $d0, $03

	jsr Call_00_daaa                                                  ; $da1a : $20, $aa, $da

br_00_da1d:
	lda $a0                                                  ; $da1d : $a5, $a0
	ora $a1                                                  ; $da1f : $05, $a1
	beq br_00_da29                                                  ; $da21 : $f0, $06

	lda #$00                                                  ; $da23 : $a9, $00
	sta $a3                                                  ; $da25 : $85, $a3
	sta $a4                                                  ; $da27 : $85, $a4

br_00_da29:
	rts                                                  ; $da29 : $60


Call_00_da2a:
	lda $9f                                                  ; $da2a : $a5, $9f
	and #$0f                                                  ; $da2c : $29, $0f
	bne br_00_da35                                                  ; $da2e : $d0, $05

	sta $a0                                                  ; $da30 : $85, $a0
	sta $a1                                                  ; $da32 : $85, $a1
	rts                                                  ; $da34 : $60


br_00_da35:
	lda $9f                                                  ; $da35 : $a5, $9f
	and #$03                                                  ; $da37 : $29, $03
	cmp #$01                                                  ; $da39 : $c9, $01
	beq br_00_da47                                                  ; $da3b : $f0, $0a

	cmp #$02                                                  ; $da3d : $c9, $02
	beq br_00_da45                                                  ; $da3f : $f0, $04

	lda #$00                                                  ; $da41 : $a9, $00
	beq br_00_da47                                                  ; $da43 : $f0, $02

br_00_da45:
	lda #$ff                                                  ; $da45 : $a9, $ff

br_00_da47:
	sta $a0                                                  ; $da47 : $85, $a0
	lda $9f                                                  ; $da49 : $a5, $9f
	and #$0c                                                  ; $da4b : $29, $0c
	cmp #$04                                                  ; $da4d : $c9, $04
	beq br_00_da5d                                                  ; $da4f : $f0, $0c

	cmp #$08                                                  ; $da51 : $c9, $08
	beq br_00_da59                                                  ; $da53 : $f0, $04

	lda #$00                                                  ; $da55 : $a9, $00
	beq br_00_da5f                                                  ; $da57 : $f0, $06

br_00_da59:
	lda #$ff                                                  ; $da59 : $a9, $ff
	bne br_00_da5f                                                  ; $da5b : $d0, $02

br_00_da5d:
	lda #$01                                                  ; $da5d : $a9, $01

br_00_da5f:
	sta $a1                                                  ; $da5f : $85, $a1
	rts                                                  ; $da61 : $60


Call_00_da62:
	jsr Call_00_db3b                                                  ; $da62 : $20, $3b, $db
	lda $a0                                                  ; $da65 : $a5, $a0
	and #$7f                                                  ; $da67 : $29, $7f
	sta $a0                                                  ; $da69 : $85, $a0
	lda $a1                                                  ; $da6b : $a5, $a1
	and #$7f                                                  ; $da6d : $29, $7f
	sta $a1                                                  ; $da6f : $85, $a1
	lda $9f                                                  ; $da71 : $a5, $9f
	and #$03                                                  ; $da73 : $29, $03
	beq br_00_da7b                                                  ; $da75 : $f0, $04

	cmp #$03                                                  ; $da77 : $c9, $03
	bne br_00_da81                                                  ; $da79 : $d0, $06

br_00_da7b:
	lda #$00                                                  ; $da7b : $a9, $00
	sta $a0                                                  ; $da7d : $85, $a0
	beq br_00_da8d                                                  ; $da7f : $f0, $0c

br_00_da81:
	cmp #$02                                                  ; $da81 : $c9, $02
	bne br_00_da8d                                                  ; $da83 : $d0, $08

	lda $a0                                                  ; $da85 : $a5, $a0
	eor #$ff                                                  ; $da87 : $49, $ff
	sta $a0                                                  ; $da89 : $85, $a0
	inc $a0                                                  ; $da8b : $e6, $a0

br_00_da8d:
	lda $9f                                                  ; $da8d : $a5, $9f
	and #$0c                                                  ; $da8f : $29, $0c
	beq br_00_da97                                                  ; $da91 : $f0, $04

	cmp #$0c                                                  ; $da93 : $c9, $0c
	bne br_00_da9d                                                  ; $da95 : $d0, $06

br_00_da97:
	lda #$00                                                  ; $da97 : $a9, $00
	sta $a1                                                  ; $da99 : $85, $a1
	beq br_00_daa9                                                  ; $da9b : $f0, $0c

br_00_da9d:
	cmp #$08                                                  ; $da9d : $c9, $08
	bne br_00_daa9                                                  ; $da9f : $d0, $08

	lda $a1                                                  ; $daa1 : $a5, $a1
	eor #$ff                                                  ; $daa3 : $49, $ff
	sta $a1                                                  ; $daa5 : $85, $a1
	inc $a1                                                  ; $daa7 : $e6, $a1

br_00_daa9:
	rts                                                  ; $daa9 : $60


Call_00_daaa:
	lda $a0                                                  ; $daaa : $a5, $a0
	bne br_00_dab3                                                  ; $daac : $d0, $05

	lda $a1                                                  ; $daae : $a5, $a1
	bne br_00_dab3                                                  ; $dab0 : $d0, $01

	rts                                                  ; $dab2 : $60


br_00_dab3:
	lda $a0                                                  ; $dab3 : $a5, $a0
	bmi br_00_dad0                                                  ; $dab5 : $30, $19

	lda $0207                                                  ; $dab7 : $ad, $07, $02
	clc                                                  ; $daba : $18
	adc $a0                                                  ; $dabb : $65, $a0
	sta $0207                                                  ; $dabd : $8d, $07, $02
	bcs br_00_dac9                                                  ; $dac0 : $b0, $07

	lda #$f7                                                  ; $dac2 : $a9, $f7
	cmp $0207                                                  ; $dac4 : $cd, $07, $02
	bcs br_00_dae8                                                  ; $dac7 : $b0, $1f

br_00_dac9:
	lda #$f7                                                  ; $dac9 : $a9, $f7
	sta $0207                                                  ; $dacb : $8d, $07, $02
	bne br_00_dae8                                                  ; $dace : $d0, $18

br_00_dad0:
	lda $a0                                                  ; $dad0 : $a5, $a0
	eor #$ff                                                  ; $dad2 : $49, $ff
	sta $a0                                                  ; $dad4 : $85, $a0
	inc $a0                                                  ; $dad6 : $e6, $a0
	lda $0207                                                  ; $dad8 : $ad, $07, $02
	sec                                                  ; $dadb : $38
	sbc $a0                                                  ; $dadc : $e5, $a0
	sta $0207                                                  ; $dade : $8d, $07, $02
	bcs br_00_dae8                                                  ; $dae1 : $b0, $05

	lda #$00                                                  ; $dae3 : $a9, $00
	sta $0207                                                  ; $dae5 : $8d, $07, $02

br_00_dae8:
	lda $a1                                                  ; $dae8 : $a5, $a1
	bmi br_00_db05                                                  ; $daea : $30, $19

	lda $0204                                                  ; $daec : $ad, $04, $02
	clc                                                  ; $daef : $18
	adc $a1                                                  ; $daf0 : $65, $a1
	sta $0204                                                  ; $daf2 : $8d, $04, $02
	bcs br_00_dafe                                                  ; $daf5 : $b0, $07

	lda #$ed                                                  ; $daf7 : $a9, $ed
	cmp $0204                                                  ; $daf9 : $cd, $04, $02
	bcs br_00_db1d                                                  ; $dafc : $b0, $1f

br_00_dafe:
	lda #$ed                                                  ; $dafe : $a9, $ed
	sta $0204                                                  ; $db00 : $8d, $04, $02
	bne br_00_db1d                                                  ; $db03 : $d0, $18

br_00_db05:
	lda $a1                                                  ; $db05 : $a5, $a1
	eor #$ff                                                  ; $db07 : $49, $ff
	sta $a1                                                  ; $db09 : $85, $a1
	inc $a1                                                  ; $db0b : $e6, $a1
	lda $0204                                                  ; $db0d : $ad, $04, $02
	sec                                                  ; $db10 : $38
	sbc $a1                                                  ; $db11 : $e5, $a1
	sta $0204                                                  ; $db13 : $8d, $04, $02
	bcs br_00_db1d                                                  ; $db16 : $b0, $05

	lda #$00                                                  ; $db18 : $a9, $00
	sta $0204                                                  ; $db1a : $8d, $04, $02

br_00_db1d:
	lda $0204                                                  ; $db1d : $ad, $04, $02
	clc                                                  ; $db20 : $18
	adc #$08                                                  ; $db21 : $69, $08
	sta $0208                                                  ; $db23 : $8d, $08, $02
	lda $0207                                                  ; $db26 : $ad, $07, $02
	sta $020b                                                  ; $db29 : $8d, $0b, $02
	rts                                                  ; $db2c : $60


Call_00_db2d:
	tya                                                  ; $db2d : $98
	pha                                                  ; $db2e : $48
	ldy #$19                                                  ; $db2f : $a0, $19

br_00_db31:
	nop                                                  ; $db31 : $ea
	nop                                                  ; $db32 : $ea
	nop                                                  ; $db33 : $ea
	nop                                                  ; $db34 : $ea
	dey                                                  ; $db35 : $88
	bne br_00_db31                                                  ; $db36 : $d0, $f9

	pla                                                  ; $db38 : $68
	tay                                                  ; $db39 : $a8
	rts                                                  ; $db3a : $60


Call_00_db3b:
	lda $a0                                                  ; $db3b : $a5, $a0
	sec                                                  ; $db3d : $38
	sbc #$03                                                  ; $db3e : $e9, $03
	bcc br_00_db6f                                                  ; $db40 : $90, $2d

	bcs br_00_db49                                                  ; $db42 : $b0, $05

	asl $a0                                                  ; $db44 : $06, $a0
	jmp Jump_00_db6f                                                  ; $db46 : $4c, $6f, $db


br_00_db49:
	lda $a0                                                  ; $db49 : $a5, $a0
	sec                                                  ; $db4b : $38
	sbc #$06                                                  ; $db4c : $e9, $06
	bcs br_00_db5b                                                  ; $db4e : $b0, $0b

	lda $a0                                                  ; $db50 : $a5, $a0
	asl a                                                  ; $db52 : $0a
	clc                                                  ; $db53 : $18
	adc $a0                                                  ; $db54 : $65, $a0
	sta $a0                                                  ; $db56 : $85, $a0
	jmp Jump_00_db6f                                                  ; $db58 : $4c, $6f, $db


br_00_db5b:
	lda $a0                                                  ; $db5b : $a5, $a0
	sec                                                  ; $db5d : $38
	sbc #$10                                                  ; $db5e : $e9, $10
	bcs br_00_db69                                                  ; $db60 : $b0, $07

	asl $a0                                                  ; $db62 : $06, $a0
	asl $a0                                                  ; $db64 : $06, $a0
	jmp Jump_00_db6f                                                  ; $db66 : $4c, $6f, $db


br_00_db69:
	asl $a0                                                  ; $db69 : $06, $a0
	asl $a0                                                  ; $db6b : $06, $a0
	asl $a0                                                  ; $db6d : $06, $a0

Jump_00_db6f:
br_00_db6f:
	lda $a1                                                  ; $db6f : $a5, $a1
	sec                                                  ; $db71 : $38
	sbc #$03                                                  ; $db72 : $e9, $03
	bcc br_00_dba3                                                  ; $db74 : $90, $2d

	bcs br_00_db7d                                                  ; $db76 : $b0, $05

	asl $a1                                                  ; $db78 : $06, $a1
	jmp Jump_00_dba3                                                  ; $db7a : $4c, $a3, $db


br_00_db7d:
	lda $a1                                                  ; $db7d : $a5, $a1
	sec                                                  ; $db7f : $38
	sbc #$06                                                  ; $db80 : $e9, $06
	bcs br_00_db8f                                                  ; $db82 : $b0, $0b

	lda $a1                                                  ; $db84 : $a5, $a1
	asl a                                                  ; $db86 : $0a
	clc                                                  ; $db87 : $18
	adc $a1                                                  ; $db88 : $65, $a1
	sta $a1                                                  ; $db8a : $85, $a1
	jmp Jump_00_dba3                                                  ; $db8c : $4c, $a3, $db


br_00_db8f:
	lda $a1                                                  ; $db8f : $a5, $a1
	sec                                                  ; $db91 : $38
	sbc #$10                                                  ; $db92 : $e9, $10
	bcs br_00_db9d                                                  ; $db94 : $b0, $07

	asl $a1                                                  ; $db96 : $06, $a1
	asl $a1                                                  ; $db98 : $06, $a1
	jmp Jump_00_dba3                                                  ; $db9a : $4c, $a3, $db


br_00_db9d:
	asl $a1                                                  ; $db9d : $06, $a1
	asl $a1                                                  ; $db9f : $06, $a1
	asl $a1                                                  ; $dba1 : $06, $a1

Jump_00_dba3:
br_00_dba3:
	rts                                                  ; $dba3 : $60


Call_00_dba4:
	lda #$04                                                  ; $dba4 : $a9, $04
	ora $0e                                                  ; $dba6 : $05, $0e
	sta $0e                                                  ; $dba8 : $85, $0e
	rts                                                  ; $dbaa : $60


Call_00_dbab:
	lda #$08                                                  ; $dbab : $a9, $08
	ora $0e                                                  ; $dbad : $05, $0e
	sta $0e                                                  ; $dbaf : $85, $0e
	rts                                                  ; $dbb1 : $60


Call_00_dbb2:
	lda #$f3                                                  ; $dbb2 : $a9, $f3
	and $0e                                                  ; $dbb4 : $25, $0e
	sta $0e                                                  ; $dbb6 : $85, $0e
	jsr Call_00_dc6b                                                  ; $dbb8 : $20, $6b, $dc
	rts                                                  ; $dbbb : $60


Call_00_dbbc:
	lda #$0c                                                  ; $dbbc : $a9, $0c
	bit $0e                                                  ; $dbbe : $24, $0e
	beq br_00_dc14                                                  ; $dbc0 : $f0, $52

	ldy #$00                                                  ; $dbc2 : $a0, $00
	lda ($21), y                                                  ; $dbc4 : $b1, $21
	sta $31                                                  ; $dbc6 : $85, $31
	iny                                                  ; $dbc8 : $c8
	lda ($21), y                                                  ; $dbc9 : $b1, $21
	sta $1b                                                  ; $dbcb : $85, $1b
	iny                                                  ; $dbcd : $c8
	ldx #$00                                                  ; $dbce : $a2, $00

br_00_dbd0:
	lda ($21), y                                                  ; $dbd0 : $b1, $21
	sta $32                                                  ; $dbd2 : $85, $32
	iny                                                  ; $dbd4 : $c8
	lda ($21), y                                                  ; $dbd5 : $b1, $21
	sec                                                  ; $dbd7 : $38
	sbc #$18                                                  ; $dbd8 : $e9, $18
	sta $33                                                  ; $dbda : $85, $33
	iny                                                  ; $dbdc : $c8
	lda ($21), y                                                  ; $dbdd : $b1, $21
	sta $34                                                  ; $dbdf : $85, $34
	iny                                                  ; $dbe1 : $c8
	lda ($21), y                                                  ; $dbe2 : $b1, $21
	sta $35                                                  ; $dbe4 : $85, $35
	iny                                                  ; $dbe6 : $c8
	lda $0207                                                  ; $dbe7 : $ad, $07, $02
	cmp $32                                                  ; $dbea : $c5, $32
	bcc br_00_dc0c                                                  ; $dbec : $90, $1e

	cmp $34                                                  ; $dbee : $c5, $34
	bcs br_00_dc0c                                                  ; $dbf0 : $b0, $1a

	lda $0204                                                  ; $dbf2 : $ad, $04, $02
	cmp $33                                                  ; $dbf5 : $c5, $33
	bcc br_00_dc0c                                                  ; $dbf7 : $90, $13

	cmp $35                                                  ; $dbf9 : $c5, $35
	bcs br_00_dc0c                                                  ; $dbfb : $b0, $0f

	lda $32                                                  ; $dbfd : $a5, $32
	sta $2f                                                  ; $dbff : $85, $2f
	lda $33                                                  ; $dc01 : $a5, $33
	clc                                                  ; $dc03 : $18
	adc #$18                                                  ; $dc04 : $69, $18
	sta $30                                                  ; $dc06 : $85, $30
	jsr Call_00_dc15                                                  ; $dc08 : $20, $15, $dc
	rts                                                  ; $dc0b : $60


br_00_dc0c:
	inx                                                  ; $dc0c : $e8
	cpx $31                                                  ; $dc0d : $e4, $31
	bcc br_00_dbd0                                                  ; $dc0f : $90, $bf

	jsr Call_00_dc6b                                                  ; $dc11 : $20, $6b, $dc

br_00_dc14:
	rts                                                  ; $dc14 : $60


Call_00_dc15:
	ldx #$00                                                  ; $dc15 : $a2, $00
	lda #$04                                                  ; $dc17 : $a9, $04
	bit $0e                                                  ; $dc19 : $24, $0e
	beq br_00_dc44                                                  ; $dc1b : $f0, $27

br_00_dc1d:
	lda $dc78, x                                                  ; $dc1d : $bd, $78, $dc
	clc                                                  ; $dc20 : $18
	adc $30                                                  ; $dc21 : $65, $30
	sta $0210, x                                                  ; $dc23 : $9d, $10, $02
	inx                                                  ; $dc26 : $e8
	lda $dc78, x                                                  ; $dc27 : $bd, $78, $dc
	sta $0210, x                                                  ; $dc2a : $9d, $10, $02
	inx                                                  ; $dc2d : $e8
	lda $dc78, x                                                  ; $dc2e : $bd, $78, $dc
	sta $0210, x                                                  ; $dc31 : $9d, $10, $02
	inx                                                  ; $dc34 : $e8
	lda $dc78, x                                                  ; $dc35 : $bd, $78, $dc
	clc                                                  ; $dc38 : $18
	adc $2f                                                  ; $dc39 : $65, $2f
	sta $0210, x                                                  ; $dc3b : $9d, $10, $02
	inx                                                  ; $dc3e : $e8
	cpx #$30                                                  ; $dc3f : $e0, $30
	bcc br_00_dc1d                                                  ; $dc41 : $90, $da

	rts                                                  ; $dc43 : $60


br_00_dc44:
	lda $dca8, x                                                  ; $dc44 : $bd, $a8, $dc
	clc                                                  ; $dc47 : $18
	adc $30                                                  ; $dc48 : $65, $30
	sta $0210, x                                                  ; $dc4a : $9d, $10, $02
	inx                                                  ; $dc4d : $e8
	lda $dca8, x                                                  ; $dc4e : $bd, $a8, $dc
	sta $0210, x                                                  ; $dc51 : $9d, $10, $02
	inx                                                  ; $dc54 : $e8
	lda $dca8, x                                                  ; $dc55 : $bd, $a8, $dc
	sta $0210, x                                                  ; $dc58 : $9d, $10, $02
	inx                                                  ; $dc5b : $e8
	lda $dca8, x                                                  ; $dc5c : $bd, $a8, $dc
	clc                                                  ; $dc5f : $18
	adc $2f                                                  ; $dc60 : $65, $2f
	sta $0210, x                                                  ; $dc62 : $9d, $10, $02
	inx                                                  ; $dc65 : $e8
	cpx #$30                                                  ; $dc66 : $e0, $30
	bcc br_00_dc44                                                  ; $dc68 : $90, $da

	rts                                                  ; $dc6a : $60


Call_00_dc6b:
	ldx #$00                                                  ; $dc6b : $a2, $00
	lda #$ef                                                  ; $dc6d : $a9, $ef

br_00_dc6f:
	sta $0210, x                                                  ; $dc6f : $9d, $10, $02
	inx                                                  ; $dc72 : $e8
	cpx #$30                                                  ; $dc73 : $e0, $30
	bcc br_00_dc6f                                                  ; $dc75 : $90, $f8

	rts                                                  ; $dc77 : $60


	.db $00                                                  ; $dc78 : $00
	.db $fc                                                  ; $dc79 : $fc
	jsr $0000                                                  ; $dc7a : $20, $00, $00
	.db $fc                                                  ; $dc7d : $fc
	jsr $0008                                                  ; $dc7e : $20, $08, $00
	.db $fc                                                  ; $dc81 : $fc
	jsr $0010                                                  ; $dc82 : $20, $10, $00
	.db $fc                                                  ; $dc85 : $fc
	jsr $0018                                                  ; $dc86 : $20, $18, $00
	.db $fc                                                  ; $dc89 : $fc
	jsr $0020                                                  ; $dc8a : $20, $20, $00
	.db $fc                                                  ; $dc8d : $fc
	jsr $0828                                                  ; $dc8e : $20, $28, $08
	.db $fc                                                  ; $dc91 : $fc
	jsr $0800                                                  ; $dc92 : $20, $00, $08
	.db $fc                                                  ; $dc95 : $fc
	jsr $0808                                                  ; $dc96 : $20, $08, $08
	.db $fc                                                  ; $dc99 : $fc
	jsr $0810                                                  ; $dc9a : $20, $10, $08
	.db $fc                                                  ; $dc9d : $fc
	jsr $0818                                                  ; $dc9e : $20, $18, $08
	.db $fc                                                  ; $dca1 : $fc
	jsr $0820                                                  ; $dca2 : $20, $20, $08
	.db $fc                                                  ; $dca5 : $fc
	jsr $0028                                                  ; $dca6 : $20, $28, $00
	beq br_00_dcab                                                  ; $dca9 : $f0, $00

br_00_dcab:
	.db $00                                                  ; $dcab : $00
	.db $00                                                  ; $dcac : $00
	sbc ($00), y                                                  ; $dcad : $f1, $00
	php                                                  ; $dcaf : $08
	.db $00                                                  ; $dcb0 : $00
	sbc ($00), y                                                  ; $dcb1 : $f1, $00
	bpl br_00_dcb5                                                  ; $dcb3 : $10, $00

br_00_dcb5:
	.db $f2                                                  ; $dcb5 : $f2
	.db $00                                                  ; $dcb6 : $00
	clc                                                  ; $dcb7 : $18
	php                                                  ; $dcb8 : $08
	.db $f4                                                  ; $dcb9 : $f4
	.db $00                                                  ; $dcba : $00
	.db $00                                                  ; $dcbb : $00
	php                                                  ; $dcbc : $08
	.db $f3                                                  ; $dcbd : $f3
	.db $00                                                  ; $dcbe : $00
	php                                                  ; $dcbf : $08

br_00_dcc0:
	php                                                  ; $dcc0 : $08
	.db $f3                                                  ; $dcc1 : $f3
	.db $00                                                  ; $dcc2 : $00
	bpl $08                                                  ; $dcc3 : $10, $08

br_00_dcc5:
	sbc $00, x                                                  ; $dcc5 : $f5, $00
	clc                                                  ; $dcc7 : $18
	bpl br_00_dcc0                                                  ; $dcc8 : $10, $f6

br_00_dcca:
	.db $00                                                  ; $dcca : $00
	.db $00                                                  ; $dccb : $00
	bpl br_00_dcc5                                                  ; $dccc : $10, $f7

	.db $00                                                  ; $dcce : $00
	php                                                  ; $dccf : $08
	bpl -$09                                                  ; $dcd0 : $10, $f7

	.db $00                                                  ; $dcd2 : $00
	bpl br_00_dce5                                                  ; $dcd3 : $10, $10

	sed                                                  ; $dcd5 : $f8
	.db $00                                                  ; $dcd6 : $00
	clc                                                  ; $dcd7 : $18

br_00_dcd8:
	jsr $4edd                                                  ; $dcd8 : $20, $dd, $4e
	cmp $dd6c, x                                                  ; $dcdb : $dd, $6c, $dd
	txs                                                  ; $dcde : $9a
	cmp $dddc, x                                                  ; $dcdf : $dd, $dc, $dd
	dec $e0dd, x                                                  ; $dce2 : $de, $dd, $e0

br_00_dce5:
	cmp $dde2, x                                                  ; $dce5 : $dd, $e2, $dd
	.db $7c                                                  ; $dce8 : $7c
	.db $df                                                  ; $dce9 : $df
	bpl br_00_dcca                                                  ; $dcea : $10, $de

	.db $12                                                  ; $dcec : $12
	dec $de14, x                                                  ; $dced : $de, $14, $de
	.db $42                                                  ; $dcf0 : $42
	dec $de6c, x                                                  ; $dcf1 : $de, $6c, $de
	ror $70de                                                  ; $dcf4 : $6e, $de, $70
	dec $de9e, x                                                  ; $dcf7 : $de, $9e, $de
	cpy $de                                                  ; $dcfa : $c4, $de
	nop                                                  ; $dcfc : $ea
	dec $deec, x                                                  ; $dcfd : $de, $ec, $de
	asl $df, x                                                  ; $dd00 : $16, $df
	sec                                                  ; $dd02 : $38
	.db $df                                                  ; $dd03 : $df
	sec                                                  ; $dd04 : $38
	.db $df                                                  ; $dd05 : $df
	sec                                                  ; $dd06 : $38
	.db $df                                                  ; $dd07 : $df
	sec                                                  ; $dd08 : $38
	.db $df                                                  ; $dd09 : $df
	sec                                                  ; $dd0a : $38
	.db $df                                                  ; $dd0b : $df
	sec                                                  ; $dd0c : $38
	.db $df                                                  ; $dd0d : $df
	sec                                                  ; $dd0e : $38
	.db $df                                                  ; $dd0f : $df
	sec                                                  ; $dd10 : $38

br_00_dd11:
	.db $df                                                  ; $dd11 : $df
	sec                                                  ; $dd12 : $38
	.db $df                                                  ; $dd13 : $df
	sec                                                  ; $dd14 : $38
	.db $df                                                  ; $dd15 : $df
	sec                                                  ; $dd16 : $38
	.db $df                                                  ; $dd17 : $df
	sec                                                  ; $dd18 : $38
	.db $df                                                  ; $dd19 : $df
	sec                                                  ; $dd1a : $38
	.db $df                                                  ; $dd1b : $df
	sec                                                  ; $dd1c : $38
	.db $df                                                  ; $dd1d : $df
	.db $3a                                                  ; $dd1e : $3a
	.db $df                                                  ; $dd1f : $df
	.db $0b                                                  ; $dd20 : $0b
	.db $00                                                  ; $dd21 : $00
	bpl br_00_dd44                                                  ; $dd22 : $10, $20

	rti                                                  ; $dd24 : $40


	bmi br_00_dd87                                                  ; $dd25 : $30, $60

	jsr $3090                                                  ; $dd27 : $20, $90, $30
	clv                                                  ; $dd2a : $b8
	jsr $30e0                                                  ; $dd2b : $20, $e0, $30
	bpl $60                                                  ; $dd2e : $10, $60

	sec                                                  ; $dd30 : $38
	bvs br_00_dd93                                                  ; $dd31 : $70, $60

	rts                                                  ; $dd33 : $60


	bcc $70                                                  ; $dd34 : $90, $70

	bpl br_00_dcd8                                                  ; $dd36 : $10, $a0

	sec                                                  ; $dd38 : $38
	bcs br_00_dd9b                                                  ; $dd39 : $b0, $60

	ldy #$88                                                  ; $dd3b : $a0, $88
	bcs $03                                                  ; $dd3d : $b0, $03

br_00_dd3f:
	cld                                                  ; $dd3f : $d8
	.db $33                                                  ; $dd40 : $33
	sbc $d8a8                                                  ; $dd41 : $ed, $a8, $d8

br_00_dd44:
	lda $bdeb, x                                                  ; $dd44 : $bd, $eb, $bd
	.db $db                                                  ; $dd47 : $db
	cmp $d8eb                                                  ; $dd48 : $cd, $eb, $d8
	cpx #$f4                                                  ; $dd4b : $e0, $f4
	inx                                                  ; $dd4d : $e8
	.db $07                                                  ; $dd4e : $07
	.db $00                                                  ; $dd4f : $00
	jsr $5828                                                  ; $dd50 : $20, $28, $58
	sec                                                  ; $dd53 : $38
	jsr $5840                                                  ; $dd54 : $20, $40, $58

br_00_dd57:
	bvc br_00_dd79                                                  ; $dd57 : $50, $20

	cli                                                  ; $dd59 : $58
	cli                                                  ; $dd5a : $58
	pla                                                  ; $dd5b : $68
	jsr $5878                                                  ; $dd5c : $20, $78, $58
	dey                                                  ; $dd5f : $88
	jsr $5890                                                  ; $dd60 : $20, $90, $58
	ldy #$20                                                  ; $dd63 : $a0, $20
	tay                                                  ; $dd65 : $a8
	cli                                                  ; $dd66 : $58
	clv                                                  ; $dd67 : $b8
	jsr $58c0                                                  ; $dd68 : $20, $c0, $58
	bne $0b                                                  ; $dd6b : $d0, $0b

	.db $00                                                  ; $dd6d : $00
	jsr $5828                                                  ; $dd6e : $20, $28, $58
	sec                                                  ; $dd71 : $38
	pla                                                  ; $dd72 : $68
	jsr $3098                                                  ; $dd73 : $20, $98, $30
	pla                                                  ; $dd76 : $68
	bmi br_00_dd11                                                  ; $dd77 : $30, $98

br_00_dd79:
	rti                                                  ; $dd79 : $40


	pla                                                  ; $dd7a : $68
	rti                                                  ; $dd7b : $40


	bcs $50                                                  ; $dd7c : $b0, $50

	pla                                                  ; $dd7e : $68
	bvc -$58                                                  ; $dd7f : $50, $a8

	rts                                                  ; $dd81 : $60


	jsr $5840                                                  ; $dd82 : $20, $40, $58
	bvc br_00_dda7                                                  ; $dd85 : $50, $20

br_00_dd87:
	cli                                                  ; $dd87 : $58
	cli                                                  ; $dd88 : $58
	pla                                                  ; $dd89 : $68
	jsr $5878                                                  ; $dd8a : $20, $78, $58
	dey                                                  ; $dd8d : $88
	jsr $5890                                                  ; $dd8e : $20, $90, $58
	ldy #$20                                                  ; $dd91 : $a0, $20

br_00_dd93:
	tay                                                  ; $dd93 : $a8
	cli                                                  ; $dd94 : $58
	clv                                                  ; $dd95 : $b8
	jsr $58c0                                                  ; $dd96 : $20, $c0, $58
	bne $10                                                  ; $dd99 : $d0, $10

br_00_dd9b:
	.db $00                                                  ; $dd9b : $00
	jsr $5828                                                  ; $dd9c : $20, $28, $58

br_00_dd9f:
	sec                                                  ; $dd9f : $38
	pla                                                  ; $dda0 : $68
	jsr $3098                                                  ; $dda1 : $20, $98, $30
	pla                                                  ; $dda4 : $68
	bmi br_00_dd3f                                                  ; $dda5 : $30, $98

br_00_dda7:
	rti                                                  ; $dda7 : $40


	pla                                                  ; $dda8 : $68
	rti                                                  ; $dda9 : $40


	bcs $50                                                  ; $ddaa : $b0, $50

	pla                                                  ; $ddac : $68
	bvc br_00_dd57                                                  ; $ddad : $50, $a8

br_00_ddaf:
	rts                                                  ; $ddaf : $60


	cpy #$20                                                  ; $ddb0 : $c0, $20
	sed                                                  ; $ddb2 : $f8
	bmi -$40                                                  ; $ddb3 : $30, $c0

	bmi br_00_ddaf                                                  ; $ddb5 : $30, $f8

br_00_ddb7:
	rti                                                  ; $ddb7 : $40


	cpy #$40                                                  ; $ddb8 : $c0, $40
	sed                                                  ; $ddba : $f8
	bvc -$40                                                  ; $ddbb : $50, $c0

	bvc br_00_ddb7                                                  ; $ddbd : $50, $f8

	rts                                                  ; $ddbf : $60


	cpy #$60                                                  ; $ddc0 : $c0, $60
	sed                                                  ; $ddc2 : $f8
	bvs $20                                                  ; $ddc3 : $70, $20

	rti                                                  ; $ddc5 : $40


	cli                                                  ; $ddc6 : $58
	bvc br_00_dde9                                                  ; $ddc7 : $50, $20

	cli                                                  ; $ddc9 : $58
	cli                                                  ; $ddca : $58
	pla                                                  ; $ddcb : $68
	jsr $5878                                                  ; $ddcc : $20, $78, $58
	dey                                                  ; $ddcf : $88
	jsr $5890                                                  ; $ddd0 : $20, $90, $58
	ldy #$20                                                  ; $ddd3 : $a0, $20
	tay                                                  ; $ddd5 : $a8
	cli                                                  ; $ddd6 : $58
	clv                                                  ; $ddd7 : $b8
	cpy #$70                                                  ; $ddd8 : $c0, $70
	sed                                                  ; $ddda : $f8
	.db $80                                                  ; $dddb : $80
	.db $00                                                  ; $dddc : $00
	.db $00                                                  ; $dddd : $00
	.db $00                                                  ; $ddde : $00
	.db $00                                                  ; $dddf : $00
	.db $00                                                  ; $dde0 : $00
	.db $00                                                  ; $dde1 : $00
	.db $0b                                                  ; $dde2 : $0b
	.db $00                                                  ; $dde3 : $00

br_00_dde4:
	jsr $5828                                                  ; $dde4 : $20, $28, $58
	sec                                                  ; $dde7 : $38
	pla                                                  ; $dde8 : $68

br_00_dde9:
	jsr $3098                                                  ; $dde9 : $20, $98, $30
	pla                                                  ; $ddec : $68
	bmi br_00_dd87                                                  ; $dded : $30, $98

	rti                                                  ; $ddef : $40


	pla                                                  ; $ddf0 : $68
	rti                                                  ; $ddf1 : $40


	bcs br_00_de44                                                  ; $ddf2 : $b0, $50

	pla                                                  ; $ddf4 : $68
	bvc br_00_dd9f                                                  ; $ddf5 : $50, $a8

	rts                                                  ; $ddf7 : $60


	jsr $5840                                                  ; $ddf8 : $20, $40, $58
	bvc br_00_de1d                                                  ; $ddfb : $50, $20

	cli                                                  ; $ddfd : $58
	cli                                                  ; $ddfe : $58
	pla                                                  ; $ddff : $68
	jsr $5878                                                  ; $de00 : $20, $78, $58
	dey                                                  ; $de03 : $88
	jsr $5890                                                  ; $de04 : $20, $90, $58
	ldy #$20                                                  ; $de07 : $a0, $20
	tay                                                  ; $de09 : $a8

br_00_de0a:
	cli                                                  ; $de0a : $58
	clv                                                  ; $de0b : $b8

br_00_de0c:
	jsr $58c0                                                  ; $de0c : $20, $c0, $58
	bne br_00_de11                                                  ; $de0f : $d0, $00

br_00_de11:
	.db $00                                                  ; $de11 : $00
	.db $00                                                  ; $de12 : $00
	.db $00                                                  ; $de13 : $00
	.db $0b                                                  ; $de14 : $0b
	.db $00                                                  ; $de15 : $00
	jsr $5828                                                  ; $de16 : $20, $28, $58
	sec                                                  ; $de19 : $38
	jsr $5840                                                  ; $de1a : $20, $40, $58

br_00_de1d:
	bvc $70                                                  ; $de1d : $50, $70

	sec                                                  ; $de1f : $38
	.db $9c                                                  ; $de20 : $9c
	pha                                                  ; $de21 : $48
	bvs $48                                                  ; $de22 : $70, $48

	.db $9c                                                  ; $de24 : $9c
	cli                                                  ; $de25 : $58
	bvs br_00_de80                                                  ; $de26 : $70, $58

	.db $9c                                                  ; $de28 : $9c
	pla                                                  ; $de29 : $68
	bvs $68                                                  ; $de2a : $70, $68

	.db $9c                                                  ; $de2c : $9c
	sei                                                  ; $de2d : $78
	jsr $5858                                                  ; $de2e : $20, $58, $58
	pla                                                  ; $de31 : $68
	jsr $5878                                                  ; $de32 : $20, $78, $58
	dey                                                  ; $de35 : $88
	jsr $5890                                                  ; $de36 : $20, $90, $58
	ldy #$20                                                  ; $de39 : $a0, $20
	tay                                                  ; $de3b : $a8
	cli                                                  ; $de3c : $58
	clv                                                  ; $de3d : $b8
	jsr $58c0                                                  ; $de3e : $20, $c0, $58
	bne br_00_de4d                                                  ; $de41 : $d0, $0a

	.db $00                                                  ; $de43 : $00

br_00_de44:
	jsr $5828                                                  ; $de44 : $20, $28, $58
	sec                                                  ; $de47 : $38
	jsr $5840                                                  ; $de48 : $20, $40, $58
	bvc br_00_de6d                                                  ; $de4b : $50, $20

br_00_de4d:
	cli                                                  ; $de4d : $58
	cli                                                  ; $de4e : $58
	pla                                                  ; $de4f : $68
	bvs br_00_deaa                                                  ; $de50 : $70, $58

	clv                                                  ; $de52 : $b8
	pla                                                  ; $de53 : $68
	bvs br_00_debe                                                  ; $de54 : $70, $68

	bcs br_00_ded0                                                  ; $de56 : $b0, $78

	bvs br_00_ded2                                                  ; $de58 : $70, $78

	bcs br_00_dde4                                                  ; $de5a : $b0, $88

	jsr $5878                                                  ; $de5c : $20, $78, $58
	dey                                                  ; $de5f : $88
	jsr $5890                                                  ; $de60 : $20, $90, $58
	ldy #$20                                                  ; $de63 : $a0, $20
	tay                                                  ; $de65 : $a8
	cli                                                  ; $de66 : $58
	clv                                                  ; $de67 : $b8
	jsr $58c0                                                  ; $de68 : $20, $c0, $58
	bne br_00_de6d                                                  ; $de6b : $d0, $00

br_00_de6d:
	.db $00                                                  ; $de6d : $00
	.db $00                                                  ; $de6e : $00
	.db $00                                                  ; $de6f : $00
	.db $0b                                                  ; $de70 : $0b
	.db $00                                                  ; $de71 : $00
	jsr $5828                                                  ; $de72 : $20, $28, $58
	sec                                                  ; $de75 : $38
	jsr $5840                                                  ; $de76 : $20, $40, $58
	bvc $20                                                  ; $de79 : $50, $20

	cli                                                  ; $de7b : $58
	cli                                                  ; $de7c : $58
	pla                                                  ; $de7d : $68
	bvs br_00_ded0                                                  ; $de7e : $70, $50

br_00_de80:
	clv                                                  ; $de80 : $b8
	rts                                                  ; $de81 : $60


	bvs br_00_dee4                                                  ; $de82 : $70, $60

	bcs $70                                                  ; $de84 : $b0, $70

	bvs br_00_def8                                                  ; $de86 : $70, $70

	bcs br_00_de0a                                                  ; $de88 : $b0, $80

	bvs br_00_de0c                                                  ; $de8a : $70, $80

	bcs -$70                                                  ; $de8c : $b0, $90

	jsr $5878                                                  ; $de8e : $20, $78, $58
	dey                                                  ; $de91 : $88
	jsr $5890                                                  ; $de92 : $20, $90, $58
	ldy #$20                                                  ; $de95 : $a0, $20
	tay                                                  ; $de97 : $a8
	cli                                                  ; $de98 : $58
	clv                                                  ; $de99 : $b8
	jsr $58c0                                                  ; $de9a : $20, $c0, $58
	bne $09                                                  ; $de9d : $d0, $09

	.db $00                                                  ; $de9f : $00
	jsr $5828                                                  ; $dea0 : $20, $28, $58
	sec                                                  ; $dea3 : $38
	jsr $5840                                                  ; $dea4 : $20, $40, $58
	bvc br_00_dec9                                                  ; $dea7 : $50, $20

	cli                                                  ; $dea9 : $58

br_00_deaa:
	cli                                                  ; $deaa : $58
	pla                                                  ; $deab : $68
	bvs br_00_df06                                                  ; $deac : $70, $58

	clv                                                  ; $deae : $b8
	pla                                                  ; $deaf : $68
	bvs $68                                                  ; $deb0 : $70, $68

	bcs $78                                                  ; $deb2 : $b0, $78

	jsr $5878                                                  ; $deb4 : $20, $78, $58
	dey                                                  ; $deb7 : $88
	jsr $5890                                                  ; $deb8 : $20, $90, $58
	ldy #$20                                                  ; $debb : $a0, $20
	tay                                                  ; $debd : $a8

br_00_debe:
	cli                                                  ; $debe : $58
	clv                                                  ; $debf : $b8
	jsr $58c0                                                  ; $dec0 : $20, $c0, $58
	bne $09                                                  ; $dec3 : $d0, $09

	.db $00                                                  ; $dec5 : $00
	jsr $5828                                                  ; $dec6 : $20, $28, $58

br_00_dec9:
	sec                                                  ; $dec9 : $38
	jsr $5840                                                  ; $deca : $20, $40, $58
	bvc $20                                                  ; $decd : $50, $20

	cli                                                  ; $decf : $58

br_00_ded0:
	cli                                                  ; $ded0 : $58
	pla                                                  ; $ded1 : $68

br_00_ded2:
	jsr $5878                                                  ; $ded2 : $20, $78, $58
	dey                                                  ; $ded5 : $88
	bvs $60                                                  ; $ded6 : $70, $60

	tay                                                  ; $ded8 : $a8
	bvs br_00_df4b                                                  ; $ded9 : $70, $70

	sei                                                  ; $dedb : $78
	tay                                                  ; $dedc : $a8

br_00_dedd:
	dey                                                  ; $dedd : $88
	jsr $5890                                                  ; $dede : $20, $90, $58
	ldy #$20                                                  ; $dee1 : $a0, $20
	tay                                                  ; $dee3 : $a8

br_00_dee4:
	cli                                                  ; $dee4 : $58
	clv                                                  ; $dee5 : $b8
	jsr $58c0                                                  ; $dee6 : $20, $c0, $58
	bne br_00_deeb                                                  ; $dee9 : $d0, $00

br_00_deeb:
	.db $00                                                  ; $deeb : $00
	asl a                                                  ; $deec : $0a
	.db $00                                                  ; $deed : $00
	jsr $5828                                                  ; $deee : $20, $28, $58
	sec                                                  ; $def1 : $38
	jsr $5840                                                  ; $def2 : $20, $40, $58
	bvc br_00_df17                                                  ; $def5 : $50, $20

	cli                                                  ; $def7 : $58

br_00_def8:
	cli                                                  ; $def8 : $58
	pla                                                  ; $def9 : $68
	jsr $5878                                                  ; $defa : $20, $78, $58
	dey                                                  ; $defd : $88
	bvs br_00_df68                                                  ; $defe : $70, $68

	tay                                                  ; $df00 : $a8
	sei                                                  ; $df01 : $78
	bvs $78                                                  ; $df02 : $70, $78

	tay                                                  ; $df04 : $a8
	dey                                                  ; $df05 : $88

br_00_df06:
	bvs -$78                                                  ; $df06 : $70, $88

	ldx #$98                                                  ; $df08 : $a2, $98
	jsr $5890                                                  ; $df0a : $20, $90, $58
	ldy #$20                                                  ; $df0d : $a0, $20
	tay                                                  ; $df0f : $a8
	cli                                                  ; $df10 : $58

br_00_df11:
	clv                                                  ; $df11 : $b8
	jsr $58c0                                                  ; $df12 : $20, $c0, $58
	bne br_00_df1f                                                  ; $df15 : $d0, $08

br_00_df17:
	.db $00                                                  ; $df17 : $00
	jsr $5828                                                  ; $df18 : $20, $28, $58
	sec                                                  ; $df1b : $38
	jsr $5840                                                  ; $df1c : $20, $40, $58

br_00_df1f:
	bvc br_00_df41                                                  ; $df1f : $50, $20

	cli                                                  ; $df21 : $58
	cli                                                  ; $df22 : $58

br_00_df23:
	pla                                                  ; $df23 : $68
	jsr $5878                                                  ; $df24 : $20, $78, $58
	dey                                                  ; $df27 : $88
	bvs br_00_df8a                                                  ; $df28 : $70, $60

	tay                                                  ; $df2a : $a8
	bvs br_00_df4d                                                  ; $df2b : $70, $20

	bcc br_00_df87                                                  ; $df2d : $90, $58

	ldy #$20                                                  ; $df2f : $a0, $20

br_00_df31:
	tay                                                  ; $df31 : $a8
	cli                                                  ; $df32 : $58
	clv                                                  ; $df33 : $b8
	jsr $58c0                                                  ; $df34 : $20, $c0, $58

br_00_df37:
	bne br_00_df39                                                  ; $df37 : $d0, $00

br_00_df39:
	.db $00                                                  ; $df39 : $00
	.db $0c                                                  ; $df3a : $0c
	.db $00                                                  ; $df3b : $00
	plp                                                  ; $df3c : $28
	bmi br_00_df87                                                  ; $df3d : $30, $48

	pha                                                  ; $df3f : $48
	cli                                                  ; $df40 : $58

br_00_df41:
	bmi br_00_dfbb                                                  ; $df41 : $30, $78

	pha                                                  ; $df43 : $48
	dey                                                  ; $df44 : $88
	bmi -$58                                                  ; $df45 : $30, $a8

	pha                                                  ; $df47 : $48
	clv                                                  ; $df48 : $b8
	bmi br_00_df23                                                  ; $df49 : $30, $d8

br_00_df4b:
	pha                                                  ; $df4b : $48
	plp                                                  ; $df4c : $28

br_00_df4d:
	cli                                                  ; $df4d : $58
	pha                                                  ; $df4e : $48
	bvs br_00_dfa9                                                  ; $df4f : $70, $58

	cli                                                  ; $df51 : $58
	sei                                                  ; $df52 : $78
	bvs br_00_dedd                                                  ; $df53 : $70, $88

	cli                                                  ; $df55 : $58
	tay                                                  ; $df56 : $a8
	bvs br_00_df11                                                  ; $df57 : $70, $b8

	cli                                                  ; $df59 : $58
	cld                                                  ; $df5a : $d8
	bvs br_00_df85                                                  ; $df5b : $70, $28

	.db $80                                                  ; $df5d : $80
	pha                                                  ; $df5e : $48
	tya                                                  ; $df5f : $98
	cli                                                  ; $df60 : $58
	.db $80                                                  ; $df61 : $80
	sei                                                  ; $df62 : $78
	tya                                                  ; $df63 : $98
	dey                                                  ; $df64 : $88

br_00_df65:
	.db $80                                                  ; $df65 : $80
	tay                                                  ; $df66 : $a8
	tya                                                  ; $df67 : $98

br_00_df68:
	clv                                                  ; $df68 : $b8
	.db $80                                                  ; $df69 : $80
	cld                                                  ; $df6a : $d8
	tya                                                  ; $df6b : $98
	plp                                                  ; $df6c : $28
	tay                                                  ; $df6d : $a8
	pha                                                  ; $df6e : $48
	cpy #$58                                                  ; $df6f : $c0, $58
	tay                                                  ; $df71 : $a8
	sei                                                  ; $df72 : $78
	cpy #$88                                                  ; $df73 : $c0, $88
	tay                                                  ; $df75 : $a8
	tay                                                  ; $df76 : $a8
	cpy #$b8                                                  ; $df77 : $c0, $b8
	tay                                                  ; $df79 : $a8
	cld                                                  ; $df7a : $d8
	cpy #$03                                                  ; $df7b : $c0, $03
	.db $00                                                  ; $df7d : $00
	plp                                                  ; $df7e : $28
	bmi $48                                                  ; $df7f : $30, $48

	pha                                                  ; $df81 : $48
	cli                                                  ; $df82 : $58
	bmi br_00_dffd                                                  ; $df83 : $30, $78

br_00_df85:
	pha                                                  ; $df85 : $48
	dey                                                  ; $df86 : $88

br_00_df87:
	bmi br_00_df31                                                  ; $df87 : $30, $a8

	pha                                                  ; $df89 : $48

br_00_df8a:
	clv                                                  ; $df8a : $b8
	bmi br_00_df65                                                  ; $df8b : $30, $d8

	pha                                                  ; $df8d : $48
	plp                                                  ; $df8e : $28
	cli                                                  ; $df8f : $58
	pha                                                  ; $df90 : $48
	bvs br_00_dfeb                                                  ; $df91 : $70, $58

	cli                                                  ; $df93 : $58
	sei                                                  ; $df94 : $78
	bvs br_00_df37                                                  ; $df95 : $70, $a0

	.db $00                                                  ; $df97 : $00
	lda ($1f), y                                                  ; $df98 : $b1, $1f
	sta $36                                                  ; $df9a : $85, $36
	iny                                                  ; $df9c : $c8
	lda ($1f), y                                                  ; $df9d : $b1, $1f
	sta $1b                                                  ; $df9f : $85, $1b
	iny                                                  ; $dfa1 : $c8
	ldx #$00                                                  ; $dfa2 : $a2, $00

br_00_dfa4:
	lda ($1f), y                                                  ; $dfa4 : $b1, $1f
	sta $37                                                  ; $dfa6 : $85, $37
	iny                                                  ; $dfa8 : $c8

br_00_dfa9:
	lda ($1f), y                                                  ; $dfa9 : $b1, $1f
	sta $38                                                  ; $dfab : $85, $38
	iny                                                  ; $dfad : $c8
	lda ($1f), y                                                  ; $dfae : $b1, $1f
	sta $39                                                  ; $dfb0 : $85, $39
	iny                                                  ; $dfb2 : $c8
	lda ($1f), y                                                  ; $dfb3 : $b1, $1f
	sta $3a                                                  ; $dfb5 : $85, $3a
	iny                                                  ; $dfb7 : $c8
	lda $0207                                                  ; $dfb8 : $ad, $07, $02

br_00_dfbb:
	cmp $37                                                  ; $dfbb : $c5, $37
	bcc br_00_dfd8                                                  ; $dfbd : $90, $19

	cmp $39                                                  ; $dfbf : $c5, $39
	bcs br_00_dfd8                                                  ; $dfc1 : $b0, $15

	lda $0204                                                  ; $dfc3 : $ad, $04, $02
	cmp $38                                                  ; $dfc6 : $c5, $38
	bcc br_00_dfd8                                                  ; $dfc8 : $90, $0e

	cmp $3a                                                  ; $dfca : $c5, $3a
	bcs br_00_dfd8                                                  ; $dfcc : $b0, $0a

	lda ($1f), y                                                  ; $dfce : $b1, $1f
	cmp #$ff                                                  ; $dfd0 : $c9, $ff
	beq br_00_dfde                                                  ; $dfd2 : $f0, $0a

	sta $1c                                                  ; $dfd4 : $85, $1c
	clc                                                  ; $dfd6 : $18

br_00_dfd7:
	rts                                                  ; $dfd7 : $60


br_00_dfd8:
	iny                                                  ; $dfd8 : $c8
	inx                                                  ; $dfd9 : $e8
	cpx $36                                                  ; $dfda : $e4, $36
	bcc br_00_dfa4                                                  ; $dfdc : $90, $c6

br_00_dfde:
	sec                                                  ; $dfde : $38
	rts                                                  ; $dfdf : $60


	.db $32                                                  ; $dfe0 : $32
	cpx #$70                                                  ; $dfe1 : $e0, $70
	cpx #$9a                                                  ; $dfe3 : $e0, $9a
	cpx #$d8                                                  ; $dfe5 : $e0, $d8
	cpx #$2f                                                  ; $dfe7 : $e0, $2f
	sbc ($36, x)                                                  ; $dfe9 : $e1, $36

br_00_dfeb:
	sbc ($c4, x)                                                  ; $dfeb : $e1, $c4
	sbc ($cb, x)                                                  ; $dfed : $e1, $cb
	sbc ($5f, x)                                                  ; $dfef : $e1, $5f
	cpx $09                                                  ; $dff1 : $e4, $09
	.db $e2                                                  ; $dff3 : $e2
	bpl br_00_dfd8                                                  ; $dff4 : $10, $e2

	.db $17                                                  ; $dff6 : $17
	.db $e2                                                  ; $dff7 : $e2
	eor $e2, x                                                  ; $dff8 : $55, $e2
	stx $95e2                                                  ; $dffa : $8e, $e2, $95

br_00_dffd:
	.db $e2                                                  ; $dffd : $e2
	.db $9c                                                  ; $dffe : $9c
	.db $e2                                                  ; $dfff : $e2
	.db $da                                                  ; $e000 : $da
	.db $e2                                                  ; $e001 : $e2
	asl $42e3                                                  ; $e002 : $0e, $e3, $42
	.db $e3                                                  ; $e005 : $e3
	eor #$e3                                                  ; $e006 : $49, $e3
	.db $82                                                  ; $e008 : $82
	.db $e3                                                  ; $e009 : $e3
	lda ($e3), y                                                  ; $e00a : $b1, $e3
	clv                                                  ; $e00c : $b8
	.db $e3                                                  ; $e00d : $e3
	cmp #$e3                                                  ; $e00e : $c9, $e3
	cpx $e3                                                  ; $e010 : $e4, $e3
	.db $eb                                                  ; $e012 : $eb
	.db $e3                                                  ; $e013 : $e3
	.db $f2                                                  ; $e014 : $f2
	.db $e3                                                  ; $e015 : $e3
	sbc $e3.w, y                                                  ; $e016 : $f9, $e3, $00
	cpx $07                                                  ; $e019 : $e4, $07
	cpx $0e                                                  ; $e01b : $e4, $0e
	cpx $15                                                  ; $e01d : $e4, $15
	cpx $1c                                                  ; $e01f : $e4, $1c
	cpx $1c                                                  ; $e021 : $e4, $1c
	cpx $1c                                                  ; $e023 : $e4, $1c
	cpx $1c                                                  ; $e025 : $e4, $1c
	cpx $1c                                                  ; $e027 : $e4, $1c
	cpx $1c                                                  ; $e029 : $e4, $1c
	cpx $1c                                                  ; $e02b : $e4, $1c
	cpx $1c                                                  ; $e02d : $e4, $1c
	cpx $2b                                                  ; $e02f : $e4, $2b
	.db $f7                                                  ; $e031 : $f7
	.db $0c                                                  ; $e032 : $0c
	.db $00                                                  ; $e033 : $00
	bpl br_00_e03e                                                  ; $e034 : $10, $08

	rti                                                  ; $e036 : $40


	bmi $18                                                  ; $e037 : $30, $18

	rts                                                  ; $e039 : $60


	php                                                  ; $e03a : $08
	bcc br_00_e06d                                                  ; $e03b : $90, $30

	.db $1b                                                  ; $e03d : $1b

br_00_e03e:
	clv                                                  ; $e03e : $b8
	php                                                  ; $e03f : $08
	cpx #$30                                                  ; $e040 : $e0, $30
	php                                                  ; $e042 : $08
	bpl $48                                                  ; $e043 : $10, $48

	sec                                                  ; $e045 : $38
	bvs $19                                                  ; $e046 : $70, $19

	rts                                                  ; $e048 : $60


	pha                                                  ; $e049 : $48
	bcc $70                                                  ; $e04a : $90, $70

	.db $1c                                                  ; $e04c : $1c
	bpl br_00_dfd7                                                  ; $e04d : $10, $88

	sec                                                  ; $e04f : $38
	bcs $1a                                                  ; $e050 : $b0, $1a

	rts                                                  ; $e052 : $60


	dey                                                  ; $e053 : $88
	dey                                                  ; $e054 : $88
	bcs br_00_e07a                                                  ; $e055 : $b0, $23

	eor $6000, x                                                  ; $e057 : $5d, $00, $60
	.db $03                                                  ; $e05a : $03

br_00_e05b:
	.db $6f                                                  ; $e05b : $6f
	.db $03                                                  ; $e05c : $03
	cld                                                  ; $e05d : $d8
	.db $33                                                  ; $e05e : $33
	sbc $bd01                                                  ; $e05f : $ed, $01, $bd
	.db $db                                                  ; $e062 : $db
	cmp $1deb                                                  ; $e063 : $cd, $eb, $1d
	lda $cddb, x                                                  ; $e066 : $bd, $db, $cd
	.db $eb                                                  ; $e069 : $eb
	asl $e0d8, x                                                  ; $e06a : $1e, $d8, $e0

br_00_e06d:
	.db $f4                                                  ; $e06d : $f4
	inx                                                  ; $e06e : $e8
	.db $1f                                                  ; $e06f : $1f
	php                                                  ; $e070 : $08
	.db $00                                                  ; $e071 : $00
	jsr $5828                                                  ; $e072 : $20, $28, $58
	sec                                                  ; $e075 : $38
	.db $02                                                  ; $e076 : $02
	jsr $5840                                                  ; $e077 : $20, $40, $58

br_00_e07a:
	bvc br_00_e087                                                  ; $e07a : $50, $0b

	jsr $5858                                                  ; $e07c : $20, $58, $58

br_00_e07f:
	pla                                                  ; $e07f : $68
	.db $0c                                                  ; $e080 : $0c
	jsr $5878                                                  ; $e081 : $20, $78, $58
	dey                                                  ; $e084 : $88
	ora ($20), y                                                  ; $e085 : $11, $20

br_00_e087:
	bcc $58                                                  ; $e087 : $90, $58

	ldy #$15                                                  ; $e089 : $a0, $15
	jsr $58a8                                                  ; $e08b : $20, $a8, $58
	clv                                                  ; $e08e : $b8
	asl $20, x                                                  ; $e08f : $16, $20
	cpy #$58                                                  ; $e091 : $c0, $58
	bne br_00_e0ac                                                  ; $e093 : $d0, $17

	.db $00                                                  ; $e095 : $00
	.db $00                                                  ; $e096 : $00
	.db $ff                                                  ; $e097 : $ff
	.db $ff                                                  ; $e098 : $ff

br_00_e099:
	.db $00                                                  ; $e099 : $00
	.db $0c                                                  ; $e09a : $0c
	.db $00                                                  ; $e09b : $00
	jsr $5828                                                  ; $e09c : $20, $28, $58
	sec                                                  ; $e09f : $38
	.db $ff                                                  ; $e0a0 : $ff
	pla                                                  ; $e0a1 : $68
	jsr $3098                                                  ; $e0a2 : $20, $98, $30
	.db $03                                                  ; $e0a5 : $03
	pla                                                  ; $e0a6 : $68
	bmi -$68                                                  ; $e0a7 : $30, $98

	rti                                                  ; $e0a9 : $40


	.db $07                                                  ; $e0aa : $07
	pla                                                  ; $e0ab : $68

br_00_e0ac:
	rti                                                  ; $e0ac : $40


	bcs br_00_e0ff                                                  ; $e0ad : $b0, $50

	ora #$68                                                  ; $e0af : $09, $68
	bvc br_00_e05b                                                  ; $e0b1 : $50, $a8

	rts                                                  ; $e0b3 : $60


	.db $1a                                                  ; $e0b4 : $1a
	jsr $5840                                                  ; $e0b5 : $20, $40, $58
	bvc br_00_e0c5                                                  ; $e0b8 : $50, $0b

	jsr $5858                                                  ; $e0ba : $20, $58, $58
	pla                                                  ; $e0bd : $68
	.db $0c                                                  ; $e0be : $0c
	jsr $5878                                                  ; $e0bf : $20, $78, $58
	dey                                                  ; $e0c2 : $88
	ora ($20), y                                                  ; $e0c3 : $11, $20

br_00_e0c5:
	bcc $58                                                  ; $e0c5 : $90, $58

	ldy #$15                                                  ; $e0c7 : $a0, $15
	jsr $58a8                                                  ; $e0c9 : $20, $a8, $58
	clv                                                  ; $e0cc : $b8
	asl $20, x                                                  ; $e0cd : $16, $20
	cpy #$58                                                  ; $e0cf : $c0, $58
	bne br_00_e0ea                                                  ; $e0d1 : $d0, $17

	.db $00                                                  ; $e0d3 : $00
	.db $00                                                  ; $e0d4 : $00
	.db $ff                                                  ; $e0d5 : $ff
	.db $ff                                                  ; $e0d6 : $ff
	.db $00                                                  ; $e0d7 : $00
	ora ($00), y                                                  ; $e0d8 : $11, $00
	jsr $5828                                                  ; $e0da : $20, $28, $58
	sec                                                  ; $e0dd : $38
	.db $ff                                                  ; $e0de : $ff
	pla                                                  ; $e0df : $68
	jsr $3098                                                  ; $e0e0 : $20, $98, $30
	.db $ff                                                  ; $e0e3 : $ff
	pla                                                  ; $e0e4 : $68
	bmi br_00_e07f                                                  ; $e0e5 : $30, $98

	rti                                                  ; $e0e7 : $40


	.db $07                                                  ; $e0e8 : $07
	pla                                                  ; $e0e9 : $68

br_00_e0ea:
	rti                                                  ; $e0ea : $40


	bcs $50                                                  ; $e0eb : $b0, $50

	ora #$68                                                  ; $e0ed : $09, $68
	bvc br_00_e099                                                  ; $e0ef : $50, $a8

	rts                                                  ; $e0f1 : $60


	.db $1a                                                  ; $e0f2 : $1a
	cpy #$20                                                  ; $e0f3 : $c0, $20
	sed                                                  ; $e0f5 : $f8
	bmi br_00_e0fc                                                  ; $e0f6 : $30, $04

	cpy #$30                                                  ; $e0f8 : $c0, $30
	sed                                                  ; $e0fa : $f8
	rti                                                  ; $e0fb : $40


br_00_e0fc:
	ora $c0                                                  ; $e0fc : $05, $c0
	rti                                                  ; $e0fe : $40


br_00_e0ff:
	sed                                                  ; $e0ff : $f8
	bvc $06                                                  ; $e100 : $50, $06

	cpy #$50                                                  ; $e102 : $c0, $50
	sed                                                  ; $e104 : $f8
	rts                                                  ; $e105 : $60


	.db $23                                                  ; $e106 : $23
	cpy #$60                                                  ; $e107 : $c0, $60
	sed                                                  ; $e109 : $f8
	bvs br_00_e114                                                  ; $e10a : $70, $08

	jsr $5840                                                  ; $e10c : $20, $40, $58
	bvc br_00_e11c                                                  ; $e10f : $50, $0b

	jsr $5858                                                  ; $e111 : $20, $58, $58

br_00_e114:
	pla                                                  ; $e114 : $68
	.db $0c                                                  ; $e115 : $0c
	jsr $5878                                                  ; $e116 : $20, $78, $58
	dey                                                  ; $e119 : $88
	ora ($20), y                                                  ; $e11a : $11, $20

br_00_e11c:
	bcc br_00_e176                                                  ; $e11c : $90, $58

	ldy #$15                                                  ; $e11e : $a0, $15

br_00_e120:
	jsr $58a8                                                  ; $e120 : $20, $a8, $58
	clv                                                  ; $e123 : $b8
	asl $c0, x                                                  ; $e124 : $16, $c0
	bvs br_00_e120                                                  ; $e126 : $70, $f8

	.db $80                                                  ; $e128 : $80
	and $00                                                  ; $e129 : $25, $00
	.db $00                                                  ; $e12b : $00
	.db $ff                                                  ; $e12c : $ff
	.db $ff                                                  ; $e12d : $ff
	.db $00                                                  ; $e12e : $00
	ora ($00, x)                                                  ; $e12f : $01, $00
	cmp $07, x                                                  ; $e131 : $d5, $07

br_00_e133:
	.db $e3                                                  ; $e133 : $e3
	.db $13                                                  ; $e134 : $13
	.db $00                                                  ; $e135 : $00
	.db $1c                                                  ; $e136 : $1c
	.db $00                                                  ; $e137 : $00
	and $6745, y                                                  ; $e138 : $39, $45, $67
	eor $710d, y                                                  ; $e13b : $59, $0d, $71
	eor $9f                                                  ; $e13e : $45, $9f
	eor $a91a, y                                                  ; $e140 : $59, $1a, $a9
	eor $d7                                                  ; $e143 : $45, $d7
	eor $101b, y                                                  ; $e145 : $59, $1b, $10
	rts                                                  ; $e148 : $60


	and $1673                                                  ; $e149 : $2d, $73, $16
	and $5560, y                                                  ; $e14c : $39, $60, $55
	.db $73                                                  ; $e14f : $73
	.db $07                                                  ; $e150 : $07
	eor $7560, y                                                  ; $e151 : $59, $60, $75
	.db $73                                                  ; $e154 : $73
	php                                                  ; $e155 : $08
	adc $9560, y                                                  ; $e156 : $79, $60, $95
	.db $73                                                  ; $e159 : $73
	ora #$99                                                  ; $e15a : $09, $99
	rts                                                  ; $e15c : $60


	lda $73, x                                                  ; $e15d : $b5, $73
	ora ($10), y                                                  ; $e15f : $11, $10
	sei                                                  ; $e161 : $78
	and $178b                                                  ; $e162 : $2d, $8b, $17
	and $5578, y                                                  ; $e165 : $39, $78, $55
	.db $8b                                                  ; $e168 : $8b
	.db $04                                                  ; $e169 : $04
	eor $7578, y                                                  ; $e16a : $59, $78, $75
	.db $8b                                                  ; $e16d : $8b
	ora $79                                                  ; $e16e : $05, $79
	sei                                                  ; $e170 : $78
	sta $8b, x                                                  ; $e171 : $95, $8b
	asl $99                                                  ; $e173 : $06, $99
	sei                                                  ; $e175 : $78

br_00_e176:
	lda $8b, x                                                  ; $e176 : $b5, $8b
	bpl br_00_e133                                                  ; $e178 : $10, $b9

	sei                                                  ; $e17a : $78
	cmp $148b, x                                                  ; $e17b : $dd, $8b, $14
	bpl -$70                                                  ; $e17e : $10, $90

	and $18a3                                                  ; $e180 : $2d, $a3, $18
	and $5590, y                                                  ; $e183 : $39, $90, $55
	.db $a3                                                  ; $e186 : $a3
	ora ($59, x)                                                  ; $e187 : $01, $59

br_00_e189:
	bcc br_00_e200                                                  ; $e189 : $90, $75

	.db $a3                                                  ; $e18b : $a3

br_00_e18c:
	.db $02                                                  ; $e18c : $02
	adc $9590, y                                                  ; $e18d : $79, $90, $95
	.db $a3                                                  ; $e190 : $a3
	.db $03                                                  ; $e191 : $03
	sta $b590, y                                                  ; $e192 : $99, $90, $b5
	.db $a3                                                  ; $e195 : $a3
	.db $0f                                                  ; $e196 : $0f
	lda $dd90, y                                                  ; $e197 : $b9, $90, $dd
	.db $a3                                                  ; $e19a : $a3
	ora $10, x                                                  ; $e19b : $15, $10
	tay                                                  ; $e19d : $a8
	and $19bb                                                  ; $e19e : $2d, $bb, $19
	and $55a8, y                                                  ; $e1a1 : $39, $a8, $55
	.db $bb                                                  ; $e1a4 : $bb
	.db $00                                                  ; $e1a5 : $00
	eor $75a8, y                                                  ; $e1a6 : $59, $a8, $75
	.db $bb                                                  ; $e1a9 : $bb
	.db $0b                                                  ; $e1aa : $0b
	adc $95a8, y                                                  ; $e1ab : $79, $a8, $95
	.db $bb                                                  ; $e1ae : $bb
	asl a                                                  ; $e1af : $0a
	sta $b5a8, y                                                  ; $e1b0 : $99, $a8, $b5
	.db $bb                                                  ; $e1b3 : $bb
	asl $a8b9                                                  ; $e1b4 : $0e, $b9, $a8
	cmp $12bb, x                                                  ; $e1b7 : $dd, $bb, $12
	.db $d2                                                  ; $e1ba : $d2
	.db $07                                                  ; $e1bb : $07
	cpx #$13                                                  ; $e1bc : $e0, $13
	.db $1c                                                  ; $e1be : $1c
	beq br_00_e189                                                  ; $e1bf : $f0, $c8

	.db $f7                                                  ; $e1c1 : $f7
	.db $cf                                                  ; $e1c2 : $cf
	ora $01.w, x                                                  ; $e1c3 : $1d, $01, $00
	.db $e3                                                  ; $e1c6 : $e3
	.db $07                                                  ; $e1c7 : $07
	sbc ($13), y                                                  ; $e1c8 : $f1, $13
	.db $00                                                  ; $e1ca : $00
	.db $0c                                                  ; $e1cb : $0c
	.db $00                                                  ; $e1cc : $00
	jsr $5828                                                  ; $e1cd : $20, $28, $58
	sec                                                  ; $e1d0 : $38
	.db $ff                                                  ; $e1d1 : $ff
	pla                                                  ; $e1d2 : $68
	jsr $3098                                                  ; $e1d3 : $20, $98, $30
	.db $03                                                  ; $e1d6 : $03
	pla                                                  ; $e1d7 : $68
	bmi -$68                                                  ; $e1d8 : $30, $98

	rti                                                  ; $e1da : $40


	.db $ff                                                  ; $e1db : $ff
	pla                                                  ; $e1dc : $68
	rti                                                  ; $e1dd : $40


	bcs br_00_e230                                                  ; $e1de : $b0, $50

	ora #$68                                                  ; $e1e0 : $09, $68
	bvc br_00_e18c                                                  ; $e1e2 : $50, $a8

	rts                                                  ; $e1e4 : $60


	.db $1a                                                  ; $e1e5 : $1a
	jsr $5840                                                  ; $e1e6 : $20, $40, $58
	bvc br_00_e1f6                                                  ; $e1e9 : $50, $0b

	jsr $5858                                                  ; $e1eb : $20, $58, $58
	pla                                                  ; $e1ee : $68
	.db $0c                                                  ; $e1ef : $0c
	jsr $5878                                                  ; $e1f0 : $20, $78, $58
	dey                                                  ; $e1f3 : $88
	ora ($20), y                                                  ; $e1f4 : $11, $20

br_00_e1f6:
	bcc br_00_e250                                                  ; $e1f6 : $90, $58

	ldy #$15                                                  ; $e1f8 : $a0, $15
	jsr $58a8                                                  ; $e1fa : $20, $a8, $58
	clv                                                  ; $e1fd : $b8
	asl $20, x                                                  ; $e1fe : $16, $20

br_00_e200:
	cpy #$58                                                  ; $e200 : $c0, $58
	bne $17                                                  ; $e202 : $d0, $17

	.db $00                                                  ; $e204 : $00
	.db $00                                                  ; $e205 : $00
	.db $ff                                                  ; $e206 : $ff
	.db $ff                                                  ; $e207 : $ff
	.db $00                                                  ; $e208 : $00
	ora ($00, x)                                                  ; $e209 : $01, $00
	sbc ($08, x)                                                  ; $e20b : $e1, $08
	inc $12.w                                                  ; $e20d : $ee, $12, $00
	ora ($00, x)                                                  ; $e210 : $01, $00
	.db $00                                                  ; $e212 : $00
	.db $00                                                  ; $e213 : $00
	.db $ff                                                  ; $e214 : $ff
	.db $ff                                                  ; $e215 : $ff
	.db $00                                                  ; $e216 : $00
	.db $0c                                                  ; $e217 : $0c
	.db $00                                                  ; $e218 : $00
	jsr $5828                                                  ; $e219 : $20, $28, $58
	sec                                                  ; $e21c : $38
	.db $02                                                  ; $e21d : $02
	jsr $5840                                                  ; $e21e : $20, $40, $58
	bvc -$01                                                  ; $e221 : $50, $ff

	bvs $38                                                  ; $e223 : $70, $38

	.db $9c                                                  ; $e225 : $9c
	pha                                                  ; $e226 : $48
	.db $ff                                                  ; $e227 : $ff
	bvs br_00_e272                                                  ; $e228 : $70, $48

	.db $9c                                                  ; $e22a : $9c
	cli                                                  ; $e22b : $58
	.db $ff                                                  ; $e22c : $ff
	bvs br_00_e287                                                  ; $e22d : $70, $58

	.db $9c                                                  ; $e22f : $9c

br_00_e230:
	pla                                                  ; $e230 : $68
	.db $ff                                                  ; $e231 : $ff
	bvs br_00_e29c                                                  ; $e232 : $70, $68

	.db $9c                                                  ; $e234 : $9c
	sei                                                  ; $e235 : $78
	.db $ff                                                  ; $e236 : $ff
	jsr $5858                                                  ; $e237 : $20, $58, $58
	pla                                                  ; $e23a : $68

br_00_e23b:
	.db $0c                                                  ; $e23b : $0c
	jsr $5878                                                  ; $e23c : $20, $78, $58
	dey                                                  ; $e23f : $88
	ora ($20), y                                                  ; $e240 : $11, $20
	bcc br_00_e29c                                                  ; $e242 : $90, $58

	ldy #$15                                                  ; $e244 : $a0, $15
	jsr $58a8                                                  ; $e246 : $20, $a8, $58
	clv                                                  ; $e249 : $b8
	asl $20, x                                                  ; $e24a : $16, $20
	cpy #$58                                                  ; $e24c : $c0, $58
	bne $17                                                  ; $e24e : $d0, $17

br_00_e250:
	.db $00                                                  ; $e250 : $00
	.db $00                                                  ; $e251 : $00
	.db $ff                                                  ; $e252 : $ff
	.db $ff                                                  ; $e253 : $ff
	.db $00                                                  ; $e254 : $00
	.db $0b                                                  ; $e255 : $0b
	.db $00                                                  ; $e256 : $00
	jsr $5828                                                  ; $e257 : $20, $28, $58
	sec                                                  ; $e25a : $38
	.db $02                                                  ; $e25b : $02
	jsr $5840                                                  ; $e25c : $20, $40, $58
	bvc $0b                                                  ; $e25f : $50, $0b

	jsr $5858                                                  ; $e261 : $20, $58, $58
	pla                                                  ; $e264 : $68
	.db $ff                                                  ; $e265 : $ff
	bvs br_00_e2c0                                                  ; $e266 : $70, $58

	clv                                                  ; $e268 : $b8
	pla                                                  ; $e269 : $68
	ora $6870                                                  ; $e26a : $0d, $70, $68
	bcs $78                                                  ; $e26d : $b0, $78

	asl $7870                                                  ; $e26f : $0e, $70, $78

br_00_e272:
	bcs -$78                                                  ; $e272 : $b0, $88

	bpl $20                                                  ; $e274 : $10, $20

	sei                                                  ; $e276 : $78
	cli                                                  ; $e277 : $58
	dey                                                  ; $e278 : $88
	ora ($20), y                                                  ; $e279 : $11, $20
	bcc br_00_e2d5                                                  ; $e27b : $90, $58

	ldy #$15                                                  ; $e27d : $a0, $15
	jsr $58a8                                                  ; $e27f : $20, $a8, $58
	clv                                                  ; $e282 : $b8
	asl $20, x                                                  ; $e283 : $16, $20
	cpy #$58                                                  ; $e285 : $c0, $58

br_00_e287:
	bne $17                                                  ; $e287 : $d0, $17

	.db $00                                                  ; $e289 : $00
	.db $00                                                  ; $e28a : $00
	.db $ff                                                  ; $e28b : $ff
	.db $ff                                                  ; $e28c : $ff
	.db $00                                                  ; $e28d : $00
	ora ($00, x)                                                  ; $e28e : $01, $00
	.db $da                                                  ; $e290 : $da
	php                                                  ; $e291 : $08
	inc $12.w                                                  ; $e292 : $ee, $12, $00
	ora ($00, x)                                                  ; $e295 : $01, $00
	.db $da                                                  ; $e297 : $da
	php                                                  ; $e298 : $08
	inc $12.w                                                  ; $e299 : $ee, $12, $00

br_00_e29c:
	.db $0c                                                  ; $e29c : $0c
	.db $00                                                  ; $e29d : $00
	jsr $5828                                                  ; $e29e : $20, $28, $58
	sec                                                  ; $e2a1 : $38
	.db $02                                                  ; $e2a2 : $02
	jsr $5840                                                  ; $e2a3 : $20, $40, $58
	bvc $0b                                                  ; $e2a6 : $50, $0b

	jsr $5858                                                  ; $e2a8 : $20, $58, $58
	pla                                                  ; $e2ab : $68
	.db $ff                                                  ; $e2ac : $ff
	bvs br_00_e2ff                                                  ; $e2ad : $70, $50

	clv                                                  ; $e2af : $b8
	rts                                                  ; $e2b0 : $60


	ora $6070                                                  ; $e2b1 : $0d, $70, $60
	bcs br_00_e326                                                  ; $e2b4 : $b0, $70

	asl $7070                                                  ; $e2b6 : $0e, $70, $70
	bcs br_00_e23b                                                  ; $e2b9 : $b0, $80

	.db $ff                                                  ; $e2bb : $ff
	bvs -$80                                                  ; $e2bc : $70, $80

	bcs br_00_e250                                                  ; $e2be : $b0, $90

br_00_e2c0:
	bpl $20                                                  ; $e2c0 : $10, $20

	sei                                                  ; $e2c2 : $78
	cli                                                  ; $e2c3 : $58
	dey                                                  ; $e2c4 : $88
	ora ($20), y                                                  ; $e2c5 : $11, $20
	bcc $58                                                  ; $e2c7 : $90, $58

	ldy #$15                                                  ; $e2c9 : $a0, $15
	jsr $58a8                                                  ; $e2cb : $20, $a8, $58
	clv                                                  ; $e2ce : $b8
	asl $20, x                                                  ; $e2cf : $16, $20
	cpy #$58                                                  ; $e2d1 : $c0, $58
	bne $17                                                  ; $e2d3 : $d0, $17

br_00_e2d5:
	.db $00                                                  ; $e2d5 : $00
	.db $00                                                  ; $e2d6 : $00
	.db $ff                                                  ; $e2d7 : $ff
	.db $ff                                                  ; $e2d8 : $ff
	.db $00                                                  ; $e2d9 : $00
	asl a                                                  ; $e2da : $0a
	.db $00                                                  ; $e2db : $00
	jsr $5828                                                  ; $e2dc : $20, $28, $58
	sec                                                  ; $e2df : $38
	.db $02                                                  ; $e2e0 : $02
	jsr $5840                                                  ; $e2e1 : $20, $40, $58
	bvc $0b                                                  ; $e2e4 : $50, $0b

	jsr $5858                                                  ; $e2e6 : $20, $58, $58
	pla                                                  ; $e2e9 : $68
	.db $ff                                                  ; $e2ea : $ff
	bvs br_00_e345                                                  ; $e2eb : $70, $58

	clv                                                  ; $e2ed : $b8
	pla                                                  ; $e2ee : $68
	ora $6870                                                  ; $e2ef : $0d, $70, $68
	bcs $78                                                  ; $e2f2 : $b0, $78

	asl $7820                                                  ; $e2f4 : $0e, $20, $78
	cli                                                  ; $e2f7 : $58
	dey                                                  ; $e2f8 : $88
	ora ($20), y                                                  ; $e2f9 : $11, $20
	bcc br_00_e355                                                  ; $e2fb : $90, $58

	ldy #$15                                                  ; $e2fd : $a0, $15

br_00_e2ff:
	jsr $58a8                                                  ; $e2ff : $20, $a8, $58
	clv                                                  ; $e302 : $b8
	asl $20, x                                                  ; $e303 : $16, $20
	cpy #$58                                                  ; $e305 : $c0, $58
	bne $17                                                  ; $e307 : $d0, $17

	.db $00                                                  ; $e309 : $00
	.db $00                                                  ; $e30a : $00
	.db $ff                                                  ; $e30b : $ff
	.db $ff                                                  ; $e30c : $ff
	.db $00                                                  ; $e30d : $00
	asl a                                                  ; $e30e : $0a
	.db $00                                                  ; $e30f : $00
	jsr $5828                                                  ; $e310 : $20, $28, $58
	sec                                                  ; $e313 : $38
	.db $02                                                  ; $e314 : $02
	jsr $5840                                                  ; $e315 : $20, $40, $58
	bvc $0b                                                  ; $e318 : $50, $0b

	jsr $5858                                                  ; $e31a : $20, $58, $58
	pla                                                  ; $e31d : $68
	.db $0c                                                  ; $e31e : $0c
	jsr $5878                                                  ; $e31f : $20, $78, $58
	dey                                                  ; $e322 : $88
	.db $ff                                                  ; $e323 : $ff
	bvs $60                                                  ; $e324 : $70, $60

br_00_e326:
	tay                                                  ; $e326 : $a8
	bvs br_00_e33b                                                  ; $e327 : $70, $12

	bvs $78                                                  ; $e329 : $70, $78

	tay                                                  ; $e32b : $a8
	dey                                                  ; $e32c : $88
	.db $14                                                  ; $e32d : $14
	jsr $5890                                                  ; $e32e : $20, $90, $58
	ldy #$15                                                  ; $e331 : $a0, $15
	jsr $58a8                                                  ; $e333 : $20, $a8, $58
	clv                                                  ; $e336 : $b8
	asl $20, x                                                  ; $e337 : $16, $20
	cpy #$58                                                  ; $e339 : $c0, $58

br_00_e33b:
	bne $17                                                  ; $e33b : $d0, $17

	.db $00                                                  ; $e33d : $00
	.db $00                                                  ; $e33e : $00
	.db $ff                                                  ; $e33f : $ff
	.db $ff                                                  ; $e340 : $ff
	.db $00                                                  ; $e341 : $00
	ora ($00, x)                                                  ; $e342 : $01, $00

br_00_e344:
	.db $da                                                  ; $e344 : $da

br_00_e345:
	rol $e8                                                  ; $e345 : $26, $e8
	.db $32                                                  ; $e347 : $32
	.db $00                                                  ; $e348 : $00
	.db $0b                                                  ; $e349 : $0b
	.db $00                                                  ; $e34a : $00
	jsr $5828                                                  ; $e34b : $20, $28, $58
	sec                                                  ; $e34e : $38
	.db $02                                                  ; $e34f : $02
	jsr $5840                                                  ; $e350 : $20, $40, $58
	bvc $0b                                                  ; $e353 : $50, $0b

br_00_e355:
	jsr $5858                                                  ; $e355 : $20, $58, $58
	pla                                                  ; $e358 : $68
	.db $0c                                                  ; $e359 : $0c
	jsr $5878                                                  ; $e35a : $20, $78, $58
	dey                                                  ; $e35d : $88
	.db $ff                                                  ; $e35e : $ff
	bvs br_00_e3c9                                                  ; $e35f : $70, $68

	tay                                                  ; $e361 : $a8
	sei                                                  ; $e362 : $78
	.db $12                                                  ; $e363 : $12
	bvs br_00_e3de                                                  ; $e364 : $70, $78

	tay                                                  ; $e366 : $a8
	dey                                                  ; $e367 : $88
	.db $ff                                                  ; $e368 : $ff
	bvs -$78                                                  ; $e369 : $70, $88

	ldx #$98                                                  ; $e36b : $a2, $98
	.db $14                                                  ; $e36d : $14
	jsr $5890                                                  ; $e36e : $20, $90, $58
	ldy #$15                                                  ; $e371 : $a0, $15
	jsr $58a8                                                  ; $e373 : $20, $a8, $58
	clv                                                  ; $e376 : $b8
	asl $20, x                                                  ; $e377 : $16, $20
	cpy #$58                                                  ; $e379 : $c0, $58
	bne $17                                                  ; $e37b : $d0, $17

	.db $00                                                  ; $e37d : $00
	.db $00                                                  ; $e37e : $00
	.db $ff                                                  ; $e37f : $ff
	.db $ff                                                  ; $e380 : $ff
	.db $00                                                  ; $e381 : $00
	ora #$00                                                  ; $e382 : $09, $00
	jsr $5828                                                  ; $e384 : $20, $28, $58
	sec                                                  ; $e387 : $38
	.db $02                                                  ; $e388 : $02
	jsr $5840                                                  ; $e389 : $20, $40, $58
	bvc $0b                                                  ; $e38c : $50, $0b

	jsr $5858                                                  ; $e38e : $20, $58, $58
	pla                                                  ; $e391 : $68
	.db $0c                                                  ; $e392 : $0c
	jsr $5878                                                  ; $e393 : $20, $78, $58
	dey                                                  ; $e396 : $88
	.db $ff                                                  ; $e397 : $ff
	bvs $60                                                  ; $e398 : $70, $60

	tay                                                  ; $e39a : $a8
	bvs br_00_e3af                                                  ; $e39b : $70, $12

	jsr $5890                                                  ; $e39d : $20, $90, $58
	ldy #$15                                                  ; $e3a0 : $a0, $15
	jsr $58a8                                                  ; $e3a2 : $20, $a8, $58
	clv                                                  ; $e3a5 : $b8
	asl $20, x                                                  ; $e3a6 : $16, $20
	cpy #$58                                                  ; $e3a8 : $c0, $58
	bne $17                                                  ; $e3aa : $d0, $17

	.db $00                                                  ; $e3ac : $00
	.db $00                                                  ; $e3ad : $00
	.db $ff                                                  ; $e3ae : $ff

br_00_e3af:
	.db $ff                                                  ; $e3af : $ff
	.db $00                                                  ; $e3b0 : $00
	ora ($00, x)                                                  ; $e3b1 : $01, $00
	cpx $07                                                  ; $e3b3 : $e4, $07
	sbc ($12), y                                                  ; $e3b5 : $f1, $12
	.db $00                                                  ; $e3b7 : $00
	.db $03                                                  ; $e3b8 : $03
	.db $00                                                  ; $e3b9 : $00
	.db $e2                                                  ; $e3ba : $e2
	.db $17                                                  ; $e3bb : $17
	beq $22                                                  ; $e3bc : $f0, $22

	.db $00                                                  ; $e3be : $00
	.db $43                                                  ; $e3bf : $43
	.db $80                                                  ; $e3c0 : $80
	txa                                                  ; $e3c1 : $8a
	bcc br_00_e344                                                  ; $e3c2 : $90, $80

	tya                                                  ; $e3c4 : $98
	.db $80                                                  ; $e3c5 : $80
	cpx #$90                                                  ; $e3c6 : $e0, $90
	.db $00                                                  ; $e3c8 : $00

br_00_e3c9:
	ora $00                                                  ; $e3c9 : $05, $00
	cld                                                  ; $e3cb : $d8
	rol $e6                                                  ; $e3cc : $26, $e6
	.db $32                                                  ; $e3ce : $32
	.db $00                                                  ; $e3cf : $00
	sec                                                  ; $e3d0 : $38
	bvc -$78                                                  ; $e3d1 : $50, $88

br_00_e3d3:
	rts                                                  ; $e3d3 : $60


	sta ($38, x)                                                  ; $e3d4 : $81, $38
	rts                                                  ; $e3d6 : $60


	ldy #$70                                                  ; $e3d7 : $a0, $70
	.db $82                                                  ; $e3d9 : $82
	rol $8874, x                                                  ; $e3da : $3e, $74, $88
	.db $83                                                  ; $e3dd : $83

br_00_e3de:
	.db $83                                                  ; $e3de : $83
	bcc br_00_e455                                                  ; $e3df : $90, $74

	.db $dc                                                  ; $e3e1 : $dc
	.db $83                                                  ; $e3e2 : $83
	.db $00                                                  ; $e3e3 : $00
	ora ($00, x)                                                  ; $e3e4 : $01, $00
	.db $e2                                                  ; $e3e6 : $e2
	php                                                  ; $e3e7 : $08
	inc $12.w                                                  ; $e3e8 : $ee, $12, $00
	ora ($00, x)                                                  ; $e3eb : $01, $00
	.db $e2                                                  ; $e3ed : $e2
	php                                                  ; $e3ee : $08
	inc $12.w                                                  ; $e3ef : $ee, $12, $00
	ora ($00, x)                                                  ; $e3f2 : $01, $00
	.db $00                                                  ; $e3f4 : $00
	.db $00                                                  ; $e3f5 : $00
	.db $ff                                                  ; $e3f6 : $ff
	.db $ff                                                  ; $e3f7 : $ff
	.db $00                                                  ; $e3f8 : $00
	ora ($00, x)                                                  ; $e3f9 : $01, $00
	.db $e2                                                  ; $e3fb : $e2
	php                                                  ; $e3fc : $08
	inc $12.w                                                  ; $e3fd : $ee, $12, $00
	ora ($00, x)                                                  ; $e400 : $01, $00
	.db $e2                                                  ; $e402 : $e2
	php                                                  ; $e403 : $08
	inc $12.w                                                  ; $e404 : $ee, $12, $00
	ora ($00, x)                                                  ; $e407 : $01, $00
	.db $00                                                  ; $e409 : $00
	.db $00                                                  ; $e40a : $00
	.db $ff                                                  ; $e40b : $ff
	.db $ff                                                  ; $e40c : $ff
	.db $00                                                  ; $e40d : $00
	ora ($00, x)                                                  ; $e40e : $01, $00
	.db $00                                                  ; $e410 : $00
	.db $00                                                  ; $e411 : $00
	.db $ff                                                  ; $e412 : $ff
	.db $ff                                                  ; $e413 : $ff
	.db $00                                                  ; $e414 : $00
	ora ($00, x)                                                  ; $e415 : $01, $00
	.db $00                                                  ; $e417 : $00
	.db $00                                                  ; $e418 : $00
	.db $ff                                                  ; $e419 : $ff
	.db $ff                                                  ; $e41a : $ff
	.db $00                                                  ; $e41b : $00
	ora $2800                                                  ; $e41c : $0d, $00, $28
	bmi br_00_e469                                                  ; $e41f : $30, $48

	pha                                                  ; $e421 : $48
	eor ($58, x)                                                  ; $e422 : $41, $58
	.db $30, $78

	pha                                                  ; $e426 : $48
	.db $42                                                  ; $e427 : $42
	dey                                                  ; $e428 : $88
	bmi br_00_e3d3                                                  ; $e429 : $30, $a8

	pha                                                  ; $e42b : $48
	.db $43                                                  ; $e42c : $43
	clv                                                  ; $e42d : $b8
	bmi -$28                                                  ; $e42e : $30, $d8

	pha                                                  ; $e430 : $48
	.db $44                                                  ; $e431 : $44
	plp                                                  ; $e432 : $28
	cli                                                  ; $e433 : $58
	pha                                                  ; $e434 : $48
	.db $70, $45

	cli                                                  ; $e437 : $58
	cli                                                  ; $e438 : $58
	sei                                                  ; $e439 : $78
	.db $70, $46

	dey                                                  ; $e43c : $88
	cli                                                  ; $e43d : $58
	tay                                                  ; $e43e : $a8
	.db $70, $47

	clv                                                  ; $e441 : $b8
	cli                                                  ; $e442 : $58
	cld                                                  ; $e443 : $d8
	.db $70, $48

	plp                                                  ; $e446 : $28
	.db $80                                                  ; $e447 : $80
	pha                                                  ; $e448 : $48
	tya                                                  ; $e449 : $98
	eor #$58                                                  ; $e44a : $49, $58
	.db $80                                                  ; $e44c : $80
	sei                                                  ; $e44d : $78
	tya                                                  ; $e44e : $98
	lsr a                                                  ; $e44f : $4a
	dey                                                  ; $e450 : $88
	.db $80                                                  ; $e451 : $80
	tay                                                  ; $e452 : $a8
	tya                                                  ; $e453 : $98
	.db $4b                                                  ; $e454 : $4b

br_00_e455:
	clv                                                  ; $e455 : $b8
	.db $80                                                  ; $e456 : $80
	cld                                                  ; $e457 : $d8
	tya                                                  ; $e458 : $98
	jmp $07e2                                                  ; $e459 : $4c, $e2, $07


	sbc ($13), y                                                  ; $e45c : $f1, $13
	.db $00                                                  ; $e45e : $00
	.db $04                                                  ; $e45f : $04
	.db $00                                                  ; $e460 : $00
	plp                                                  ; $e461 : $28
	.db $30, $48

	pha                                                  ; $e464 : $48
	eor $3058                                                  ; $e465 : $4d, $58, $30
	sei                                                  ; $e468 : $78

br_00_e469:
	pha                                                  ; $e469 : $48
	lsr $3088                                                  ; $e46a : $4e, $88, $30
	tay                                                  ; $e46d : $a8
	pha                                                  ; $e46e : $48
	.db $4f                                                  ; $e46f : $4f
	.db $e2                                                  ; $e470 : $e2
	.db $07                                                  ; $e471 : $07
	sbc ($13), y                                                  ; $e472 : $f1, $13
	.db $00                                                  ; $e474 : $00


ScreenSetupsSrcData:
	.dw Data_0_e4c7
	.dw $e4d0
	.dw $e4d9
	.dw $e4e2
	.dw $e4eb
	.dw $e4f4
	.dw $e4fb
	.dw $e502
	.dw $e5f4
	.dw $e50b
	.dw $e514
	.dw $e51d
	.dw $e526
	.dw $e52f
	.dw $e538
	.dw $e541
	.dw $e54a
	.dw $e553
	.dw $e55c
	.dw $e563
	.dw $e56c
	.dw $e575
	.dw $e57e
	.dw $e5fb
	.dw $e587
	.dw $e590
	.dw $e599
	.dw $e5a0
	.dw $e5a9
	.dw $e5b2
	.dw $e5bb
	.dw $e5c4
	.dw $e5cd
	.dw $e5d4
	.dw $e5db
	.dw $e5e2
	.dw $e5eb
	.dw $e604
	.dw $e604
	.dw $e604
	.dw $e604


Data_0_e4c7:
	.dw $8b81 ; palettes
	.dw $8000 ; 1st decomp in bank $b, to $2000 nametable
	.db $00 ; determines if a 3rd decomp is done
	.dw $81c5 ; 2nd decomp, to $1000 pattern table
	.dw $8b71 ; would be the 3rd decomp


;
	sta ($8b, x)                                                  ; $e4d0 : $81, $8b
	sta ($8b), y                                                  ; $e4d2 : $91, $8b
	ora ($26, x)                                                  ; $e4d4 : $01, $26
	stx $9520                                                  ; $e4d6 : $8e, $20, $95
	sta ($8b, x)                                                  ; $e4d9 : $81, $8b
	.db $9e                                                  ; $e4db : $9e
	.db $9b                                                  ; $e4dc : $9b
	ora ($6b, x)                                                  ; $e4dd : $01, $6b
	.db $9e                                                  ; $e4df : $9e
	jsr $8195                                                  ; $e4e0 : $20, $95, $81
	.db $8b                                                  ; $e4e3 : $8b
	lda $01a6, x                                                  ; $e4e4 : $bd, $a6, $01
	inc $a9                                                  ; $e4e7 : $e6, $a9
	ldx $b3, y                                                  ; $e4e9 : $b6, $b3
	adc ($8b), y                                                  ; $e4eb : $71, $8b
	.db $bb                                                  ; $e4ed : $bb
	tsx                                                  ; $e4ee : $ba
	ora ($de, x)                                                  ; $e4ef : $01, $de
	lda $c586, x                                                  ; $e4f1 : $bd, $86, $c5
	.db $50, $ca

	rts                                                  ; $e4f6 : $60


	dex                                                  ; $e4f7 : $ca
	.db $00                                                  ; $e4f8 : $00
	.db $92                                                  ; $e4f9 : $92
	cmp $ca50                                                  ; $e4fa : $cd, $50, $ca
	sbc $d5                                                  ; $e4fd : $e5, $d5

br_00_e4ff:
	.db $00                                                  ; $e4ff : $00
	.db $47                                                  ; $e500 : $47
	.db $d7                                                  ; $e501 : $d7
	sta ($8b, x)                                                  ; $e502 : $81, $8b
	and $e2, x                                                  ; $e504 : $35, $e2
	ora ($14, x)                                                  ; $e506 : $01, $14

br_00_e508:
	sbc $20                                                  ; $e508 : $e5, $20
	sta $00, x                                                  ; $e50a : $95, $00
	.db $80                                                  ; $e50c : $80
	bpl -$80                                                  ; $e50d : $10, $80

	ora ($09, x)                                                  ; $e50f : $01, $09
	.db $83                                                  ; $e511 : $83
	inc $638c                                                  ; $e512 : $ee, $8c, $63
	sty $73, x                                                  ; $e515 : $94, $73
	sty $01, x                                                  ; $e517 : $94, $01
	eor ($97), y                                                  ; $e519 : $51, $97
	inc $7c9f, x                                                  ; $e51b : $fe, $9f, $7c
	ldx $8c                                                  ; $e51e : $a6, $8c
	ldx $01                                                  ; $e520 : $a6, $01
	.db $5b                                                  ; $e522 : $5b
	lda #$48                                                  ; $e523 : $a9, $48
	bcs br_00_e4ff                                                  ; $e525 : $b0, $d8

	ldx $e8, y                                                  ; $e527 : $b6, $e8
	ldx $01, y                                                  ; $e529 : $b6, $01
	.db $c3                                                  ; $e52b : $c3
	lda $c1b6, y                                                  ; $e52c : $b9, $b6, $c1
	.db $e7                                                  ; $e52f : $e7
	iny                                                  ; $e530 : $c8
	.db $f7                                                  ; $e531 : $f7
	iny                                                  ; $e532 : $c8
	ora ($f4, x)                                                  ; $e533 : $01, $f4
	.db $cb                                                  ; $e535 : $cb
	.db $92                                                  ; $e536 : $92
	cmp $19, x                                                  ; $e537 : $d5, $19
	cmp $dd29, x                                                  ; $e539 : $dd, $29, $dd
	ora ($cf, x)                                                  ; $e53c : $01, $cf
	.db $df                                                  ; $e53e : $df
	and $2fe8, x                                                  ; $e53f : $3d, $e8, $2f
	inc $ee3f                                                  ; $e542 : $ee, $3f, $ee
	ora ($23, x)                                                  ; $e545 : $01, $23
	sbc ($9d), y                                                  ; $e547 : $f1, $9d
	sed                                                  ; $e549 : $f8
	.db $00                                                  ; $e54a : $00
	.db $80                                                  ; $e54b : $80
	.db $10, $80

	ora ($fc, x)                                                  ; $e54e : $01, $fc
	.db $82                                                  ; $e550 : $82

br_00_e551:
	.db $ef                                                  ; $e551 : $ef
	txa                                                  ; $e552 : $8a
	.db $7a                                                  ; $e553 : $7a
	.db $92                                                  ; $e554 : $92
	txa                                                  ; $e555 : $8a
	.db $92                                                  ; $e556 : $92
	ora ($54, x)                                                  ; $e557 : $01, $54
	sta $a5, x                                                  ; $e559 : $95, $a5
	.db $9c                                                  ; $e55b : $9c
	lda $a3, x                                                  ; $e55c : $b5, $a3
	cmp $a3                                                  ; $e55e : $c5, $a3
	.db $00                                                  ; $e560 : $00
	bne br_00_e508                                                  ; $e561 : $d0, $a5

	.db $03                                                  ; $e563 : $03
	.db $af                                                  ; $e564 : $af

br_00_e565:
	.db $13                                                  ; $e565 : $13
	.db $af                                                  ; $e566 : $af
	ora ($dd, x)                                                  ; $e567 : $01, $dd
	lda ($dd), y                                                  ; $e569 : $b1, $dd
	clv                                                  ; $e56b : $b8
	.db $df                                                  ; $e56c : $df
	.db $bf                                                  ; $e56d : $bf
	.db $ef                                                  ; $e56e : $ef
	.db $bf                                                  ; $e56f : $bf
	ora ($c1, x)                                                  ; $e570 : $01, $c1
	.db $c2                                                  ; $e572 : $c2
	.db $12                                                  ; $e573 : $12
	dex                                                  ; $e574 : $ca
	ror $8ed1, x                                                  ; $e575 : $7e, $d1, $8e
	cmp ($01), y                                                  ; $e578 : $d1, $01
	eor $d4                                                  ; $e57a : $45, $d4
	ldx $27dc                                                  ; $e57c : $ae, $dc, $27
	cpx $37                                                  ; $e57f : $e4, $37
	cpx $01                                                  ; $e581 : $e4, $01
	.db $47                                                  ; $e583 : $47
	inc $ce                                                  ; $e584 : $e6, $ce
	sbc ($00), y                                                  ; $e586 : $f1, $00
	.db $80                                                  ; $e588 : $80
	bpl -$80                                                  ; $e589 : $10, $80

	ora ($10, x)                                                  ; $e58b : $01, $10
	.db $83                                                  ; $e58d : $83
	ora ($8d, x)                                                  ; $e58e : $01, $8d
	cmp $92, x                                                  ; $e590 : $d5, $92
	sbc $92                                                  ; $e592 : $e5, $92
	ora ($95, x)                                                  ; $e594 : $01, $95
	sta $df, x                                                  ; $e596 : $95, $df
	sta $a1f7, x                                                  ; $e598 : $9d, $f7, $a1
	.db $07                                                  ; $e59b : $07
	ldx #$00                                                  ; $e59c : $a2, $00
	.db $5a                                                  ; $e59e : $5a
	ldx #$86                                                  ; $e59f : $a2, $86
	lda $96                                                  ; $e5a1 : $a5, $96
	lda $01                                                  ; $e5a3 : $a5, $01
	.db $5f                                                  ; $e5a5 : $5f
	tay                                                  ; $e5a6 : $a8
	inc $44b1                                                  ; $e5a7 : $ee, $b1, $44
	ldx $54, y                                                  ; $e5aa : $b6, $54
	ldx $01, y                                                  ; $e5ac : $b6, $01
	.db $14                                                  ; $e5ae : $14
	lda $c254, y                                                  ; $e5af : $b9, $54, $c2
	lda $cdc6, x                                                  ; $e5b2 : $bd, $c6, $cd
	dec $01                                                  ; $e5b5 : $c6, $01
	lsr $c9                                                  ; $e5b7 : $46, $c9
	sta $2dcf, x                                                  ; $e5b9 : $9d, $cf, $2d
	.db $d4                                                  ; $e5bc : $d4
	and $01d4, x                                                  ; $e5bd : $3d, $d4, $01
	txa                                                  ; $e5c0 : $8a
	dec $eb, x                                                  ; $e5c1 : $d6, $eb
	.db $da                                                  ; $e5c3 : $da
	.db $c3                                                  ; $e5c4 : $c3
	.db $e2                                                  ; $e5c5 : $e2
	.db $d3                                                  ; $e5c6 : $d3
	.db $e2                                                  ; $e5c7 : $e2
	ora ($05, x)                                                  ; $e5c8 : $01, $05
	sbc $d3                                                  ; $e5ca : $e5, $d3
	nop                                                  ; $e5cc : $ea
	.db $00                                                  ; $e5cd : $00
	.db $80                                                  ; $e5ce : $80
	bpl br_00_e551                                                  ; $e5cf : $10, $80

	.db $00                                                  ; $e5d1 : $00
	eor $8e81, y                                                  ; $e5d2 : $59, $81, $8e
	dey                                                  ; $e5d5 : $88
	.db $9e                                                  ; $e5d6 : $9e
	dey                                                  ; $e5d7 : $88
	.db $00                                                  ; $e5d8 : $00
	bpl br_00_e565                                                  ; $e5d9 : $10, $8a

	eor $6992, y                                                  ; $e5db : $59, $92, $69
	.db $92                                                  ; $e5de : $92
	.db $00                                                  ; $e5df : $00
	ldx $3d92, y                                                  ; $e5e0 : $be, $92, $3d
	sty $4d, x                                                  ; $e5e3 : $94, $4d
	sty $00, x                                                  ; $e5e5 : $94, $00
	dex                                                  ; $e5e7 : $ca
	stx $1b, y                                                  ; $e5e8 : $96, $1b
	lda ($20, x)                                                  ; $e5ea : $a1, $20
	lda $30                                                  ; $e5ec : $a5, $30
	lda $01                                                  ; $e5ee : $a5, $01
	.db $42                                                  ; $e5f0 : $42
	lda $54                                                  ; $e5f1 : $a5, $54
	lda $5e                                                  ; $e5f3 : $a5, $5e
	.db $a7                                                  ; $e5f5 : $a7
	ror $a7.w                                                  ; $e5f6 : $6e, $a7, $00
	.db $17                                                  ; $e5f9 : $17
	lda #$e7                                                  ; $e5fa : $a9, $e7
	.db $af                                                  ; $e5fc : $af
	.db $f7                                                  ; $e5fd : $f7
	.db $af                                                  ; $e5fe : $af
	ora ($40, x)                                                  ; $e5ff : $01, $40
	.db $b2                                                  ; $e601 : $b2
	inc $b9                                                  ; $e602 : $e6, $b9
	sty $f1, x                                                  ; $e604 : $94, $f1
	ldy $f1                                                  ; $e606 : $a4, $f1
	.db $00                                                  ; $e608 : $00
	.db $1f                                                  ; $e609 : $1f
	sbc $20, x                                                  ; $e60a : $f5, $20
	jsr $20ed                                                  ; $e60c : $20, $ed, $20
	rol a                                                  ; $e60f : $2a
	sbc $b620                                                  ; $e610 : $ed, $20, $b6
	cpx $0ca9                                                  ; $e613 : $ec, $a9, $0c
	sta $030b                                                  ; $e616 : $8d, $0b, $03
	lda #$0d                                                  ; $e619 : $a9, $0d
	sta $030a                                                  ; $e61b : $8d, $0a, $03
	sta $0309                                                  ; $e61e : $8d, $09, $03
	jsr Call_00_ea43                                                  ; $e621 : $20, $43, $ea

br_00_e624:
	jsr Call_00_f15d                                                  ; $e624 : $20, $5d, $f1
	lda $8f                                                  ; $e627 : $a5, $8f
	beq br_00_e63e                                                  ; $e629 : $f0, $13

	ldx #$00                                                  ; $e62b : $a2, $00

br_00_e62d:
	cmp $e928, x                                                  ; $e62d : $dd, $28, $e9
	beq br_00_e639                                                  ; $e630 : $f0, $07

	inx                                                  ; $e632 : $e8
	cpx #$1c                                                  ; $e633 : $e0, $1c
	bcc br_00_e62d                                                  ; $e635 : $90, $f6

	bcs br_00_e624                                                  ; $e637 : $b0, $eb

br_00_e639:
	stx $1c                                                  ; $e639 : $86, $1c
	jmp Jump_00_e649                                                  ; $e63b : $4c, $49, $e6


br_00_e63e:
	lda $a2                                                  ; $e63e : $a5, $a2
	cmp #$01                                                  ; $e640 : $c9, $01
	bne br_00_e624                                                  ; $e642 : $d0, $e0

	jsr $df96                                                  ; $e644 : $20, $96, $df
	bcs br_00_e624                                                  ; $e647 : $b0, $db

Jump_00_e649:
	lda $1c                                                  ; $e649 : $a5, $1c
	cmp #$1b                                                  ; $e64b : $c9, $1b
	beq br_00_e653                                                  ; $e64d : $f0, $04

	cmp #$1a                                                  ; $e64f : $c9, $1a
	bne br_00_e624                                                  ; $e651 : $d0, $d1

br_00_e653:
	jsr Call_00_ecc5                                                  ; $e653 : $20, $c5, $ec
	rts                                                  ; $e656 : $60


Call_00_e657:
	lda $14                                                  ; $e657 : $a5, $14
	pha                                                  ; $e659 : $48
	lda $15                                                  ; $e65a : $a5, $15
	pha                                                  ; $e65c : $48
	lda $12                                                  ; $e65d : $a5, $12
	sta $14                                                  ; $e65f : $85, $14
	lda $13                                                  ; $e661 : $a5, $13
	sta $15                                                  ; $e663 : $85, $15
	pla                                                  ; $e665 : $68
	sta $13                                                  ; $e666 : $85, $13
	pla                                                  ; $e668 : $68
	sta $12                                                  ; $e669 : $85, $12
	rts                                                  ; $e66b : $60


Call_00_e66c:
	tya                                                  ; $e66c : $98
	pha                                                  ; $e66d : $48
	ldx #$20                                                  ; $e66e : $a2, $20
	ldy #$00                                                  ; $e670 : $a0, $00
	sec                                                  ; $e672 : $38

br_00_e673:
	lda #$00                                                  ; $e673 : $a9, $00
	sbc ($14), y                                                  ; $e675 : $f1, $14
	bcs br_00_e67c                                                  ; $e677 : $b0, $03

	adc #$0a                                                  ; $e679 : $69, $0a
	clc                                                  ; $e67b : $18

br_00_e67c:
	sta ($14), y                                                  ; $e67c : $91, $14
	iny                                                  ; $e67e : $c8
	dex                                                  ; $e67f : $ca
	bne br_00_e673                                                  ; $e680 : $d0, $f1

	pla                                                  ; $e682 : $68
	tay                                                  ; $e683 : $a8
	rts                                                  ; $e684 : $60


Call_00_e685:
br_00_e685:
	jsr Call_00_e697                                                  ; $e685 : $20, $97, $e6
	ldy #$21                                                  ; $e688 : $a0, $21
	clc                                                  ; $e68a : $18
	lda ($14), y                                                  ; $e68b : $b1, $14
	adc #$01                                                  ; $e68d : $69, $01
	sta ($14), y                                                  ; $e68f : $91, $14
	dec $0307                                                  ; $e691 : $ce, $07, $03
	bne br_00_e685                                                  ; $e694 : $d0, $ef

	rts                                                  ; $e696 : $60


Call_00_e697:
	ldy #$00                                                  ; $e697 : $a0, $00

br_00_e699:
	iny                                                  ; $e699 : $c8
	lda ($14), y                                                  ; $e69a : $b1, $14
	dey                                                  ; $e69c : $88
	sta ($14), y                                                  ; $e69d : $91, $14
	iny                                                  ; $e69f : $c8
	cpy #$1f                                                  ; $e6a0 : $c0, $1f
	bcc br_00_e699                                                  ; $e6a2 : $90, $f5

	lda #$00                                                  ; $e6a4 : $a9, $00
	sta ($14), y                                                  ; $e6a6 : $91, $14
	rts                                                  ; $e6a8 : $60


Call_00_e6a9:
	tya                                                  ; $e6a9 : $98
	pha                                                  ; $e6aa : $48
	txa                                                  ; $e6ab : $8a
	pha                                                  ; $e6ac : $48
	ldx #$20                                                  ; $e6ad : $a2, $20

br_00_e6af:
	ldy #$1f                                                  ; $e6af : $a0, $1f
	lda ($14), y                                                  ; $e6b1 : $b1, $14
	bne br_00_e6cd                                                  ; $e6b3 : $d0, $18

	jsr Call_00_e6d2                                                  ; $e6b5 : $20, $d2, $e6
	ldy #$21                                                  ; $e6b8 : $a0, $21
	sec                                                  ; $e6ba : $38
	lda ($14), y                                                  ; $e6bb : $b1, $14
	sbc #$01                                                  ; $e6bd : $e9, $01
	sta ($14), y                                                  ; $e6bf : $91, $14
	dex                                                  ; $e6c1 : $ca
	bne br_00_e6af                                                  ; $e6c2 : $d0, $eb

	ldy #$20                                                  ; $e6c4 : $a0, $20
	lda #$00                                                  ; $e6c6 : $a9, $00
	sta ($14), y                                                  ; $e6c8 : $91, $14
	iny                                                  ; $e6ca : $c8
	sta ($14), y                                                  ; $e6cb : $91, $14

br_00_e6cd:
	pla                                                  ; $e6cd : $68
	tax                                                  ; $e6ce : $aa
	pla                                                  ; $e6cf : $68
	tay                                                  ; $e6d0 : $a8
	rts                                                  ; $e6d1 : $60


Call_00_e6d2:
	tya                                                  ; $e6d2 : $98
	pha                                                  ; $e6d3 : $48
	ldy #$1f                                                  ; $e6d4 : $a0, $1f

br_00_e6d6:
	dey                                                  ; $e6d6 : $88
	lda ($14), y                                                  ; $e6d7 : $b1, $14
	iny                                                  ; $e6d9 : $c8
	sta ($14), y                                                  ; $e6da : $91, $14
	dey                                                  ; $e6dc : $88
	bne br_00_e6d6                                                  ; $e6dd : $d0, $f7

	lda #$00                                                  ; $e6df : $a9, $00
	sta ($14), y                                                  ; $e6e1 : $91, $14
	pla                                                  ; $e6e3 : $68
	tay                                                  ; $e6e4 : $a8
	rts                                                  ; $e6e5 : $60


Call_00_e6e6:
Jump_00_e6e6:
	ldy #$21                                                  ; $e6e6 : $a0, $21
	lda ($12), y                                                  ; $e6e8 : $b1, $12
	eor #$ff                                                  ; $e6ea : $49, $ff
	sec                                                  ; $e6ec : $38
	adc ($14), y                                                  ; $e6ed : $71, $14
	beq br_00_e70d                                                  ; $e6ef : $f0, $1c

	bmi br_00_e702                                                  ; $e6f1 : $30, $0f

	sta $0307                                                  ; $e6f3 : $8d, $07, $03
	jsr Call_00_e657                                                  ; $e6f6 : $20, $57, $e6
	jsr Call_00_e685                                                  ; $e6f9 : $20, $85, $e6
	jsr Call_00_e657                                                  ; $e6fc : $20, $57, $e6
	jmp Jump_00_e70d                                                  ; $e6ff : $4c, $0d, $e7


br_00_e702:
	eor #$ff                                                  ; $e702 : $49, $ff
	sta $0307                                                  ; $e704 : $8d, $07, $03
	inc $0307                                                  ; $e707 : $ee, $07, $03
	jsr Call_00_e685                                                  ; $e70a : $20, $85, $e6

Jump_00_e70d:
br_00_e70d:
	ldy #$20                                                  ; $e70d : $a0, $20
	lda ($14), y                                                  ; $e70f : $b1, $14
	eor ($12), y                                                  ; $e711 : $51, $12
	beq br_00_e718                                                  ; $e713 : $f0, $03

	jmp Jump_00_e741                                                  ; $e715 : $4c, $41, $e7


br_00_e718:
	ldx #$20                                                  ; $e718 : $a2, $20
	ldy #$00                                                  ; $e71a : $a0, $00
	clc                                                  ; $e71c : $18

br_00_e71d:
	lda ($14), y                                                  ; $e71d : $b1, $14
	adc ($12), y                                                  ; $e71f : $71, $12
	cmp #$0a                                                  ; $e721 : $c9, $0a
	bcc br_00_e727                                                  ; $e723 : $90, $02

	sbc #$0a                                                  ; $e725 : $e9, $0a

br_00_e727:
	sta ($14), y                                                  ; $e727 : $91, $14
	iny                                                  ; $e729 : $c8
	dex                                                  ; $e72a : $ca
	bne br_00_e71d                                                  ; $e72b : $d0, $f0

	bcc br_00_e740                                                  ; $e72d : $90, $11

	lda #$01                                                  ; $e72f : $a9, $01
	sta $0307                                                  ; $e731 : $8d, $07, $03
	jsr Call_00_e685                                                  ; $e734 : $20, $85, $e6
	ldy #$1f                                                  ; $e737 : $a0, $1f
	lda #$01                                                  ; $e739 : $a9, $01
	sta ($14), y                                                  ; $e73b : $91, $14
	jsr Call_00_e764                                                  ; $e73d : $20, $64, $e7

br_00_e740:
	rts                                                  ; $e740 : $60


Jump_00_e741:
	ldx #$20                                                  ; $e741 : $a2, $20
	ldy #$00                                                  ; $e743 : $a0, $00
	sec                                                  ; $e745 : $38

br_00_e746:
	lda ($14), y                                                  ; $e746 : $b1, $14
	sbc ($12), y                                                  ; $e748 : $f1, $12
	bcs br_00_e74f                                                  ; $e74a : $b0, $03

	adc #$0a                                                  ; $e74c : $69, $0a
	clc                                                  ; $e74e : $18

br_00_e74f:
	sta ($14), y                                                  ; $e74f : $91, $14
	iny                                                  ; $e751 : $c8
	dex                                                  ; $e752 : $ca
	bne br_00_e746                                                  ; $e753 : $d0, $f1

	bcs br_00_e760                                                  ; $e755 : $b0, $09

	jsr Call_00_e66c                                                  ; $e757 : $20, $6c, $e6
	ldy #$20                                                  ; $e75a : $a0, $20
	lda ($12), y                                                  ; $e75c : $b1, $12
	sta ($14), y                                                  ; $e75e : $91, $14

br_00_e760:
	jsr Call_00_e6a9                                                  ; $e760 : $20, $a9, $e6
	rts                                                  ; $e763 : $60


Call_00_e764:
	ldy #$21                                                  ; $e764 : $a0, $21
	lda ($14), y                                                  ; $e766 : $b1, $14
	sta $0307                                                  ; $e768 : $8d, $07, $03
	bpl br_00_e775                                                  ; $e76b : $10, $08

	eor #$ff                                                  ; $e76d : $49, $ff
	sta $0307                                                  ; $e76f : $8d, $07, $03
	inc $0307                                                  ; $e772 : $ee, $07, $03

br_00_e775:
	lda $0307                                                  ; $e775 : $ad, $07, $03
	cmp #$64                                                  ; $e778 : $c9, $64
	bcc br_00_e77f                                                  ; $e77a : $90, $03

	jsr $e60b                                                  ; $e77c : $20, $0b, $e6

br_00_e77f:
	rts                                                  ; $e77f : $60


Jump_00_e780:
	ldy #$20                                                  ; $e780 : $a0, $20
	lda #$ff                                                  ; $e782 : $a9, $ff
	eor ($12), y                                                  ; $e784 : $51, $12
	sta ($12), y                                                  ; $e786 : $91, $12
	jsr Call_00_e6e6                                                  ; $e788 : $20, $e6, $e6
	ldy #$20                                                  ; $e78b : $a0, $20
	lda #$ff                                                  ; $e78d : $a9, $ff
	eor ($12), y                                                  ; $e78f : $51, $12
	sta ($12), y                                                  ; $e791 : $91, $12
	rts                                                  ; $e793 : $60


Call_00_e794:
Jump_00_e794:
	lda $14                                                  ; $e794 : $a5, $14
	pha                                                  ; $e796 : $48
	lda $15                                                  ; $e797 : $a5, $15
	pha                                                  ; $e799 : $48
	sec                                                  ; $e79a : $38
	lda $14                                                  ; $e79b : $a5, $14
	sbc #$20                                                  ; $e79d : $e9, $20
	sta $14                                                  ; $e79f : $85, $14
	lda $15                                                  ; $e7a1 : $a5, $15
	sbc #$00                                                  ; $e7a3 : $e9, $00
	sta $15                                                  ; $e7a5 : $85, $15
	ldy #$1f                                                  ; $e7a7 : $a0, $1f
	lda #$00                                                  ; $e7a9 : $a9, $00

br_00_e7ab:
	sta ($14), y                                                  ; $e7ab : $91, $14
	dey                                                  ; $e7ad : $88
	bpl br_00_e7ab                                                  ; $e7ae : $10, $fb

	iny                                                  ; $e7b0 : $c8

br_00_e7b1:
	jsr Call_00_e7fb                                                  ; $e7b1 : $20, $fb, $e7
	lda $29                                                  ; $e7b4 : $a5, $29
	beq br_00_e7bf                                                  ; $e7b6 : $f0, $07

br_00_e7b8:
	jsr Call_00_e813                                                  ; $e7b8 : $20, $13, $e8
	dec $29                                                  ; $e7bb : $c6, $29
	bne br_00_e7b8                                                  ; $e7bd : $d0, $f9

br_00_e7bf:
	iny                                                  ; $e7bf : $c8
	cpy #$20                                                  ; $e7c0 : $c0, $20
	bcc br_00_e7b1                                                  ; $e7c2 : $90, $ed

	pla                                                  ; $e7c4 : $68
	sta $15                                                  ; $e7c5 : $85, $15
	pla                                                  ; $e7c7 : $68
	sta $14                                                  ; $e7c8 : $85, $14
	ldy #$20                                                  ; $e7ca : $a0, $20
	lda ($14), y                                                  ; $e7cc : $b1, $14
	eor ($12), y                                                  ; $e7ce : $51, $12
	sta ($14), y                                                  ; $e7d0 : $91, $14
	iny                                                  ; $e7d2 : $c8
	clc                                                  ; $e7d3 : $18
	lda ($14), y                                                  ; $e7d4 : $b1, $14
	adc #$01                                                  ; $e7d6 : $69, $01
	clc                                                  ; $e7d8 : $18
	adc ($12), y                                                  ; $e7d9 : $71, $12
	sta ($14), y                                                  ; $e7db : $91, $14
	sta $0307                                                  ; $e7dd : $8d, $07, $03
	bvs br_00_e7f7                                                  ; $e7e0 : $70, $15

	bpl br_00_e7ec                                                  ; $e7e2 : $10, $08

	eor #$ff                                                  ; $e7e4 : $49, $ff
	sta $0307                                                  ; $e7e6 : $8d, $07, $03
	inc $0307                                                  ; $e7e9 : $ee, $07, $03

br_00_e7ec:
	lda $0307                                                  ; $e7ec : $ad, $07, $03
	cmp #$64                                                  ; $e7ef : $c9, $64
	bcs br_00_e7f7                                                  ; $e7f1 : $b0, $04

	jsr Call_00_e6a9                                                  ; $e7f3 : $20, $a9, $e6
	rts                                                  ; $e7f6 : $60


br_00_e7f7:
	jsr $e60b                                                  ; $e7f7 : $20, $0b, $e6
	rts                                                  ; $e7fa : $60


Call_00_e7fb:
	tya                                                  ; $e7fb : $98
	pha                                                  ; $e7fc : $48
	ldy #$3f                                                  ; $e7fd : $a0, $3f
	lda ($14), y                                                  ; $e7ff : $b1, $14
	sta $29                                                  ; $e801 : $85, $29

br_00_e803:
	dey                                                  ; $e803 : $88
	lda ($14), y                                                  ; $e804 : $b1, $14
	iny                                                  ; $e806 : $c8
	sta ($14), y                                                  ; $e807 : $91, $14
	dey                                                  ; $e809 : $88
	bne br_00_e803                                                  ; $e80a : $d0, $f7

	lda #$00                                                  ; $e80c : $a9, $00
	sta ($14), y                                                  ; $e80e : $91, $14
	pla                                                  ; $e810 : $68
	tay                                                  ; $e811 : $a8
	rts                                                  ; $e812 : $60


Call_00_e813:
	tya                                                  ; $e813 : $98
	pha                                                  ; $e814 : $48
	txa                                                  ; $e815 : $8a
	pha                                                  ; $e816 : $48
	ldx #$20                                                  ; $e817 : $a2, $20
	ldy #$00                                                  ; $e819 : $a0, $00
	clc                                                  ; $e81b : $18

br_00_e81c:
	lda ($14), y                                                  ; $e81c : $b1, $14
	adc ($12), y                                                  ; $e81e : $71, $12
	cmp #$0a                                                  ; $e820 : $c9, $0a
	bcc br_00_e826                                                  ; $e822 : $90, $02

	sbc #$0a                                                  ; $e824 : $e9, $0a

br_00_e826:
	sta ($14), y                                                  ; $e826 : $91, $14
	iny                                                  ; $e828 : $c8
	dex                                                  ; $e829 : $ca
	bne br_00_e81c                                                  ; $e82a : $d0, $f0

	ldx #$20                                                  ; $e82c : $a2, $20

br_00_e82e:
	lda ($14), y                                                  ; $e82e : $b1, $14
	adc #$00                                                  ; $e830 : $69, $00
	cmp #$0a                                                  ; $e832 : $c9, $0a
	bcc br_00_e838                                                  ; $e834 : $90, $02

	sbc #$0a                                                  ; $e836 : $e9, $0a

br_00_e838:
	sta ($14), y                                                  ; $e838 : $91, $14
	iny                                                  ; $e83a : $c8
	dex                                                  ; $e83b : $ca
	bne br_00_e82e                                                  ; $e83c : $d0, $f0

	pla                                                  ; $e83e : $68
	tax                                                  ; $e83f : $aa
	pla                                                  ; $e840 : $68
	tay                                                  ; $e841 : $a8
	rts                                                  ; $e842 : $60


Call_00_e843:
Jump_00_e843:
	ldy #$1f                                                  ; $e843 : $a0, $1f

br_00_e845:
	lda ($12), y                                                  ; $e845 : $b1, $12
	bne br_00_e84f                                                  ; $e847 : $d0, $06

	dey                                                  ; $e849 : $88
	bpl br_00_e845                                                  ; $e84a : $10, $f9

	jmp Jump_00_e8c3                                                  ; $e84c : $4c, $c3, $e8


br_00_e84f:
	sec                                                  ; $e84f : $38
	lda $14                                                  ; $e850 : $a5, $14
	sta $77                                                  ; $e852 : $85, $77
	sbc #$20                                                  ; $e854 : $e9, $20
	sta $14                                                  ; $e856 : $85, $14
	lda $15                                                  ; $e858 : $a5, $15
	sta $78                                                  ; $e85a : $85, $78
	sbc #$00                                                  ; $e85c : $e9, $00
	sta $15                                                  ; $e85e : $85, $15
	ldy #$1f                                                  ; $e860 : $a0, $1f
	lda #$00                                                  ; $e862 : $a9, $00

br_00_e864:
	sta ($14), y                                                  ; $e864 : $91, $14
	dey                                                  ; $e866 : $88
	bpl br_00_e864                                                  ; $e867 : $10, $fb

	lda #$00                                                  ; $e869 : $a9, $00
	sta $0307                                                  ; $e86b : $8d, $07, $03
	sta $29                                                  ; $e86e : $85, $29
	ldx #$20                                                  ; $e870 : $a2, $20

Jump_00_e872:
br_00_e872:
	jsr Call_00_e909                                                  ; $e872 : $20, $09, $e9
	lda $29                                                  ; $e875 : $a5, $29
	sbc #$00                                                  ; $e877 : $e9, $00
	bcc br_00_e883                                                  ; $e879 : $90, $08

	sta $29                                                  ; $e87b : $85, $29
	inc $0307                                                  ; $e87d : $ee, $07, $03
	jmp Jump_00_e872                                                  ; $e880 : $4c, $72, $e8


br_00_e883:
	jsr Call_00_e8eb                                                  ; $e883 : $20, $eb, $e8
	jsr Call_00_e7fb                                                  ; $e886 : $20, $fb, $e7
	ldy #$00                                                  ; $e889 : $a0, $00
	lda $0307                                                  ; $e88b : $ad, $07, $03
	sta ($14), y                                                  ; $e88e : $91, $14
	sty $0307                                                  ; $e890 : $8c, $07, $03
	dex                                                  ; $e893 : $ca
	bne br_00_e872                                                  ; $e894 : $d0, $dc

	jsr Call_00_e8c7                                                  ; $e896 : $20, $c7, $e8
	jsr Call_00_e6a9                                                  ; $e899 : $20, $a9, $e6
	ldy #$20                                                  ; $e89c : $a0, $20
	lda ($14), y                                                  ; $e89e : $b1, $14
	eor ($12), y                                                  ; $e8a0 : $51, $12
	sta ($14), y                                                  ; $e8a2 : $91, $14
	iny                                                  ; $e8a4 : $c8
	sec                                                  ; $e8a5 : $38
	lda ($14), y                                                  ; $e8a6 : $b1, $14
	sbc ($12), y                                                  ; $e8a8 : $f1, $12
	sta ($14), y                                                  ; $e8aa : $91, $14
	sta $0307                                                  ; $e8ac : $8d, $07, $03
	bvs br_00_e8c3                                                  ; $e8af : $70, $12

	bpl br_00_e8bb                                                  ; $e8b1 : $10, $08

	eor #$ff                                                  ; $e8b3 : $49, $ff
	sta $0307                                                  ; $e8b5 : $8d, $07, $03
	inc $0307                                                  ; $e8b8 : $ee, $07, $03

br_00_e8bb:
	lda $0307                                                  ; $e8bb : $ad, $07, $03
	cmp #$64                                                  ; $e8be : $c9, $64
	bcs br_00_e8c3                                                  ; $e8c0 : $b0, $01

	rts                                                  ; $e8c2 : $60


Jump_00_e8c3:
br_00_e8c3:
	jsr $e60b                                                  ; $e8c3 : $20, $0b, $e6
	rts                                                  ; $e8c6 : $60


Call_00_e8c7:
	lda $14                                                  ; $e8c7 : $a5, $14
	pha                                                  ; $e8c9 : $48
	lda $15                                                  ; $e8ca : $a5, $15
	pha                                                  ; $e8cc : $48
	lda $77                                                  ; $e8cd : $a5, $77
	sta $14                                                  ; $e8cf : $85, $14
	lda $78                                                  ; $e8d1 : $a5, $78
	sta $15                                                  ; $e8d3 : $85, $15
	pla                                                  ; $e8d5 : $68
	sta $78                                                  ; $e8d6 : $85, $78
	pla                                                  ; $e8d8 : $68
	sta $77                                                  ; $e8d9 : $85, $77
	ldy #$1f                                                  ; $e8db : $a0, $1f

br_00_e8dd:
	lda ($14), y                                                  ; $e8dd : $b1, $14
	pha                                                  ; $e8df : $48
	lda ($77), y                                                  ; $e8e0 : $b1, $77
	sta ($14), y                                                  ; $e8e2 : $91, $14
	pla                                                  ; $e8e4 : $68
	sta ($77), y                                                  ; $e8e5 : $91, $77
	dey                                                  ; $e8e7 : $88
	bpl br_00_e8dd                                                  ; $e8e8 : $10, $f3

	rts                                                  ; $e8ea : $60


Call_00_e8eb:
	tya                                                  ; $e8eb : $98
	pha                                                  ; $e8ec : $48
	txa                                                  ; $e8ed : $8a
	pha                                                  ; $e8ee : $48
	ldx #$20                                                  ; $e8ef : $a2, $20
	ldy #$00                                                  ; $e8f1 : $a0, $00
	clc                                                  ; $e8f3 : $18

br_00_e8f4:
	lda ($77), y                                                  ; $e8f4 : $b1, $77
	adc ($12), y                                                  ; $e8f6 : $71, $12
	cmp #$0a                                                  ; $e8f8 : $c9, $0a
	bcc br_00_e8fe                                                  ; $e8fa : $90, $02

	sbc #$0a                                                  ; $e8fc : $e9, $0a

br_00_e8fe:
	sta ($77), y                                                  ; $e8fe : $91, $77
	iny                                                  ; $e900 : $c8
	dex                                                  ; $e901 : $ca
	bne br_00_e8f4                                                  ; $e902 : $d0, $f0

	pla                                                  ; $e904 : $68
	tax                                                  ; $e905 : $aa
	pla                                                  ; $e906 : $68
	tay                                                  ; $e907 : $a8
	rts                                                  ; $e908 : $60


Call_00_e909:
	tya                                                  ; $e909 : $98
	pha                                                  ; $e90a : $48
	txa                                                  ; $e90b : $8a
	pha                                                  ; $e90c : $48
	ldx #$20                                                  ; $e90d : $a2, $20
	ldy #$00                                                  ; $e90f : $a0, $00
	sec                                                  ; $e911 : $38

br_00_e912:
	lda ($77), y                                                  ; $e912 : $b1, $77
	sbc ($12), y                                                  ; $e914 : $f1, $12
	bcs br_00_e91d                                                  ; $e916 : $b0, $05

	adc #$0a                                                  ; $e918 : $69, $0a
	and #$0f                                                  ; $e91a : $29, $0f
	clc                                                  ; $e91c : $18

br_00_e91d:
	sta ($77), y                                                  ; $e91d : $91, $77
	iny                                                  ; $e91f : $c8
	dex                                                  ; $e920 : $ca
	bne br_00_e912                                                  ; $e921 : $d0, $ef

	pla                                                  ; $e923 : $68
	tax                                                  ; $e924 : $aa
	pla                                                  ; $e925 : $68
	tay                                                  ; $e926 : $a8
	rts                                                  ; $e927 : $60


	bmi br_00_e95b                                                  ; $e928 : $30, $31

	.db $32                                                  ; $e92a : $32
	.db $33                                                  ; $e92b : $33
	.db $34                                                  ; $e92c : $34
	and $36, x                                                  ; $e92d : $35, $36
	.db $37                                                  ; $e92f : $37
	sec                                                  ; $e930 : $38
	and $f02e, y                                                  ; $e931 : $39, $2e, $f0
	beq $02                                                  ; $e934 : $f0, $02

	.db $2b                                                  ; $e936 : $2b
	and $2f2a                                                  ; $e937 : $2d, $2a, $2f
	ora $2540                                                  ; $e93a : $0d, $40, $25
	cli                                                  ; $e93d : $58
	sbc ($f2), y                                                  ; $e93e : $f1, $f2
	.db $f3                                                  ; $e940 : $f3
	.db $f4                                                  ; $e941 : $f4
	sbc $f6, x                                                  ; $e942 : $f5, $f6

Call_00_e944:
	lda #$00                                                  ; $e944 : $a9, $00
	sta PPUCTRL                                                  ; $e946 : $8d, $00, $20
	sta PPUMASK                                                  ; $e949 : $8d, $01, $20
	jsr Call_00_dbb2                                                  ; $e94c : $20, $b2, $db
	lda #$00                                                  ; $e94f : $a9, $00
	sta $11                                                  ; $e951 : $85, $11
	lda #$bb                                                  ; $e953 : $a9, $bb
	sta $14                                                  ; $e955 : $85, $14
	lda #$ef                                                  ; $e957 : $a9, $ef
	sta $15                                                  ; $e959 : $85, $15

br_00_e95b:
	jsr wDecompress                                                  ; $e95b : $20, $00, $04
	jsr Call_00_9284                                                  ; $e95e : $20, $84, $92
	jsr Call_00_929e                                                  ; $e961 : $20, $9e, $92
	jsr Call_00_ec90                                                  ; $e964 : $20, $90, $ec
	jsr Call_00_ecc5                                                  ; $e967 : $20, $c5, $ec
	jsr Call_00_ea43                                                  ; $e96a : $20, $43, $ea
	jsr Call_00_eae0                                                  ; $e96d : $20, $e0, $ea

br_00_e970:
	jsr Call_00_f429                                                  ; $e970 : $20, $29, $f4
	bcs br_00_e979                                                  ; $e973 : $b0, $04

	jsr Call_00_dba4                                                  ; $e975 : $20, $a4, $db
	rts                                                  ; $e978 : $60


br_00_e979:
	jsr Call_00_f15d                                                  ; $e979 : $20, $5d, $f1
	jsr Call_00_e9b7                                                  ; $e97c : $20, $b7, $e9
	lda $8f                                                  ; $e97f : $a5, $8f
	beq br_00_e996                                                  ; $e981 : $f0, $13

	ldx #$00                                                  ; $e983 : $a2, $00

br_00_e985:
	cmp $e928, x                                                  ; $e985 : $dd, $28, $e9
	beq br_00_e991                                                  ; $e988 : $f0, $07

	inx                                                  ; $e98a : $e8
	cpx #$1c                                                  ; $e98b : $e0, $1c
	bcc br_00_e985                                                  ; $e98d : $90, $f6

	bcs br_00_e970                                                  ; $e98f : $b0, $df

br_00_e991:
	stx $1c                                                  ; $e991 : $86, $1c
	jmp Jump_00_e9a1                                                  ; $e993 : $4c, $a1, $e9


br_00_e996:
	lda $a2                                                  ; $e996 : $a5, $a2
	cmp #$01                                                  ; $e998 : $c9, $01
	bne br_00_e970                                                  ; $e99a : $d0, $d4

	jsr $df96                                                  ; $e99c : $20, $96, $df
	bcs br_00_e970                                                  ; $e99f : $b0, $cf

Jump_00_e9a1:
	jsr Call_00_f009                                                  ; $e9a1 : $20, $09, $f0
	lda #$e9                                                  ; $e9a4 : $a9, $e9
	pha                                                  ; $e9a6 : $48
	lda #$69                                                  ; $e9a7 : $a9, $69
	pha                                                  ; $e9a9 : $48
	lda $1c                                                  ; $e9aa : $a5, $1c
	asl a                                                  ; $e9ac : $0a
	tax                                                  ; $e9ad : $aa
	lda $e9d2, x                                                  ; $e9ae : $bd, $d2, $e9
	pha                                                  ; $e9b1 : $48
	lda $e9d1, x                                                  ; $e9b2 : $bd, $d1, $e9
	pha                                                  ; $e9b5 : $48
	rts                                                  ; $e9b6 : $60


Call_00_e9b7:
	lda #$ff                                                  ; $e9b7 : $a9, $ff
	sta SND_CHN                                                  ; $e9b9 : $8d, $15, $40
	lda #$ce                                                  ; $e9bc : $a9, $ce
	sta SQ1_VOL                                                  ; $e9be : $8d, $00, $40
	lda #$e8                                                  ; $e9c1 : $a9, $e8
	sta SQ1_SWEEP                                                  ; $e9c3 : $8d, $01, $40
	lda #$c9                                                  ; $e9c6 : $a9, $c9
	sta SQ1_LO                                                  ; $e9c8 : $8d, $02, $40
	lda #$0a                                                  ; $e9cb : $a9, $0a
	sta SQ1_HI                                                  ; $e9cd : $8d, $03, $40
	rts                                                  ; $e9d0 : $60


	.db $0b                                                  ; $e9d1 : $0b
	.db $eb                                                  ; $e9d2 : $eb
	.db $0b                                                  ; $e9d3 : $0b
	.db $eb                                                  ; $e9d4 : $eb
	.db $0b                                                  ; $e9d5 : $0b
	.db $eb                                                  ; $e9d6 : $eb
	.db $0b                                                  ; $e9d7 : $0b
	.db $eb                                                  ; $e9d8 : $eb
	.db $0b                                                  ; $e9d9 : $0b
	.db $eb                                                  ; $e9da : $eb
	.db $0b                                                  ; $e9db : $0b
	.db $eb                                                  ; $e9dc : $eb
	.db $0b                                                  ; $e9dd : $0b
	.db $eb                                                  ; $e9de : $eb
	.db $0b                                                  ; $e9df : $0b
	.db $eb                                                  ; $e9e0 : $eb
	.db $0b                                                  ; $e9e1 : $0b
	.db $eb                                                  ; $e9e2 : $eb
	.db $0b                                                  ; $e9e3 : $0b
	.db $eb                                                  ; $e9e4 : $eb
	.db $0b                                                  ; $e9e5 : $0b
	.db $eb                                                  ; $e9e6 : $eb
	.db $0b                                                  ; $e9e7 : $0b
	.db $eb                                                  ; $e9e8 : $eb
	sbc $ec, x                                                  ; $e9e9 : $f5, $ec
	.db $83                                                  ; $e9eb : $83
	.db $eb                                                  ; $e9ec : $eb
	tya                                                  ; $e9ed : $98
	.db $eb                                                  ; $e9ee : $eb
	tya                                                  ; $e9ef : $98
	.db $eb                                                  ; $e9f0 : $eb
	tya                                                  ; $e9f1 : $98
	.db $eb                                                  ; $e9f2 : $eb
	tya                                                  ; $e9f3 : $98
	.db $eb                                                  ; $e9f4 : $eb
	and $ecec, x                                                  ; $e9f5 : $3d, $ec, $ec
	.db $eb                                                  ; $e9f8 : $eb
	sbc $1feb                                                  ; $e9f9 : $ed, $eb, $1f
	cpx $ec8f                                                  ; $e9fc : $ec, $8f, $ec
	.db $92                                                  ; $e9ff : $92
	cpx $ec98                                                  ; $ea00 : $ec, $98, $ec
	.db $9f                                                  ; $ea03 : $9f
	cpx $ecb5                                                  ; $ea04 : $ec, $b5, $ec
	cpy $ec                                                  ; $ea07 : $c4, $ec
	.db $dc                                                  ; $ea09 : $dc
	cpx $813d                                                  ; $ea0a : $ec, $3d, $81

Call_00_ea0d:
	lda #$04                                                  ; $ea0d : $a9, $04
	ora $0300                                                  ; $ea0f : $0d, $00, $03
	sta $0300                                                  ; $ea12 : $8d, $00, $03
	rts                                                  ; $ea15 : $60


Call_00_ea16:
	lda #$fb                                                  ; $ea16 : $a9, $fb
	and $0300                                                  ; $ea18 : $2d, $00, $03
	sta $0300                                                  ; $ea1b : $8d, $00, $03
	rts                                                  ; $ea1e : $60


Call_00_ea1f:
	lda #$01                                                  ; $ea1f : $a9, $01
	ora $0300                                                  ; $ea21 : $0d, $00, $03
	sta $0300                                                  ; $ea24 : $8d, $00, $03
	rts                                                  ; $ea27 : $60


Call_00_ea28:
	lda #$fe                                                  ; $ea28 : $a9, $fe
	and $0300                                                  ; $ea2a : $2d, $00, $03
	sta $0300                                                  ; $ea2d : $8d, $00, $03
	rts                                                  ; $ea30 : $60


Call_00_ea31:
	lda #$02                                                  ; $ea31 : $a9, $02
	ora $0300                                                  ; $ea33 : $0d, $00, $03
	sta $0300                                                  ; $ea36 : $8d, $00, $03
	rts                                                  ; $ea39 : $60


Call_00_ea3a:
	lda #$fd                                                  ; $ea3a : $a9, $fd
	and $0300                                                  ; $ea3c : $2d, $00, $03
	sta $0300                                                  ; $ea3f : $8d, $00, $03
	rts                                                  ; $ea42 : $60


Call_00_ea43:
	jsr Call_00_ea16                                                  ; $ea43 : $20, $16, $ea
	ldx #$00                                                  ; $ea46 : $a2, $00
	lda #$16                                                  ; $ea48 : $a9, $16
	sta $0700, x                                                  ; $ea4a : $9d, $00, $07
	inx                                                  ; $ea4d : $e8
	lda #$20                                                  ; $ea4e : $a9, $20
	sta $0700, x                                                  ; $ea50 : $9d, $00, $07
	inx                                                  ; $ea53 : $e8
	lda #$c4                                                  ; $ea54 : $a9, $c4
	sta $0700, x                                                  ; $ea56 : $9d, $00, $07
	inx                                                  ; $ea59 : $e8
	lda #$00                                                  ; $ea5a : $a9, $00

br_00_ea5c:
	sta $0700, x                                                  ; $ea5c : $9d, $00, $07
	inx                                                  ; $ea5f : $e8
	cpx #$1e                                                  ; $ea60 : $e0, $1e
	bcc br_00_ea5c                                                  ; $ea62 : $90, $f8

	ldx #$03                                                  ; $ea64 : $a2, $03
	ldy #$15                                                  ; $ea66 : $a0, $15

br_00_ea68:
	lda $0309, y                                                  ; $ea68 : $b9, $09, $03
	bne br_00_ea7e                                                  ; $ea6b : $d0, $11

	inx                                                  ; $ea6d : $e8
	dey                                                  ; $ea6e : $88
	bpl br_00_ea68                                                  ; $ea6f : $10, $f7

	lda #$01                                                  ; $ea71 : $a9, $01
	sta $0717                                                  ; $ea73 : $8d, $17, $07
	lda #$0b                                                  ; $ea76 : $a9, $0b
	sta $0718                                                  ; $ea78 : $8d, $18, $07
	jmp Jump_00_eadc                                                  ; $ea7b : $4c, $dc, $ea


br_00_ea7e:
	lda $0309, y                                                  ; $ea7e : $b9, $09, $03
	cmp #$0a                                                  ; $ea81 : $c9, $0a
	bne br_00_ea8e                                                  ; $ea83 : $d0, $09

	jsr Call_00_ea0d                                                  ; $ea85 : $20, $0d, $ea
	inc $06ff, x                                                  ; $ea88 : $fe, $ff, $06
	jmp Jump_00_eaac                                                  ; $ea8b : $4c, $ac, $ea


br_00_ea8e:
	cmp #$0b                                                  ; $ea8e : $c9, $0b
	bne br_00_eaac                                                  ; $ea90 : $d0, $1a

	sta $0700, x                                                  ; $ea92 : $9d, $00, $07
	inc $0700, x                                                  ; $ea95 : $fe, $00, $07
	inx                                                  ; $ea98 : $e8
	dey                                                  ; $ea99 : $88
	lda $0309, y                                                  ; $ea9a : $b9, $09, $03
	cmp #$0a                                                  ; $ea9d : $c9, $0a
	bne br_00_eaac                                                  ; $ea9f : $d0, $0b

	lda $06ff, x                                                  ; $eaa1 : $bd, $ff, $06
	sta $06fe, x                                                  ; $eaa4 : $9d, $fe, $06
	lda #$01                                                  ; $eaa7 : $a9, $01
	sta $06ff, x                                                  ; $eaa9 : $9d, $ff, $06

Jump_00_eaac:
br_00_eaac:
	lda $0309, y                                                  ; $eaac : $b9, $09, $03
	cmp #$0a                                                  ; $eaaf : $c9, $0a
	bne br_00_eab6                                                  ; $eab1 : $d0, $03

	jsr Call_00_ea0d                                                  ; $eab3 : $20, $0d, $ea

br_00_eab6:
	lda $0309, y                                                  ; $eab6 : $b9, $09, $03
	sta $0700, x                                                  ; $eab9 : $9d, $00, $07
	inc $0700, x                                                  ; $eabc : $fe, $00, $07
	inx                                                  ; $eabf : $e8
	dey                                                  ; $eac0 : $88
	bpl br_00_eaac                                                  ; $eac1 : $10, $e9

	lda #$04                                                  ; $eac3 : $a9, $04
	bit $0300                                                  ; $eac5 : $2c, $00, $03
	bne br_00_eadc                                                  ; $eac8 : $d0, $12

	ldx #$03                                                  ; $eaca : $a2, $03

br_00_eacc:
	lda $0701, x                                                  ; $eacc : $bd, $01, $07
	sta $0700, x                                                  ; $eacf : $9d, $00, $07
	inx                                                  ; $ead2 : $e8
	cpx #$19                                                  ; $ead3 : $e0, $19
	bcc br_00_eacc                                                  ; $ead5 : $90, $f5

	lda #$0b                                                  ; $ead7 : $a9, $0b
	sta $06ff, x                                                  ; $ead9 : $9d, $ff, $06

Jump_00_eadc:
br_00_eadc:
	jsr Call_00_9295                                                  ; $eadc : $20, $95, $92
	rts                                                  ; $eadf : $60


Call_00_eae0:
	ldx #$15                                                  ; $eae0 : $a2, $15

br_00_eae2:
	lda $032f, x                                                  ; $eae2 : $bd, $2f, $03
	bne br_00_eaee                                                  ; $eae5 : $d0, $07

	dex                                                  ; $eae7 : $ca
	bpl br_00_eae2                                                  ; $eae8 : $10, $f8

	lda #$46                                                  ; $eaea : $a9, $46
	bne br_00_eaf0                                                  ; $eaec : $d0, $02

br_00_eaee:
	lda #$a7                                                  ; $eaee : $a9, $a7

br_00_eaf0:
	pha                                                  ; $eaf0 : $48
	lda #$01                                                  ; $eaf1 : $a9, $01
	sta $0700                                                  ; $eaf3 : $8d, $00, $07
	lda #$21                                                  ; $eaf6 : $a9, $21
	sta $0701                                                  ; $eaf8 : $8d, $01, $07
	lda #$24                                                  ; $eafb : $a9, $24
	sta $0702                                                  ; $eafd : $8d, $02, $07
	pla                                                  ; $eb00 : $68
	sta $0703                                                  ; $eb01 : $8d, $03, $07
	lda #$00                                                  ; $eb04 : $a9, $00
	sta $0704                                                  ; $eb06 : $8d, $04, $07
	jmp Jump_00_9295                                                  ; $eb09 : $4c, $95, $92


	lda #$02                                                  ; $eb0c : $a9, $02
	bit $0300                                                  ; $eb0e : $2c, $00, $03
	beq br_00_eb19                                                  ; $eb11 : $f0, $06

	jsr Call_00_ecc5                                                  ; $eb13 : $20, $c5, $ec
	jmp Jump_00_eb23                                                  ; $eb16 : $4c, $23, $eb


br_00_eb19:
	lda #$01                                                  ; $eb19 : $a9, $01
	bit $0300                                                  ; $eb1b : $2c, $00, $03
	beq br_00_eb23                                                  ; $eb1e : $f0, $03

	jsr Call_00_ecb6                                                  ; $eb20 : $20, $b6, $ec

Jump_00_eb23:
br_00_eb23:
	ldy #$00                                                  ; $eb23 : $a0, $00
	ldx #$15                                                  ; $eb25 : $a2, $15

br_00_eb27:
	lda $0309, x                                                  ; $eb27 : $bd, $09, $03
	bne br_00_eb3b                                                  ; $eb2a : $d0, $0f

	dex                                                  ; $eb2c : $ca
	bpl br_00_eb27                                                  ; $eb2d : $10, $f8

	lda $1c                                                  ; $eb2f : $a5, $1c
	cmp #$00                                                  ; $eb31 : $c9, $00
	beq br_00_eb83                                                  ; $eb33 : $f0, $4e

	cmp #$0b                                                  ; $eb35 : $c9, $0b
	beq br_00_eb83                                                  ; $eb37 : $f0, $4a

	bne br_00_eb7b                                                  ; $eb39 : $d0, $40

br_00_eb3b:
	txa                                                  ; $eb3b : $8a
	pha                                                  ; $eb3c : $48

br_00_eb3d:
	lda $0309, x                                                  ; $eb3d : $bd, $09, $03
	cmp #$0b                                                  ; $eb40 : $c9, $0b
	beq br_00_eb49                                                  ; $eb42 : $f0, $05

	cmp #$0a                                                  ; $eb44 : $c9, $0a
	beq br_00_eb49                                                  ; $eb46 : $f0, $01

	iny                                                  ; $eb48 : $c8

br_00_eb49:
	dex                                                  ; $eb49 : $ca
	bpl br_00_eb3d                                                  ; $eb4a : $10, $f1

	pla                                                  ; $eb4c : $68
	tax                                                  ; $eb4d : $aa
	lda $1c                                                  ; $eb4e : $a5, $1c
	cmp #$0b                                                  ; $eb50 : $c9, $0b
	beq br_00_eb5e                                                  ; $eb52 : $f0, $0a

	cmp #$0a                                                  ; $eb54 : $c9, $0a
	beq br_00_eb71                                                  ; $eb56 : $f0, $19

	cpy #$10                                                  ; $eb58 : $c0, $10
	bcc br_00_eb7b                                                  ; $eb5a : $90, $1f

	bcs br_00_eb83                                                  ; $eb5c : $b0, $25

br_00_eb5e:
	lda $0309, x                                                  ; $eb5e : $bd, $09, $03
	cmp #$0b                                                  ; $eb61 : $c9, $0b
	beq br_00_eb66                                                  ; $eb63 : $f0, $01

	inx                                                  ; $eb65 : $e8

br_00_eb66:
	lda #$0b                                                  ; $eb66 : $a9, $0b
	eor $0309, x                                                  ; $eb68 : $5d, $09, $03
	sta $0309, x                                                  ; $eb6b : $9d, $09, $03
	jmp Jump_00_eb83                                                  ; $eb6e : $4c, $83, $eb


br_00_eb71:
	lda $0309, x                                                  ; $eb71 : $bd, $09, $03
	cmp #$0a                                                  ; $eb74 : $c9, $0a
	beq br_00_eb83                                                  ; $eb76 : $f0, $0b

	dex                                                  ; $eb78 : $ca
	bpl br_00_eb71                                                  ; $eb79 : $10, $f6

br_00_eb7b:
	jsr Call_00_ef98                                                  ; $eb7b : $20, $98, $ef
	lda $1c                                                  ; $eb7e : $a5, $1c
	sta $0309                                                  ; $eb80 : $8d, $09, $03

Jump_00_eb83:
br_00_eb83:
	rts                                                  ; $eb83 : $60


	lda #$01                                                  ; $eb84 : $a9, $01
	bit $0300                                                  ; $eb86 : $2c, $00, $03
	bne br_00_eb98                                                  ; $eb89 : $d0, $0d

	jsr Call_00_efa8                                                  ; $eb8b : $20, $a8, $ef
	lda $0309                                                  ; $eb8e : $ad, $09, $03
	cmp #$0b                                                  ; $eb91 : $c9, $0b
	bne br_00_eb98                                                  ; $eb93 : $d0, $03

	jsr Call_00_efa8                                                  ; $eb95 : $20, $a8, $ef

br_00_eb98:
	rts                                                  ; $eb98 : $60


	lda $1c                                                  ; $eb99 : $a5, $1c
	jsr Call_00_ebdd                                                  ; $eb9b : $20, $dd, $eb
	lda $0301                                                  ; $eb9e : $ad, $01, $03
	beq br_00_ebd0                                                  ; $eba1 : $f0, $2d

	cmp #$01                                                  ; $eba3 : $c9, $01
	beq br_00_ebbd                                                  ; $eba5 : $f0, $16

	lda #$02                                                  ; $eba7 : $a9, $02
	bit $0300                                                  ; $eba9 : $2c, $00, $03
	beq br_00_ebb7                                                  ; $ebac : $f0, $09

	dec $0301                                                  ; $ebae : $ce, $01, $03
	jsr Call_00_ea3a                                                  ; $ebb1 : $20, $3a, $ea
	jmp Jump_00_ebd9                                                  ; $ebb4 : $4c, $d9, $eb


br_00_ebb7:
	jsr Call_00_ed3a                                                  ; $ebb7 : $20, $3a, $ed
	jmp Jump_00_ebd9                                                  ; $ebba : $4c, $d9, $eb


br_00_ebbd:
	lda #$01                                                  ; $ebbd : $a9, $01
	bit $0300                                                  ; $ebbf : $2c, $00, $03
	bne br_00_ebd9                                                  ; $ebc2 : $d0, $15

	jsr Call_00_ed3a                                                  ; $ebc4 : $20, $3a, $ed
	jsr Call_00_ec60                                                  ; $ebc7 : $20, $60, $ec
	jsr Call_00_ee19                                                  ; $ebca : $20, $19, $ee
	jmp Jump_00_ebd9                                                  ; $ebcd : $4c, $d9, $eb


br_00_ebd0:
	inc $0301                                                  ; $ebd0 : $ee, $01, $03
	jsr Call_00_ed34                                                  ; $ebd3 : $20, $34, $ed
	jmp Jump_00_ebd9                                                  ; $ebd6 : $4c, $d9, $eb


Jump_00_ebd9:
br_00_ebd9:
	jsr Call_00_ea1f                                                  ; $ebd9 : $20, $1f, $ea
	rts                                                  ; $ebdc : $60


Call_00_ebdd:
	pha                                                  ; $ebdd : $48
	lda $0302                                                  ; $ebde : $ad, $02, $03
	sta $0303                                                  ; $ebe1 : $8d, $03, $03
	pla                                                  ; $ebe4 : $68
	sta $0302                                                  ; $ebe5 : $8d, $02, $03
	rts                                                  ; $ebe8 : $60


Call_00_ebe9:
	lda $0303                                                  ; $ebe9 : $ad, $03, $03
	rts                                                  ; $ebec : $60


	rts                                                  ; $ebed : $60


	jsr Call_00_ed3a                                                  ; $ebee : $20, $3a, $ed
	ldy #$21                                                  ; $ebf1 : $a0, $21
	lda ($14), y                                                  ; $ebf3 : $b1, $14
	sec                                                  ; $ebf5 : $38
	sbc #$02                                                  ; $ebf6 : $e9, $02
	sta ($14), y                                                  ; $ebf8 : $91, $14
	lda #$c5                                                  ; $ebfa : $a9, $c5
	sta $14                                                  ; $ebfc : $85, $14
	lda #$03                                                  ; $ebfe : $a9, $03
	sta $15                                                  ; $ec00 : $85, $15
	ldy #$00                                                  ; $ec02 : $a0, $00

br_00_ec04:
	lda $0361, y                                                  ; $ec04 : $b9, $61, $03
	sta ($14), y                                                  ; $ec07 : $91, $14
	iny                                                  ; $ec09 : $c8
	cpy #$22                                                  ; $ec0a : $c0, $22
	bcc br_00_ec04                                                  ; $ec0c : $90, $f6

	lda #$83                                                  ; $ec0e : $a9, $83
	sta $12                                                  ; $ec10 : $85, $12
	lda #$03                                                  ; $ec12 : $a9, $03
	sta $13                                                  ; $ec14 : $85, $13
	jsr Call_00_e794                                                  ; $ec16 : $20, $94, $e7
	jsr Call_00_ee03                                                  ; $ec19 : $20, $03, $ee
	jsr Call_00_ea1f                                                  ; $ec1c : $20, $1f, $ea
	rts                                                  ; $ec1f : $60


	jsr Call_00_ed3a                                                  ; $ec20 : $20, $3a, $ed
	jsr Call_00_ed18                                                  ; $ec23 : $20, $18, $ed
	ldy #$1f                                                  ; $ec26 : $a0, $1f
	lda #$01                                                  ; $ec28 : $a9, $01
	sta ($14), y                                                  ; $ec2a : $91, $14
	lda #$83                                                  ; $ec2c : $a9, $83
	sta $12                                                  ; $ec2e : $85, $12
	lda #$03                                                  ; $ec30 : $a9, $03
	sta $13                                                  ; $ec32 : $85, $13
	jsr Call_00_e843                                                  ; $ec34 : $20, $43, $e8
	jsr Call_00_ee03                                                  ; $ec37 : $20, $03, $ee
	jsr Call_00_ea1f                                                  ; $ec3a : $20, $1f, $ea
	rts                                                  ; $ec3d : $60


	lda $0301                                                  ; $ec3e : $ad, $01, $03
	beq br_00_ec5c                                                  ; $ec41 : $f0, $19

	cmp #$02                                                  ; $ec43 : $c9, $02
	beq br_00_ec53                                                  ; $ec45 : $f0, $0c

	lda $0302                                                  ; $ec47 : $ad, $02, $03
	sta $0303                                                  ; $ec4a : $8d, $03, $03
	inc $0301                                                  ; $ec4d : $ee, $01, $03
	jsr Call_00_ed3a                                                  ; $ec50 : $20, $3a, $ed

br_00_ec53:
	jsr Call_00_ec60                                                  ; $ec53 : $20, $60, $ec
	jsr Call_00_ee19                                                  ; $ec56 : $20, $19, $ee
	jsr Call_00_ea31                                                  ; $ec59 : $20, $31, $ea

br_00_ec5c:
	jsr Call_00_ea1f                                                  ; $ec5c : $20, $1f, $ea
	rts                                                  ; $ec5f : $60


Call_00_ec60:
	lda #$61                                                  ; $ec60 : $a9, $61
	sta $14                                                  ; $ec62 : $85, $14
	lda #$03                                                  ; $ec64 : $a9, $03
	sta $15                                                  ; $ec66 : $85, $15
	lda #$83                                                  ; $ec68 : $a9, $83
	sta $12                                                  ; $ec6a : $85, $12
	lda #$03                                                  ; $ec6c : $a9, $03
	sta $13                                                  ; $ec6e : $85, $13
	jsr Call_00_ebe9                                                  ; $ec70 : $20, $e9, $eb
	cmp #$0e                                                  ; $ec73 : $c9, $0e
	beq br_00_ec84                                                  ; $ec75 : $f0, $0d

	cmp #$0f                                                  ; $ec77 : $c9, $0f
	beq br_00_ec87                                                  ; $ec79 : $f0, $0c

	cmp #$10                                                  ; $ec7b : $c9, $10
	beq br_00_ec8a                                                  ; $ec7d : $f0, $0b

	cmp #$11                                                  ; $ec7f : $c9, $11
	beq br_00_ec8d                                                  ; $ec81 : $f0, $0a

	rts                                                  ; $ec83 : $60


br_00_ec84:
	jmp Jump_00_e6e6                                                  ; $ec84 : $4c, $e6, $e6


br_00_ec87:
	jmp Jump_00_e780                                                  ; $ec87 : $4c, $80, $e7


br_00_ec8a:
	jmp Jump_00_e794                                                  ; $ec8a : $4c, $94, $e7


br_00_ec8d:
	jmp Jump_00_e843                                                  ; $ec8d : $4c, $43, $e8


Call_00_ec90:
	jmp Jump_00_ed0d                                                  ; $ec90 : $4c, $0d, $ed


	jsr Call_00_ea1f                                                  ; $ec93 : $20, $1f, $ea
	jmp Jump_00_ee0e                                                  ; $ec96 : $4c, $0e, $ee


	jsr Call_00_ed46                                                  ; $ec99 : $20, $46, $ed
	jsr Call_00_ea1f                                                  ; $ec9c : $20, $1f, $ea
	rts                                                  ; $ec9f : $60


	jsr Call_00_ed40                                                  ; $eca0 : $20, $40, $ed
	lda #$1f                                                  ; $eca3 : $a9, $1f
	sta $14                                                  ; $eca5 : $85, $14
	lda #$03                                                  ; $eca7 : $a9, $03
	sta $15                                                  ; $eca9 : $85, $15
	lda #$c5                                                  ; $ecab : $a9, $c5
	sta $12                                                  ; $ecad : $85, $12
	lda #$03                                                  ; $ecaf : $a9, $03
	sta $13                                                  ; $ecb1 : $85, $13
	jmp Jump_00_e6e6                                                  ; $ecb3 : $4c, $e6, $e6


Call_00_ecb6:
	jsr Call_00_ea28                                                  ; $ecb6 : $20, $28, $ea

Call_00_ecb9:
	lda #$00                                                  ; $ecb9 : $a9, $00
	tax                                                  ; $ecbb : $aa

br_00_ecbc:
	sta $0309, x                                                  ; $ecbc : $9d, $09, $03
	inx                                                  ; $ecbf : $e8
	cpx #$16                                                  ; $ecc0 : $e0, $16
	bcc br_00_ecbc                                                  ; $ecc2 : $90, $f8

	rts                                                  ; $ecc4 : $60


Call_00_ecc5:
	jsr Call_00_ecb6                                                  ; $ecc5 : $20, $b6, $ec
	jsr Call_00_ecf7                                                  ; $ecc8 : $20, $f7, $ec
	jsr Call_00_ed02                                                  ; $eccb : $20, $02, $ed
	jsr Call_00_ea3a                                                  ; $ecce : $20, $3a, $ea
	lda #$00                                                  ; $ecd1 : $a9, $00
	sta $0301                                                  ; $ecd3 : $8d, $01, $03
	sta $0302                                                  ; $ecd6 : $8d, $02, $03
	sta $0303                                                  ; $ecd9 : $8d, $03, $03
	rts                                                  ; $ecdc : $60


	jsr Call_00_f09c                                                  ; $ecdd : $20, $9c, $f0
	jsr Call_00_dba4                                                  ; $ece0 : $20, $a4, $db
	lda #$00                                                  ; $ece3 : $a9, $00
	sta SND_CHN                                                  ; $ece5 : $8d, $15, $40
	sta JOY1                                                  ; $ece8 : $8d, $16, $40
	lda #$ff                                                  ; $eceb : $a9, $ff
	sta FRAME_COUNTER_CTRL                                                  ; $eced : $8d, $17, $40
	lda #$00                                                  ; $ecf0 : $a9, $00
	sta $1c                                                  ; $ecf2 : $85, $1c
	pla                                                  ; $ecf4 : $68
	pla                                                  ; $ecf5 : $68
	rts                                                  ; $ecf6 : $60


Call_00_ecf7:
	lda #$61                                                  ; $ecf7 : $a9, $61
	sta $14                                                  ; $ecf9 : $85, $14
	lda #$03                                                  ; $ecfb : $a9, $03
	sta $15                                                  ; $ecfd : $85, $15
	jmp Jump_00_ed20                                                  ; $ecff : $4c, $20, $ed


Call_00_ed02:
	lda #$83                                                  ; $ed02 : $a9, $83
	sta $14                                                  ; $ed04 : $85, $14
	lda #$03                                                  ; $ed06 : $a9, $03
	sta $15                                                  ; $ed08 : $85, $15
	jmp Jump_00_ed20                                                  ; $ed0a : $4c, $20, $ed


Call_00_ed0d:
Jump_00_ed0d:
	lda #$1f                                                  ; $ed0d : $a9, $1f
	sta $14                                                  ; $ed0f : $85, $14
	lda #$03                                                  ; $ed11 : $a9, $03
	sta $15                                                  ; $ed13 : $85, $15
	jmp Jump_00_ed20                                                  ; $ed15 : $4c, $20, $ed


Call_00_ed18:
	lda #$c5                                                  ; $ed18 : $a9, $c5
	sta $14                                                  ; $ed1a : $85, $14
	lda #$03                                                  ; $ed1c : $a9, $03
	sta $15                                                  ; $ed1e : $85, $15

Jump_00_ed20:
	ldy #$21                                                  ; $ed20 : $a0, $21
	lda #$00                                                  ; $ed22 : $a9, $00

br_00_ed24:
	sta ($14), y                                                  ; $ed24 : $91, $14
	dey                                                  ; $ed26 : $88
	bpl br_00_ed24                                                  ; $ed27 : $10, $fb

	rts                                                  ; $ed29 : $60


	ldy #$21                                                  ; $ed2a : $a0, $21
	lda #$00                                                  ; $ed2c : $a9, $00

br_00_ed2e:
	sta ($12), y                                                  ; $ed2e : $91, $12
	dey                                                  ; $ed30 : $88
	bpl br_00_ed2e                                                  ; $ed31 : $10, $fb

	rts                                                  ; $ed33 : $60


Call_00_ed34:
	jsr Call_00_ecf7                                                  ; $ed34 : $20, $f7, $ec
	jmp Jump_00_ed54                                                  ; $ed37 : $4c, $54, $ed


Call_00_ed3a:
	jsr Call_00_ed02                                                  ; $ed3a : $20, $02, $ed
	jmp Jump_00_ed54                                                  ; $ed3d : $4c, $54, $ed


Call_00_ed40:
	jsr Call_00_ed18                                                  ; $ed40 : $20, $18, $ed
	jmp Jump_00_ed54                                                  ; $ed43 : $4c, $54, $ed


Call_00_ed46:
	jsr Call_00_ed0d                                                  ; $ed46 : $20, $0d, $ed
	lda #$1f                                                  ; $ed49 : $a9, $1f
	sta $14                                                  ; $ed4b : $85, $14
	lda #$03                                                  ; $ed4d : $a9, $03
	sta $15                                                  ; $ed4f : $85, $15
	jmp Jump_00_ed54                                                  ; $ed51 : $4c, $54, $ed


Jump_00_ed54:
	lda #$00                                                  ; $ed54 : $a9, $00
	sta $0305                                                  ; $ed56 : $8d, $05, $03
	sta $0304                                                  ; $ed59 : $8d, $04, $03
	sta $0307                                                  ; $ed5c : $8d, $07, $03
	sta $0308                                                  ; $ed5f : $8d, $08, $03
	ldy #$1f                                                  ; $ed62 : $a0, $1f
	ldx #$15                                                  ; $ed64 : $a2, $15

br_00_ed66:
	lda $0309, x                                                  ; $ed66 : $bd, $09, $03
	bne br_00_ed71                                                  ; $ed69 : $d0, $06

	dex                                                  ; $ed6b : $ca
	bpl br_00_ed66                                                  ; $ed6c : $10, $f8

	jmp Jump_00_edff                                                  ; $ed6e : $4c, $ff, $ed


br_00_ed71:
	lda $0309, x                                                  ; $ed71 : $bd, $09, $03
	cmp #$0b                                                  ; $ed74 : $c9, $0b
	beq br_00_ed8b                                                  ; $ed76 : $f0, $13

	cmp #$0a                                                  ; $ed78 : $c9, $0a
	beq br_00_ed9c                                                  ; $ed7a : $f0, $20

	cmp #$0c                                                  ; $ed7c : $c9, $0c
	beq br_00_edc2                                                  ; $ed7e : $f0, $42

	sta ($14), y                                                  ; $ed80 : $91, $14
	inc $0307                                                  ; $ed82 : $ee, $07, $03
	dey                                                  ; $ed85 : $88

br_00_ed86:
	dex                                                  ; $ed86 : $ca
	bpl br_00_ed71                                                  ; $ed87 : $10, $e8

	bmi br_00_edc5                                                  ; $ed89 : $30, $3a

br_00_ed8b:
	lda #$ff                                                  ; $ed8b : $a9, $ff
	sta $0304                                                  ; $ed8d : $8d, $04, $03
	bne br_00_ed86                                                  ; $ed90 : $d0, $f4

br_00_ed92:
	lda $0309, x                                                  ; $ed92 : $bd, $09, $03
	cmp #$0c                                                  ; $ed95 : $c9, $0c
	beq br_00_edc2                                                  ; $ed97 : $f0, $29

	sta ($14), y                                                  ; $ed99 : $91, $14
	dey                                                  ; $ed9b : $88

br_00_ed9c:
	dex                                                  ; $ed9c : $ca
	bpl br_00_ed92                                                  ; $ed9d : $10, $f3

	bmi br_00_edc5                                                  ; $ed9f : $30, $24

br_00_eda1:
	lda $0309, x                                                  ; $eda1 : $bd, $09, $03
	cmp #$0b                                                  ; $eda4 : $c9, $0b
	bne br_00_edaf                                                  ; $eda6 : $d0, $07

	lda #$ff                                                  ; $eda8 : $a9, $ff
	sta $0305                                                  ; $edaa : $8d, $05, $03
	bne br_00_edc2                                                  ; $edad : $d0, $13

br_00_edaf:
	asl $0308                                                  ; $edaf : $0e, $08, $03
	lda $0308                                                  ; $edb2 : $ad, $08, $03
	asl a                                                  ; $edb5 : $0a
	asl a                                                  ; $edb6 : $0a
	clc                                                  ; $edb7 : $18
	adc $0308                                                  ; $edb8 : $6d, $08, $03
	clc                                                  ; $edbb : $18
	adc $0309, x                                                  ; $edbc : $7d, $09, $03
	sta $0308                                                  ; $edbf : $8d, $08, $03

br_00_edc2:
	dex                                                  ; $edc2 : $ca
	bpl br_00_eda1                                                  ; $edc3 : $10, $dc

br_00_edc5:
	ldy #$20                                                  ; $edc5 : $a0, $20
	lda $0304                                                  ; $edc7 : $ad, $04, $03
	sta ($14), y                                                  ; $edca : $91, $14
	lda $0305                                                  ; $edcc : $ad, $05, $03
	beq br_00_eddc                                                  ; $edcf : $f0, $0b

	lda #$ff                                                  ; $edd1 : $a9, $ff
	eor $0308                                                  ; $edd3 : $4d, $08, $03
	sta $0308                                                  ; $edd6 : $8d, $08, $03
	inc $0308                                                  ; $edd9 : $ee, $08, $03

br_00_eddc:
	clc                                                  ; $eddc : $18
	dec $0307                                                  ; $eddd : $ce, $07, $03
	lda $0307                                                  ; $ede0 : $ad, $07, $03
	adc $0308                                                  ; $ede3 : $6d, $08, $03
	ldy #$21                                                  ; $ede6 : $a0, $21
	sta ($14), y                                                  ; $ede8 : $91, $14
	jsr Call_00_e6a9                                                  ; $edea : $20, $a9, $e6
	ldy #$21                                                  ; $eded : $a0, $21
	lda ($14), y                                                  ; $edef : $b1, $14
	bpl br_00_edfb                                                  ; $edf1 : $10, $08

	eor #$ff                                                  ; $edf3 : $49, $ff
	sta $0307                                                  ; $edf5 : $8d, $07, $03
	inc $0307                                                  ; $edf8 : $ee, $07, $03

br_00_edfb:
	cmp #$64                                                  ; $edfb : $c9, $64
	bcs br_00_ee01                                                  ; $edfd : $b0, $02

Jump_00_edff:
	clc                                                  ; $edff : $18
	rts                                                  ; $ee00 : $60


br_00_ee01:
	sec                                                  ; $ee01 : $38
	rts                                                  ; $ee02 : $60


Call_00_ee03:
	lda #$c5                                                  ; $ee03 : $a9, $c5
	sta $14                                                  ; $ee05 : $85, $14
	lda #$03                                                  ; $ee07 : $a9, $03
	sta $15                                                  ; $ee09 : $85, $15
	jmp Jump_00_ee21                                                  ; $ee0b : $4c, $21, $ee


Jump_00_ee0e:
	lda #$1f                                                  ; $ee0e : $a9, $1f
	sta $14                                                  ; $ee10 : $85, $14
	lda #$03                                                  ; $ee12 : $a9, $03
	sta $15                                                  ; $ee14 : $85, $15
	jmp Jump_00_ee21                                                  ; $ee16 : $4c, $21, $ee


Call_00_ee19:
	lda #$61                                                  ; $ee19 : $a9, $61
	sta $14                                                  ; $ee1b : $85, $14
	lda #$03                                                  ; $ee1d : $a9, $03
	sta $15                                                  ; $ee1f : $85, $15

Jump_00_ee21:
	jsr Call_00_ef1d                                                  ; $ee21 : $20, $1d, $ef
	jsr Call_00_ecb9                                                  ; $ee24 : $20, $b9, $ec
	lda #$00                                                  ; $ee27 : $a9, $00
	sta $0305                                                  ; $ee29 : $8d, $05, $03
	sta $0306                                                  ; $ee2c : $8d, $06, $03
	sta $0308                                                  ; $ee2f : $8d, $08, $03
	ldy #$21                                                  ; $ee32 : $a0, $21
	lda ($14), y                                                  ; $ee34 : $b1, $14
	sta $0307                                                  ; $ee36 : $8d, $07, $03
	bpl br_00_ee49                                                  ; $ee39 : $10, $0e

	lda #$ff                                                  ; $ee3b : $a9, $ff
	sta $0305                                                  ; $ee3d : $8d, $05, $03
	eor $0307                                                  ; $ee40 : $4d, $07, $03
	sta $0307                                                  ; $ee43 : $8d, $07, $03
	inc $0307                                                  ; $ee46 : $ee, $07, $03

br_00_ee49:
	dey                                                  ; $ee49 : $88
	lda ($14), y                                                  ; $ee4a : $b1, $14
	beq br_00_ee53                                                  ; $ee4c : $f0, $05

	lda #$0b                                                  ; $ee4e : $a9, $0b
	sta $0309                                                  ; $ee50 : $8d, $09, $03

br_00_ee53:
	dey                                                  ; $ee53 : $88
	lda $0305                                                  ; $ee54 : $ad, $05, $03
	bne br_00_ee63                                                  ; $ee57 : $d0, $0a

	lda $0307                                                  ; $ee59 : $ad, $07, $03
	cmp #$10                                                  ; $ee5c : $c9, $10
	bcs br_00_ee63                                                  ; $ee5e : $b0, $03

	jmp Jump_00_eecc                                                  ; $ee60 : $4c, $cc, $ee


br_00_ee63:
	jsr Call_00_ef98                                                  ; $ee63 : $20, $98, $ef
	lda ($14), y                                                  ; $ee66 : $b1, $14
	sta $0309                                                  ; $ee68 : $8d, $09, $03
	inc $0306                                                  ; $ee6b : $ee, $06, $03
	dey                                                  ; $ee6e : $88
	jsr Call_00_eeff                                                  ; $ee6f : $20, $ff, $ee
	bcs br_00_ee8f                                                  ; $ee72 : $b0, $1b

	jsr Call_00_ef98                                                  ; $ee74 : $20, $98, $ef
	lda #$0a                                                  ; $ee77 : $a9, $0a
	sta $0309                                                  ; $ee79 : $8d, $09, $03

br_00_ee7c:
	jsr Call_00_eeff                                                  ; $ee7c : $20, $ff, $ee
	bcs br_00_ee8f                                                  ; $ee7f : $b0, $0e

	jsr Call_00_ef98                                                  ; $ee81 : $20, $98, $ef
	lda ($14), y                                                  ; $ee84 : $b1, $14
	sta $0309                                                  ; $ee86 : $8d, $09, $03
	inc $0306                                                  ; $ee89 : $ee, $06, $03
	dey                                                  ; $ee8c : $88
	bpl br_00_ee7c                                                  ; $ee8d : $10, $ed

br_00_ee8f:
	jsr Call_00_ef98                                                  ; $ee8f : $20, $98, $ef
	lda #$0c                                                  ; $ee92 : $a9, $0c
	sta $0309                                                  ; $ee94 : $8d, $09, $03
	lda $0305                                                  ; $ee97 : $ad, $05, $03
	beq br_00_eea4                                                  ; $ee9a : $f0, $08

	jsr Call_00_ef98                                                  ; $ee9c : $20, $98, $ef
	lda #$0b                                                  ; $ee9f : $a9, $0b
	sta $0309                                                  ; $eea1 : $8d, $09, $03

br_00_eea4:
	sec                                                  ; $eea4 : $38
	lda $0307                                                  ; $eea5 : $ad, $07, $03
	sbc #$0a                                                  ; $eea8 : $e9, $0a
	bcc br_00_eeb4                                                  ; $eeaa : $90, $08

	inc $0308                                                  ; $eeac : $ee, $08, $03
	sta $0307                                                  ; $eeaf : $8d, $07, $03
	bne br_00_eea4                                                  ; $eeb2 : $d0, $f0

br_00_eeb4:
	lda $0308                                                  ; $eeb4 : $ad, $08, $03
	beq br_00_eec2                                                  ; $eeb7 : $f0, $09

	jsr Call_00_ef98                                                  ; $eeb9 : $20, $98, $ef
	lda $0308                                                  ; $eebc : $ad, $08, $03
	sta $0309                                                  ; $eebf : $8d, $09, $03

br_00_eec2:
	jsr Call_00_ef98                                                  ; $eec2 : $20, $98, $ef
	lda $0307                                                  ; $eec5 : $ad, $07, $03
	sta $0309                                                  ; $eec8 : $8d, $09, $03
	rts                                                  ; $eecb : $60


Jump_00_eecc:
	jsr Call_00_ef98                                                  ; $eecc : $20, $98, $ef
	lda ($14), y                                                  ; $eecf : $b1, $14
	sta $0309                                                  ; $eed1 : $8d, $09, $03
	inc $0306                                                  ; $eed4 : $ee, $06, $03
	dey                                                  ; $eed7 : $88
	lda $0307                                                  ; $eed8 : $ad, $07, $03
	beq br_00_eee3                                                  ; $eedb : $f0, $06

	dec $0307                                                  ; $eedd : $ce, $07, $03
	jmp Jump_00_eecc                                                  ; $eee0 : $4c, $cc, $ee


br_00_eee3:
	jsr Call_00_ef98                                                  ; $eee3 : $20, $98, $ef
	lda #$0a                                                  ; $eee6 : $a9, $0a
	sta $0309                                                  ; $eee8 : $8d, $09, $03

br_00_eeeb:
	jsr Call_00_eeff                                                  ; $eeeb : $20, $ff, $ee
	bcs br_00_eefe                                                  ; $eeee : $b0, $0e

	jsr Call_00_ef98                                                  ; $eef0 : $20, $98, $ef
	lda ($14), y                                                  ; $eef3 : $b1, $14
	sta $0309                                                  ; $eef5 : $8d, $09, $03
	inc $0306                                                  ; $eef8 : $ee, $06, $03
	dey                                                  ; $eefb : $88
	bpl br_00_eeeb                                                  ; $eefc : $10, $ed

br_00_eefe:
	rts                                                  ; $eefe : $60


Call_00_eeff:
	tya                                                  ; $eeff : $98
	pha                                                  ; $ef00 : $48
	txa                                                  ; $ef01 : $8a
	pha                                                  ; $ef02 : $48
	sec                                                  ; $ef03 : $38
	lda #$10                                                  ; $ef04 : $a9, $10
	sbc $0306                                                  ; $ef06 : $ed, $06, $03
	beq br_00_ef18                                                  ; $ef09 : $f0, $0d

	tax                                                  ; $ef0b : $aa

br_00_ef0c:
	lda ($14), y                                                  ; $ef0c : $b1, $14
	bne br_00_ef17                                                  ; $ef0e : $d0, $07

	dey                                                  ; $ef10 : $88
	dex                                                  ; $ef11 : $ca
	bne br_00_ef0c                                                  ; $ef12 : $d0, $f8

	sec                                                  ; $ef14 : $38
	bcs br_00_ef18                                                  ; $ef15 : $b0, $01

br_00_ef17:
	clc                                                  ; $ef17 : $18

br_00_ef18:
	pla                                                  ; $ef18 : $68
	tax                                                  ; $ef19 : $aa
	pla                                                  ; $ef1a : $68
	tay                                                  ; $ef1b : $a8
	rts                                                  ; $ef1c : $60


Call_00_ef1d:
	lda #$c5                                                  ; $ef1d : $a9, $c5
	sta $12                                                  ; $ef1f : $85, $12
	lda #$03                                                  ; $ef21 : $a9, $03
	sta $13                                                  ; $ef23 : $85, $13
	jsr Call_00_e657                                                  ; $ef25 : $20, $57, $e6
	ldy #$00                                                  ; $ef28 : $a0, $00

br_00_ef2a:
	lda ($12), y                                                  ; $ef2a : $b1, $12
	sta ($14), y                                                  ; $ef2c : $91, $14
	iny                                                  ; $ef2e : $c8
	cpy #$22                                                  ; $ef2f : $c0, $22
	bcc br_00_ef2a                                                  ; $ef31 : $90, $f7

	ldy #$0f                                                  ; $ef33 : $a0, $0f
	lda ($14), y                                                  ; $ef35 : $b1, $14
	cmp #$05                                                  ; $ef37 : $c9, $05
	bcc br_00_ef5f                                                  ; $ef39 : $90, $24

	iny                                                  ; $ef3b : $c8
	ldx #$10                                                  ; $ef3c : $a2, $10
	sec                                                  ; $ef3e : $38

br_00_ef3f:
	lda #$00                                                  ; $ef3f : $a9, $00
	adc ($14), y                                                  ; $ef41 : $71, $14
	cmp #$0a                                                  ; $ef43 : $c9, $0a
	bcc br_00_ef49                                                  ; $ef45 : $90, $02

	sbc #$0a                                                  ; $ef47 : $e9, $0a

br_00_ef49:
	sta ($14), y                                                  ; $ef49 : $91, $14
	iny                                                  ; $ef4b : $c8
	dex                                                  ; $ef4c : $ca
	bne br_00_ef3f                                                  ; $ef4d : $d0, $f0

	bcc br_00_ef5f                                                  ; $ef4f : $90, $0e

	lda #$01                                                  ; $ef51 : $a9, $01
	sta $0307                                                  ; $ef53 : $8d, $07, $03
	jsr Call_00_e685                                                  ; $ef56 : $20, $85, $e6
	ldy #$1f                                                  ; $ef59 : $a0, $1f
	lda #$01                                                  ; $ef5b : $a9, $01
	sta ($14), y                                                  ; $ef5d : $91, $14

br_00_ef5f:
	ldy #$21                                                  ; $ef5f : $a0, $21
	lda ($14), y                                                  ; $ef61 : $b1, $14
	bpl br_00_ef97                                                  ; $ef63 : $10, $32

	eor #$ff                                                  ; $ef65 : $49, $ff
	sta $0307                                                  ; $ef67 : $8d, $07, $03
	inc $0307                                                  ; $ef6a : $ee, $07, $03
	lda $0307                                                  ; $ef6d : $ad, $07, $03
	cmp #$10                                                  ; $ef70 : $c9, $10
	bcs br_00_ef97                                                  ; $ef72 : $b0, $23

	ldy #$1f                                                  ; $ef74 : $a0, $1f
	lda #$00                                                  ; $ef76 : $a9, $00
	sta $0306                                                  ; $ef78 : $8d, $06, $03

br_00_ef7b:
	jsr Call_00_eeff                                                  ; $ef7b : $20, $ff, $ee
	bcs br_00_ef86                                                  ; $ef7e : $b0, $06

	dey                                                  ; $ef80 : $88
	inc $0306                                                  ; $ef81 : $ee, $06, $03
	bne br_00_ef7b                                                  ; $ef84 : $d0, $f5

br_00_ef86:
	clc                                                  ; $ef86 : $18
	lda $0306                                                  ; $ef87 : $ad, $06, $03
	adc $0307                                                  ; $ef8a : $6d, $07, $03
	cmp #$10                                                  ; $ef8d : $c9, $10
	bcs br_00_ef97                                                  ; $ef8f : $b0, $06

	sta $0307                                                  ; $ef91 : $8d, $07, $03
	jsr Call_00_e685                                                  ; $ef94 : $20, $85, $e6

br_00_ef97:
	rts                                                  ; $ef97 : $60


Call_00_ef98:
	txa                                                  ; $ef98 : $8a
	pha                                                  ; $ef99 : $48
	ldx #$15                                                  ; $ef9a : $a2, $15

br_00_ef9c:
	lda $0308, x                                                  ; $ef9c : $bd, $08, $03
	sta $0309, x                                                  ; $ef9f : $9d, $09, $03
	dex                                                  ; $efa2 : $ca
	bne br_00_ef9c                                                  ; $efa3 : $d0, $f7

	pla                                                  ; $efa5 : $68
	tax                                                  ; $efa6 : $aa
	rts                                                  ; $efa7 : $60


Call_00_efa8:
	ldx #$00                                                  ; $efa8 : $a2, $00

br_00_efaa:
	lda $030a, x                                                  ; $efaa : $bd, $0a, $03
	sta $0309, x                                                  ; $efad : $9d, $09, $03
	inx                                                  ; $efb0 : $e8
	cpx #$15                                                  ; $efb1 : $e0, $15
	bne br_00_efaa                                                  ; $efb3 : $d0, $f5

	lda #$00                                                  ; $efb5 : $a9, $00
	sta $0309, x                                                  ; $efb7 : $9d, $09, $03
	rts                                                  ; $efba : $60


	.db $00                                                  ; $efbb : $00
	.db $00                                                  ; $efbc : $00
	beq br_00_efbf                                                  ; $efbd : $f0, $00

br_00_efbf:
	.db $00                                                  ; $efbf : $00
	.db $ff                                                  ; $efc0 : $ff
	.db $80                                                  ; $efc1 : $80
	.db $00                                                  ; $efc2 : $00
	.db $ff                                                  ; $efc3 : $ff
	.db $00                                                  ; $efc4 : $00
	inc $ad00, x                                                  ; $efc5 : $fe, $00, $ad
	bpl $07                                                  ; $efc8 : $10, $07

	php                                                  ; $efca : $08
	.db $0f                                                  ; $efcb : $0f
	php                                                  ; $efcc : $08
	ora ($80, x)                                                  ; $efcd : $01, $80
	.db $00                                                  ; $efcf : $00
	ora ($80, x)                                                  ; $efd0 : $01, $80
	.db $00                                                  ; $efd2 : $00
	.db $7f                                                  ; $efd3 : $7f
	.db $00                                                  ; $efd4 : $00
	.db $bf                                                  ; $efd5 : $bf
	.db $07                                                  ; $efd6 : $07
	php                                                  ; $efd7 : $08
	bpl br_00_efe2                                                  ; $efd8 : $10, $08

	asl $07                                                  ; $efda : $06, $07
	.db $0f                                                  ; $efdc : $0f
	.db $ff                                                  ; $efdd : $ff
	.db $00                                                  ; $efde : $00
	ora ($ff, x)                                                  ; $efdf : $01, $ff
	.db $00                                                  ; $efe1 : $00

br_00_efe2:
	sed                                                  ; $efe2 : $f8
	.db $00                                                  ; $efe3 : $00
	.db $04                                                  ; $efe4 : $04
	dec $0a, x                                                  ; $efe5 : $d6, $0a
	ora $02                                                  ; $efe7 : $05, $02
	php                                                  ; $efe9 : $08
	.db $07                                                  ; $efea : $07
	.db $00                                                  ; $efeb : $00
	.db $04                                                  ; $efec : $04
	.db $00                                                  ; $efed : $00
	.db $04                                                  ; $efee : $04
	.db $fc                                                  ; $efef : $fc
	.db $00                                                  ; $eff0 : $00
	beq br_00_eff3                                                  ; $eff1 : $f0, $00

br_00_eff3:
	.db $af                                                  ; $eff3 : $af
	php                                                  ; $eff4 : $08
	php                                                  ; $eff5 : $08
	php                                                  ; $eff6 : $08
	ora $02                                                  ; $eff7 : $05, $02
	php                                                  ; $eff9 : $08
	php                                                  ; $effa : $08
	.db $00                                                  ; $effb : $00
	php                                                  ; $effc : $08
	.db $00                                                  ; $effd : $00
	php                                                  ; $effe : $08
	sed                                                  ; $efff : $f8
	.db $00                                                  ; $f000 : $00
	.db $00                                                  ; $f001 : $00
	.db $5f                                                  ; $f002 : $5f
	.db $07                                                  ; $f003 : $07
	php                                                  ; $f004 : $08
	php                                                  ; $f005 : $08
	php                                                  ; $f006 : $08
	ora $02                                                  ; $f007 : $05, $02

Call_00_f009:
	jsr Call_00_f09c                                                  ; $f009 : $20, $9c, $f0
	ldy #$04                                                  ; $f00c : $a0, $04

br_00_f00e:
	lda $e138, y                                                  ; $f00e : $b9, $38, $e1
	cmp $1c                                                  ; $f011 : $c5, $1c
	beq br_00_f01c                                                  ; $f013 : $f0, $07

	tya                                                  ; $f015 : $98
	clc                                                  ; $f016 : $18
	adc #$05                                                  ; $f017 : $69, $05
	tay                                                  ; $f019 : $a8
	bne br_00_f00e                                                  ; $f01a : $d0, $f2

br_00_f01c:
	tya                                                  ; $f01c : $98
	sec                                                  ; $f01d : $38
	sbc #$04                                                  ; $f01e : $e9, $04
	tay                                                  ; $f020 : $a8
	lda $e138, y                                                  ; $f021 : $b9, $38, $e1
	sta $2f                                                  ; $f024 : $85, $2f
	lda $e139, y                                                  ; $f026 : $b9, $39, $e1
	sta $30                                                  ; $f029 : $85, $30
	dec $2f                                                  ; $f02b : $c6, $2f
	dec $30                                                  ; $f02d : $c6, $30
	dec $30                                                  ; $f02f : $c6, $30
	ldy #$00                                                  ; $f031 : $a0, $00
	lda #$a9                                                  ; $f033 : $a9, $a9
	sta $14                                                  ; $f035 : $85, $14
	lda #$f0                                                  ; $f037 : $a9, $f0
	sta $15                                                  ; $f039 : $85, $15
	lda #$12                                                  ; $f03b : $a9, $12
	sta $16                                                  ; $f03d : $85, $16
	ldx $1c                                                  ; $f03f : $a6, $1c
	cpx #$0d                                                  ; $f041 : $e0, $0d
	beq br_00_f079                                                  ; $f043 : $f0, $34

	cpx #$1a                                                  ; $f045 : $e0, $1a
	beq br_00_f079                                                  ; $f047 : $f0, $30

	cpx #$1b                                                  ; $f049 : $e0, $1b
	beq br_00_f079                                                  ; $f04b : $f0, $2c

	lda #$f1                                                  ; $f04d : $a9, $f1
	sta $14                                                  ; $f04f : $85, $14
	lda #$f0                                                  ; $f051 : $a9, $f0
	sta $15                                                  ; $f053 : $85, $15
	lda #$0f                                                  ; $f055 : $a9, $0f
	sta $16                                                  ; $f057 : $85, $16
	cpx #$13                                                  ; $f059 : $e0, $13
	beq br_00_f079                                                  ; $f05b : $f0, $1c

	cpx #$14                                                  ; $f05d : $e0, $14
	beq br_00_f079                                                  ; $f05f : $f0, $18

	cpx #$15                                                  ; $f061 : $e0, $15
	beq br_00_f079                                                  ; $f063 : $f0, $14

	cpx #$12                                                  ; $f065 : $e0, $12
	beq br_00_f079                                                  ; $f067 : $f0, $10

	cpx #$1c                                                  ; $f069 : $e0, $1c
	beq br_00_f09b                                                  ; $f06b : $f0, $2e

	lda #$2d                                                  ; $f06d : $a9, $2d
	sta $14                                                  ; $f06f : $85, $14
	lda #$f1                                                  ; $f071 : $a9, $f1
	sta $15                                                  ; $f073 : $85, $15
	lda #$0c                                                  ; $f075 : $a9, $0c
	sta $16                                                  ; $f077 : $85, $16

br_00_f079:
	lda ($14), y                                                  ; $f079 : $b1, $14
	clc                                                  ; $f07b : $18
	adc $30                                                  ; $f07c : $65, $30
	sta $0210, y                                                  ; $f07e : $99, $10, $02
	iny                                                  ; $f081 : $c8
	lda ($14), y                                                  ; $f082 : $b1, $14
	sta $0210, y                                                  ; $f084 : $99, $10, $02
	iny                                                  ; $f087 : $c8
	lda ($14), y                                                  ; $f088 : $b1, $14
	sta $0210, y                                                  ; $f08a : $99, $10, $02
	iny                                                  ; $f08d : $c8
	lda ($14), y                                                  ; $f08e : $b1, $14
	clc                                                  ; $f090 : $18
	adc $2f                                                  ; $f091 : $65, $2f
	sta $0210, y                                                  ; $f093 : $99, $10, $02
	iny                                                  ; $f096 : $c8
	dec $16                                                  ; $f097 : $c6, $16
	bne br_00_f079                                                  ; $f099 : $d0, $de

br_00_f09b:
	rts                                                  ; $f09b : $60


Call_00_f09c:
	ldx #$00                                                  ; $f09c : $a2, $00
	lda #$ef                                                  ; $f09e : $a9, $ef

br_00_f0a0:
	sta $0210, x                                                  ; $f0a0 : $9d, $10, $02
	inx                                                  ; $f0a3 : $e8
	cpx #$48                                                  ; $f0a4 : $e0, $48
	bcc br_00_f0a0                                                  ; $f0a6 : $90, $f8

	rts                                                  ; $f0a8 : $60


	.db $00                                                  ; $f0a9 : $00
	ora ($01, x)                                                  ; $f0aa : $01, $01
	.db $00                                                  ; $f0ac : $00
	.db $00                                                  ; $f0ad : $00
	.db $02                                                  ; $f0ae : $02
	ora ($08, x)                                                  ; $f0af : $01, $08
	.db $00                                                  ; $f0b1 : $00
	.db $02                                                  ; $f0b2 : $02
	ora ($10, x)                                                  ; $f0b3 : $01, $10
	.db $00                                                  ; $f0b5 : $00
	.db $02                                                  ; $f0b6 : $02
	ora ($18, x)                                                  ; $f0b7 : $01, $18
	.db $00                                                  ; $f0b9 : $00
	.db $02                                                  ; $f0ba : $02
	ora ($20, x)                                                  ; $f0bb : $01, $20
	.db $00                                                  ; $f0bd : $00
	.db $03                                                  ; $f0be : $03
	ora ($28, x)                                                  ; $f0bf : $01, $28
	php                                                  ; $f0c1 : $08
	.db $04                                                  ; $f0c2 : $04
	ora ($00, x)                                                  ; $f0c3 : $01, $00
	php                                                  ; $f0c5 : $08
	.db $00                                                  ; $f0c6 : $00
	ora ($08, x)                                                  ; $f0c7 : $01, $08
	php                                                  ; $f0c9 : $08
	.db $00                                                  ; $f0ca : $00
	ora ($10, x)                                                  ; $f0cb : $01, $10
	php                                                  ; $f0cd : $08
	.db $00                                                  ; $f0ce : $00
	ora ($18, x)                                                  ; $f0cf : $01, $18
	php                                                  ; $f0d1 : $08
	.db $00                                                  ; $f0d2 : $00
	ora ($20, x)                                                  ; $f0d3 : $01, $20
	php                                                  ; $f0d5 : $08
	ora $01                                                  ; $f0d6 : $05, $01
	plp                                                  ; $f0d8 : $28
	bpl br_00_f0e1                                                  ; $f0d9 : $10, $06

	ora ($00, x)                                                  ; $f0db : $01, $00
	bpl $07                                                  ; $f0dd : $10, $07

	ora ($08, x)                                                  ; $f0df : $01, $08

br_00_f0e1:
	bpl $07                                                  ; $f0e1 : $10, $07

	ora ($10, x)                                                  ; $f0e3 : $01, $10
	bpl $07                                                  ; $f0e5 : $10, $07

	ora ($18, x)                                                  ; $f0e7 : $01, $18
	bpl br_00_f0f2                                                  ; $f0e9 : $10, $07

	ora ($20, x)                                                  ; $f0eb : $01, $20
	bpl br_00_f0f7                                                  ; $f0ed : $10, $08

	ora ($28, x)                                                  ; $f0ef : $01, $28
	.db $00                                                  ; $f0f1 : $00

br_00_f0f2:
	ora ($01, x)                                                  ; $f0f2 : $01, $01
	.db $00                                                  ; $f0f4 : $00
	.db $00                                                  ; $f0f5 : $00
	.db $02                                                  ; $f0f6 : $02

br_00_f0f7:
	ora ($08, x)                                                  ; $f0f7 : $01, $08
	.db $00                                                  ; $f0f9 : $00
	.db $02                                                  ; $f0fa : $02
	ora ($10, x)                                                  ; $f0fb : $01, $10
	.db $00                                                  ; $f0fd : $00
	.db $02                                                  ; $f0fe : $02
	ora ($18, x)                                                  ; $f0ff : $01, $18
	.db $00                                                  ; $f101 : $00
	.db $0c                                                  ; $f102 : $0c
	ora ($20, x)                                                  ; $f103 : $01, $20
	php                                                  ; $f105 : $08
	.db $04                                                  ; $f106 : $04
	ora ($00, x)                                                  ; $f107 : $01, $00
	php                                                  ; $f109 : $08
	.db $00                                                  ; $f10a : $00
	ora ($08, x)                                                  ; $f10b : $01, $08
	php                                                  ; $f10d : $08
	.db $00                                                  ; $f10e : $00
	ora ($10, x)                                                  ; $f10f : $01, $10
	php                                                  ; $f111 : $08
	.db $00                                                  ; $f112 : $00
	ora ($18, x)                                                  ; $f113 : $01, $18
	php                                                  ; $f115 : $08
	ora PPUMASK                                                  ; $f116 : $0d, $01, $20
	bpl br_00_f121                                                  ; $f119 : $10, $06

	ora ($00, x)                                                  ; $f11b : $01, $00
	bpl $07                                                  ; $f11d : $10, $07

	ora ($08, x)                                                  ; $f11f : $01, $08

br_00_f121:
	bpl $07                                                  ; $f121 : $10, $07

	ora ($10, x)                                                  ; $f123 : $01, $10
	bpl br_00_f12e                                                  ; $f125 : $10, $07

	ora ($18, x)                                                  ; $f127 : $01, $18
	bpl br_00_f139                                                  ; $f129 : $10, $0e

	ora ($20, x)                                                  ; $f12b : $01, $20
	.db $00                                                  ; $f12d : $00

br_00_f12e:
	ora ($01, x)                                                  ; $f12e : $01, $01
	.db $00                                                  ; $f130 : $00
	.db $00                                                  ; $f131 : $00
	.db $02                                                  ; $f132 : $02
	ora ($08, x)                                                  ; $f133 : $01, $08
	.db $00                                                  ; $f135 : $00
	.db $02                                                  ; $f136 : $02
	ora ($10, x)                                                  ; $f137 : $01, $10

br_00_f139:
	.db $00                                                  ; $f139 : $00
	ora #$01                                                  ; $f13a : $09, $01
	clc                                                  ; $f13c : $18
	php                                                  ; $f13d : $08
	.db $04                                                  ; $f13e : $04
	ora ($00, x)                                                  ; $f13f : $01, $00
	php                                                  ; $f141 : $08
	.db $00                                                  ; $f142 : $00
	ora ($08, x)                                                  ; $f143 : $01, $08
	php                                                  ; $f145 : $08
	.db $00                                                  ; $f146 : $00
	ora ($10, x)                                                  ; $f147 : $01, $10
	php                                                  ; $f149 : $08
	asl a                                                  ; $f14a : $0a
	ora ($18, x)                                                  ; $f14b : $01, $18
	bpl br_00_f155                                                  ; $f14d : $10, $06

	ora ($00, x)                                                  ; $f14f : $01, $00
	bpl $07                                                  ; $f151 : $10, $07

	ora ($08, x)                                                  ; $f153 : $01, $08

br_00_f155:
	bpl $07                                                  ; $f155 : $10, $07

	ora ($10, x)                                                  ; $f157 : $01, $10
	bpl $0b                                                  ; $f159 : $10, $0b

	ora ($18, x)                                                  ; $f15b : $01, $18

Call_00_f15d:
	lda #$ff                                                  ; $f15d : $a9, $ff
	sta $8f                                                  ; $f15f : $85, $8f
	sta $a2                                                  ; $f161 : $85, $a2

br_00_f163:
	lda $8f                                                  ; $f163 : $a5, $8f
	ora $a2                                                  ; $f165 : $05, $a2
	bne br_00_f163                                                  ; $f167 : $d0, $fa

	jsr Call_00_f09c                                                  ; $f169 : $20, $9c, $f0

br_00_f16c:
	ldx $8f                                                  ; $f16c : $a6, $8f
	bne br_00_f174                                                  ; $f16e : $d0, $04

	ldx $a2                                                  ; $f170 : $a6, $a2
	beq br_00_f16c                                                  ; $f172 : $f0, $f8

br_00_f174:
	rts                                                  ; $f174 : $60


Call_00_f175:
	lda #$00                                                  ; $f175 : $a9, $00
	sta $2b                                                  ; $f177 : $85, $2b
	jsr Call_00_8447                                                  ; $f179 : $20, $47, $84
	lda #$10                                                  ; $f17c : $a9, $10
	ora $0e                                                  ; $f17e : $05, $0e
	sta $0e                                                  ; $f180 : $85, $0e
	lda #$03                                                  ; $f182 : $a9, $03
	sta $2c                                                  ; $f184 : $85, $2c
	lda #$06                                                  ; $f186 : $a9, $06
	sta $2d                                                  ; $f188 : $85, $2d
	jsr $8409                                                  ; $f18a : $20, $09, $84

Jump_00_f18d:
br_00_f18d:
	jsr Call_00_f429                                                  ; $f18d : $20, $29, $f4
	bcs br_00_f19c                                                  ; $f190 : $b0, $0a

	jsr Call_00_845b                                                  ; $f192 : $20, $5b, $84
	jsr Call_00_dbb2                                                  ; $f195 : $20, $b2, $db
	jsr Call_00_dba4                                                  ; $f198 : $20, $a4, $db
	rts                                                  ; $f19b : $60


br_00_f19c:
	jsr Call_00_d700                                                  ; $f19c : $20, $00, $d7
	lda $8f                                                  ; $f19f : $a5, $8f
	bne br_00_f1e5                                                  ; $f1a1 : $d0, $42

	lda $a2                                                  ; $f1a3 : $a5, $a2
	cmp #$01                                                  ; $f1a5 : $c9, $01
	bne br_00_f18d                                                  ; $f1a7 : $d0, $e4

	jsr $df96                                                  ; $f1a9 : $20, $96, $df
	bcc br_00_f1d7                                                  ; $f1ac : $90, $29

	lda $0207                                                  ; $f1ae : $ad, $07, $02
	cmp #$18                                                  ; $f1b1 : $c9, $18
	bcc br_00_f18d                                                  ; $f1b3 : $90, $d8

	cmp #$e8                                                  ; $f1b5 : $c9, $e8
	bcs br_00_f18d                                                  ; $f1b7 : $b0, $d4

	lda $0204                                                  ; $f1b9 : $ad, $04, $02
	cmp #$30                                                  ; $f1bc : $c9, $30
	bcc br_00_f18d                                                  ; $f1be : $90, $cd

	cmp #$c0                                                  ; $f1c0 : $c9, $c0
	bcs br_00_f18d                                                  ; $f1c2 : $b0, $c9

	lda $0207                                                  ; $f1c4 : $ad, $07, $02
	lsr a                                                  ; $f1c7 : $4a
	lsr a                                                  ; $f1c8 : $4a
	lsr a                                                  ; $f1c9 : $4a
	sta $2c                                                  ; $f1ca : $85, $2c
	lda $0204                                                  ; $f1cc : $ad, $04, $02
	lsr a                                                  ; $f1cf : $4a
	lsr a                                                  ; $f1d0 : $4a
	lsr a                                                  ; $f1d1 : $4a
	sta $2d                                                  ; $f1d2 : $85, $2d
	jmp Jump_00_f24a                                                  ; $f1d4 : $4c, $4a, $f2


br_00_f1d7:
	jsr Call_00_845b                                                  ; $f1d7 : $20, $5b, $84
	lda #$00                                                  ; $f1da : $a9, $00
	sta $1c                                                  ; $f1dc : $85, $1c
	lda #$ef                                                  ; $f1de : $a9, $ef
	and $0e                                                  ; $f1e0 : $25, $0e
	sta $0e                                                  ; $f1e2 : $85, $0e
	rts                                                  ; $f1e4 : $60


br_00_f1e5:
	cmp #$1b                                                  ; $f1e5 : $c9, $1b
	beq br_00_f1d7                                                  ; $f1e7 : $f0, $ee

	cmp #$02                                                  ; $f1e9 : $c9, $02
	bne br_00_f200                                                  ; $f1eb : $d0, $13

	lda $2c                                                  ; $f1ed : $a5, $2c
	cmp #$03                                                  ; $f1ef : $c9, $03
	beq br_00_f24d                                                  ; $f1f1 : $f0, $5a

	dec $2c                                                  ; $f1f3 : $c6, $2c
	lda #$20                                                  ; $f1f5 : $a9, $20
	jsr Call_00_9070                                                  ; $f1f7 : $20, $70, $90
	jsr Call_00_9083                                                  ; $f1fa : $20, $83, $90
	jmp Jump_00_f24a                                                  ; $f1fd : $4c, $4a, $f2


br_00_f200:
	cmp #$0d                                                  ; $f200 : $c9, $0d
	beq br_00_f23a                                                  ; $f202 : $f0, $36

	cmp #$04                                                  ; $f204 : $c9, $04
	beq br_00_f232                                                  ; $f206 : $f0, $2a

	cmp #$18                                                  ; $f208 : $c9, $18
	beq br_00_f23e                                                  ; $f20a : $f0, $32

	cmp #$13                                                  ; $f20c : $c9, $13
	bne br_00_f21b                                                  ; $f20e : $d0, $0b

	lda $2c                                                  ; $f210 : $a5, $2c
	cmp #$03                                                  ; $f212 : $c9, $03
	beq br_00_f24d                                                  ; $f214 : $f0, $37

	dec $2c                                                  ; $f216 : $c6, $2c
	jmp Jump_00_f24a                                                  ; $f218 : $4c, $4a, $f2


br_00_f21b:
	cmp #$05                                                  ; $f21b : $c9, $05
	bne br_00_f22a                                                  ; $f21d : $d0, $0b

	lda $2d                                                  ; $f21f : $a5, $2d
	cmp #$06                                                  ; $f221 : $c9, $06
	beq br_00_f24d                                                  ; $f223 : $f0, $28

	dec $2d                                                  ; $f225 : $c6, $2d
	jmp Jump_00_f24a                                                  ; $f227 : $4c, $4a, $f2


br_00_f22a:
	jsr Call_00_9070                                                  ; $f22a : $20, $70, $90
	bcs br_00_f24d                                                  ; $f22d : $b0, $1e

	jsr Call_00_9083                                                  ; $f22f : $20, $83, $90

br_00_f232:
	inc $2c                                                  ; $f232 : $e6, $2c
	lda $2c                                                  ; $f234 : $a5, $2c
	cmp #$1d                                                  ; $f236 : $c9, $1d
	bcc br_00_f24a                                                  ; $f238 : $90, $10

br_00_f23a:
	lda #$03                                                  ; $f23a : $a9, $03
	sta $2c                                                  ; $f23c : $85, $2c

br_00_f23e:
	inc $2d                                                  ; $f23e : $e6, $2d
	lda $2d                                                  ; $f240 : $a5, $2d
	cmp #$18                                                  ; $f242 : $c9, $18
	bcc br_00_f24a                                                  ; $f244 : $90, $04

	lda #$06                                                  ; $f246 : $a9, $06
	sta $2d                                                  ; $f248 : $85, $2d

Jump_00_f24a:
br_00_f24a:
	jsr $8409                                                  ; $f24a : $20, $09, $84

br_00_f24d:
	jmp Jump_00_f18d                                                  ; $f24d : $4c, $8d, $f1


	.db $cf                                                  ; $f250 : $cf

Call_00_f251:
	lda #$24                                                  ; $f251 : $a9, $24
	sta $1c                                                  ; $f253 : $85, $1c
	jsr LoadScreen                                                  ; $f255 : $20, $6b, $93
	lda #$00                                                  ; $f258 : $a9, $00
	sta PPUCTRL                                                  ; $f25a : $8d, $00, $20
	sta PPUMASK                                                  ; $f25d : $8d, $01, $20
	sta $0e                                                  ; $f260 : $85, $0e
	jsr Call_00_92e2                                                  ; $f262 : $20, $e2, $92
	lda #$3f                                                  ; $f265 : $a9, $3f
	sta PPUADDR                                                  ; $f267 : $8d, $06, $20
	lda #$10                                                  ; $f26a : $a9, $10
	sta PPUADDR                                                  ; $f26c : $8d, $06, $20
	ldy #$00                                                  ; $f26f : $a0, $00

br_00_f271:
	lda $f519, y                                                  ; $f271 : $b9, $19, $f5
	sta PPUDATA                                                  ; $f274 : $8d, $07, $20
	iny                                                  ; $f277 : $c8
	cpy #$10                                                  ; $f278 : $c0, $10
	bcc br_00_f271                                                  ; $f27a : $90, $f5

	jsr Call_00_9284                                                  ; $f27c : $20, $84, $92
	jsr Call_00_929e                                                  ; $f27f : $20, $9e, $92
	rts                                                  ; $f282 : $60


Call_00_f283:
	lda $07fc                                                  ; $f283 : $ad, $fc, $07
	and #$7e                                                  ; $f286 : $29, $7e
	clc                                                  ; $f288 : $18
	adc #$10                                                  ; $f289 : $69, $10
	sta $a8                                                  ; $f28b : $85, $a8
	sta $a9                                                  ; $f28d : $85, $a9
	lda $07fc                                                  ; $f28f : $ad, $fc, $07
	and #$03                                                  ; $f292 : $29, $03
	sta $a6                                                  ; $f294 : $85, $a6
	lda #$00                                                  ; $f296 : $a9, $00
	sta $a5                                                  ; $f298 : $85, $a5
	lda #$ff                                                  ; $f29a : $a9, $ff
	sta $a7                                                  ; $f29c : $85, $a7
	lda #$08                                                  ; $f29e : $a9, $08
	sta $07fc                                                  ; $f2a0 : $8d, $fc, $07
	lda #$03                                                  ; $f2a3 : $a9, $03
	sta $0a                                                  ; $f2a5 : $85, $0a
	rts                                                  ; $f2a7 : $60


Call_00_f2a8:
	inc $a3                                                  ; $f2a8 : $e6, $a3
	bne br_00_f2d0                                                  ; $f2aa : $d0, $24

	inc $a4                                                  ; $f2ac : $e6, $a4
	lda $a4                                                  ; $f2ae : $a5, $a4
	cmp #$32                                                  ; $f2b0 : $c9, $32
	bcc br_00_f2d0                                                  ; $f2b2 : $90, $1c

	jsr Call_00_f251                                                  ; $f2b4 : $20, $51, $f2
	jsr Call_00_f283                                                  ; $f2b7 : $20, $83, $f2
	lda #$00                                                  ; $f2ba : $a9, $00
	sta $8f                                                  ; $f2bc : $85, $8f
	sta $a2                                                  ; $f2be : $85, $a2

br_00_f2c0:
	lda $8f                                                  ; $f2c0 : $a5, $8f
	ora $a2                                                  ; $f2c2 : $05, $a2
	ora $a0                                                  ; $f2c4 : $05, $a0
	ora $a1                                                  ; $f2c6 : $05, $a1
	beq br_00_f2c0                                                  ; $f2c8 : $f0, $f6

	jsr Call_00_d71c                                                  ; $f2ca : $20, $1c, $d7
	jmp ResetVector                                                  ; $f2cd : $4c, $25, $80


br_00_f2d0:
	rts                                                  ; $f2d0 : $60


	lda #$00                                                  ; $f2d1 : $a9, $00
	sta $a3                                                  ; $f2d3 : $85, $a3
	sta $a4                                                  ; $f2d5 : $85, $a4
	lda $a7                                                  ; $f2d7 : $a5, $a7
	beq br_00_f2e3                                                  ; $f2d9 : $f0, $08

	lda #$00                                                  ; $f2db : $a9, $00
	sta $a7                                                  ; $f2dd : $85, $a7
	jsr Call_00_f345                                                  ; $f2df : $20, $45, $f3
	rts                                                  ; $f2e2 : $60


br_00_f2e3:
	lda $a5                                                  ; $f2e3 : $a5, $a5
	asl a                                                  ; $f2e5 : $0a
	tay                                                  ; $f2e6 : $a8
	lda $f459, y                                                  ; $f2e7 : $b9, $59, $f4
	sta $14                                                  ; $f2ea : $85, $14
	lda $f45a, y                                                  ; $f2ec : $b9, $5a, $f4
	sta $15                                                  ; $f2ef : $85, $15
	ldy #$00                                                  ; $f2f1 : $a0, $00

br_00_f2f3:
	lda ($14), y                                                  ; $f2f3 : $b1, $14
	clc                                                  ; $f2f5 : $18
	adc $a9                                                  ; $f2f6 : $65, $a9
	sta $0200, y                                                  ; $f2f8 : $99, $00, $02
	iny                                                  ; $f2fb : $c8
	iny                                                  ; $f2fc : $c8
	iny                                                  ; $f2fd : $c8
	lda ($14), y                                                  ; $f2fe : $b1, $14
	clc                                                  ; $f300 : $18
	adc $a8                                                  ; $f301 : $65, $a8
	sta $0200, y                                                  ; $f303 : $99, $00, $02
	iny                                                  ; $f306 : $c8
	cpy #$80                                                  ; $f307 : $c0, $80
	bcc br_00_f2f3                                                  ; $f309 : $90, $e8

	lda #$01                                                  ; $f30b : $a9, $01
	bit $a6                                                  ; $f30d : $24, $a6
	bne br_00_f316                                                  ; $f30f : $d0, $05

	dec $a8                                                  ; $f311 : $c6, $a8
	jmp Jump_00_f318                                                  ; $f313 : $4c, $18, $f3


br_00_f316:
	inc $a8                                                  ; $f316 : $e6, $a8

Jump_00_f318:
	lda $a8                                                  ; $f318 : $a5, $a8
	beq br_00_f320                                                  ; $f31a : $f0, $04

	cmp #$d0                                                  ; $f31c : $c9, $d0
	bne br_00_f329                                                  ; $f31e : $d0, $09

br_00_f320:
	lda #$01                                                  ; $f320 : $a9, $01
	eor $a6                                                  ; $f322 : $45, $a6
	sta $a6                                                  ; $f324 : $85, $a6
	jmp Jump_00_f344                                                  ; $f326 : $4c, $44, $f3


br_00_f329:
	lda #$02                                                  ; $f329 : $a9, $02
	bit $a6                                                  ; $f32b : $24, $a6
	bne br_00_f334                                                  ; $f32d : $d0, $05

	dec $a9                                                  ; $f32f : $c6, $a9
	jmp Jump_00_f336                                                  ; $f331 : $4c, $36, $f3


br_00_f334:
	inc $a9                                                  ; $f334 : $e6, $a9

Jump_00_f336:
	lda $a9                                                  ; $f336 : $a5, $a9
	beq br_00_f33e                                                  ; $f338 : $f0, $04

	cmp #$b8                                                  ; $f33a : $c9, $b8
	bne br_00_f344                                                  ; $f33c : $d0, $06

br_00_f33e:
	lda #$02                                                  ; $f33e : $a9, $02
	eor $a6                                                  ; $f340 : $45, $a6
	sta $a6                                                  ; $f342 : $85, $a6

Jump_00_f344:
br_00_f344:
	rts                                                  ; $f344 : $60


Call_00_f345:
	lda $a5                                                  ; $f345 : $a5, $a5
	asl a                                                  ; $f347 : $0a
	tay                                                  ; $f348 : $a8
	lda $f459, y                                                  ; $f349 : $b9, $59, $f4
	sta $14                                                  ; $f34c : $85, $14
	lda $f45a, y                                                  ; $f34e : $b9, $5a, $f4
	sta $15                                                  ; $f351 : $85, $15
	ldy #$00                                                  ; $f353 : $a0, $00

br_00_f355:
	lda ($14), y                                                  ; $f355 : $b1, $14
	clc                                                  ; $f357 : $18
	adc $a9                                                  ; $f358 : $65, $a9
	sta $0200, y                                                  ; $f35a : $99, $00, $02
	iny                                                  ; $f35d : $c8
	lda ($14), y                                                  ; $f35e : $b1, $14
	sta $0200, y                                                  ; $f360 : $99, $00, $02
	iny                                                  ; $f363 : $c8
	lda ($14), y                                                  ; $f364 : $b1, $14
	sta $0200, y                                                  ; $f366 : $99, $00, $02
	iny                                                  ; $f369 : $c8
	lda ($14), y                                                  ; $f36a : $b1, $14
	clc                                                  ; $f36c : $18
	adc $a8                                                  ; $f36d : $65, $a8
	sta $0200, y                                                  ; $f36f : $99, $00, $02
	iny                                                  ; $f372 : $c8
	cpy #$80                                                  ; $f373 : $c0, $80
	bcc br_00_f355                                                  ; $f375 : $90, $de

	rts                                                  ; $f377 : $60


Call_00_f378:
	jsr Call_00_92aa                                                  ; $f378 : $20, $aa, $92
	lda #$0f                                                  ; $f37b : $a9, $0f
	sta PPUADDR                                                  ; $f37d : $8d, $06, $20
	lda #$b0                                                  ; $f380 : $a9, $b0
	sta PPUADDR                                                  ; $f382 : $8d, $06, $20
	ldy #$00                                                  ; $f385 : $a0, $00

br_00_f387:
	lda $f419, y                                                  ; $f387 : $b9, $19, $f4
	sta PPUDATA                                                  ; $f38a : $8d, $07, $20
	iny                                                  ; $f38d : $c8
	cpy #$10                                                  ; $f38e : $c0, $10
	bne br_00_f387                                                  ; $f390 : $d0, $f5

	jsr Call_00_92ed                                                  ; $f392 : $20, $ed, $92
	jsr Call_00_929e                                                  ; $f395 : $20, $9e, $92
	rts                                                  ; $f398 : $60


Call_00_f399:
	lda $79                                                  ; $f399 : $a5, $79
	cmp #$ff                                                  ; $f39b : $c9, $ff
	bne br_00_f3a2                                                  ; $f39d : $d0, $03

	jsr Call_00_f3e1                                                  ; $f39f : $20, $e1, $f3

Jump_00_f3a2:
br_00_f3a2:
	jsr Call_00_f429                                                  ; $f3a2 : $20, $29, $f4
	bcs br_00_f3ab                                                  ; $f3a5 : $b0, $04

	jsr Call_00_f3f6                                                  ; $f3a7 : $20, $f6, $f3
	rts                                                  ; $f3aa : $60


br_00_f3ab:
	jsr Call_00_d700                                                  ; $f3ab : $20, $00, $d7
	lda $a2                                                  ; $f3ae : $a5, $a2
	cmp #$01                                                  ; $f3b0 : $c9, $01
	beq br_00_f3c0                                                  ; $f3b2 : $f0, $0c

	cmp #$02                                                  ; $f3b4 : $c9, $02
	bne br_00_f3a2                                                  ; $f3b6 : $d0, $ea

br_00_f3b8:
	jsr Call_00_f3f6                                                  ; $f3b8 : $20, $f6, $f3
	lda #$00                                                  ; $f3bb : $a9, $00
	sta $1c                                                  ; $f3bd : $85, $1c
	rts                                                  ; $f3bf : $60


br_00_f3c0:
	jsr Call_00_f3ff                                                  ; $f3c0 : $20, $ff, $f3
	bcs br_00_f3b8                                                  ; $f3c3 : $b0, $f3

	lda $79                                                  ; $f3c5 : $a5, $79
	eor #$ff                                                  ; $f3c7 : $49, $ff
	sta $79                                                  ; $f3c9 : $85, $79
	cmp #$ff                                                  ; $f3cb : $c9, $ff
	bne br_00_f3d8                                                  ; $f3cd : $d0, $09

	jsr Call_00_f3e1                                                  ; $f3cf : $20, $e1, $f3
	jsr Call_00_9642                                                  ; $f3d2 : $20, $42, $96
	jmp Jump_00_f3a2                                                  ; $f3d5 : $4c, $a2, $f3


br_00_f3d8:
	jsr Call_00_f3f6                                                  ; $f3d8 : $20, $f6, $f3
	jsr Call_00_9652                                                  ; $f3db : $20, $52, $96
	jmp Jump_00_f3a2                                                  ; $f3de : $4c, $a2, $f3


Call_00_f3e1:
	lda #$e2                                                  ; $f3e1 : $a9, $e2
	sta $02f8                                                  ; $f3e3 : $8d, $f8, $02
	lda #$fb                                                  ; $f3e6 : $a9, $fb
	sta $02f9                                                  ; $f3e8 : $8d, $f9, $02
	lda #$00                                                  ; $f3eb : $a9, $00
	sta $02fa                                                  ; $f3ed : $8d, $fa, $02
	lda #$6a                                                  ; $f3f0 : $a9, $6a
	sta $02fb                                                  ; $f3f2 : $8d, $fb, $02
	rts                                                  ; $f3f5 : $60


Call_00_f3f6:
	lda #$ff                                                  ; $f3f6 : $a9, $ff
	sta $02f8                                                  ; $f3f8 : $8d, $f8, $02
	sta $02fb                                                  ; $f3fb : $8d, $fb, $02
	rts                                                  ; $f3fe : $60


Call_00_f3ff:
	lda $0207                                                  ; $f3ff : $ad, $07, $02
	cmp #$68                                                  ; $f402 : $c9, $68
	bcc br_00_f417                                                  ; $f404 : $90, $11

	cmp #$72                                                  ; $f406 : $c9, $72
	bcs br_00_f417                                                  ; $f408 : $b0, $0d

	lda $0204                                                  ; $f40a : $ad, $04, $02
	cmp #$e0                                                  ; $f40d : $c9, $e0
	bcc br_00_f417                                                  ; $f40f : $90, $06

	cmp #$ea                                                  ; $f411 : $c9, $ea
	bcs br_00_f417                                                  ; $f413 : $b0, $02

	clc                                                  ; $f415 : $18

br_00_f416:
	rts                                                  ; $f416 : $60


br_00_f417:
	sec                                                  ; $f417 : $38
	rts                                                  ; $f418 : $60


	.db $00                                                  ; $f419 : $00
	.db $42                                                  ; $f41a : $42
	bit $18                                                  ; $f41b : $24, $18
	clc                                                  ; $f41d : $18
	bit $42                                                  ; $f41e : $24, $42
	.db $00                                                  ; $f420 : $00
	.db $00                                                  ; $f421 : $00
	.db $00                                                  ; $f422 : $00
	.db $00                                                  ; $f423 : $00
	.db $00                                                  ; $f424 : $00
	.db $00                                                  ; $f425 : $00
	.db $00                                                  ; $f426 : $00
	.db $00                                                  ; $f427 : $00
	.db $00                                                  ; $f428 : $00

Call_00_f429:
	lda $8f                                                  ; $f429 : $a5, $8f
	cmp #$fa                                                  ; $f42b : $c9, $fa
	bne br_00_f432                                                  ; $f42d : $d0, $03

	jmp Jump_00_f438                                                  ; $f42f : $4c, $38, $f4


br_00_f432:
	cmp #$fb                                                  ; $f432 : $c9, $fb
	beq br_00_f441                                                  ; $f434 : $f0, $0b

	sec                                                  ; $f436 : $38
	rts                                                  ; $f437 : $60


Jump_00_f438:
br_00_f438:
	lda $8f                                                  ; $f438 : $a5, $8f

br_00_f43a:
	cmp #$fa                                                  ; $f43a : $c9, $fa
	beq br_00_f438                                                  ; $f43c : $f0, $fa

	jmp Jump_00_f447                                                  ; $f43e : $4c, $47, $f4


br_00_f441:
	lda $8f                                                  ; $f441 : $a5, $8f
	cmp #$fb                                                  ; $f443 : $c9, $fb
	beq br_00_f441                                                  ; $f445 : $f0, $fa

Jump_00_f447:
	lda $1c                                                  ; $f447 : $a5, $1c
	cmp #$01                                                  ; $f449 : $c9, $01
	bne br_00_f453                                                  ; $f44b : $d0, $06

	lda #$00                                                  ; $f44d : $a9, $00
	sta $1c                                                  ; $f44f : $85, $1c
	clc                                                  ; $f451 : $18
	rts                                                  ; $f452 : $60


br_00_f453:
	lda #$01                                                  ; $f453 : $a9, $01
	sta $1c                                                  ; $f455 : $85, $1c
	clc                                                  ; $f457 : $18
	rts                                                  ; $f458 : $60


	lda #$f5                                                  ; $f459 : $a9, $f5
	lda #$f5                                                  ; $f45b : $a9, $f5
	lda #$f5                                                  ; $f45d : $a9, $f5
	lda #$f5                                                  ; $f45f : $a9, $f5
	lda #$f5                                                  ; $f461 : $a9, $f5
	lda #$f5                                                  ; $f463 : $a9, $f5
	lda #$f5                                                  ; $f465 : $a9, $f5
	lda #$f5                                                  ; $f467 : $a9, $f5
	bvs br_00_f4db                                                  ; $f469 : $70, $70

	sei                                                  ; $f46b : $78
	pla                                                  ; $f46c : $68
	.db $80                                                  ; $f46d : $80
	pla                                                  ; $f46e : $68
	dey                                                  ; $f46f : $88
	rts                                                  ; $f470 : $60


	bcc br_00_f4d3                                                  ; $f471 : $90, $60

	tya                                                  ; $f473 : $98
	cli                                                  ; $f474 : $58
	ldy #$50                                                  ; $f475 : $a0, $50
	tay                                                  ; $f477 : $a8
	bvc -$50                                                  ; $f478 : $50, $b0

	pha                                                  ; $f47a : $48
	clv                                                  ; $f47b : $b8
	rti                                                  ; $f47c : $40


	clv                                                  ; $f47d : $b8
	sec                                                  ; $f47e : $38
	clv                                                  ; $f47f : $b8
	bmi br_00_f43a                                                  ; $f480 : $30, $b8

	plp                                                  ; $f482 : $28
	bcs br_00_f4a5                                                  ; $f483 : $b0, $20

br_00_f485:
	tay                                                  ; $f485 : $a8
	clc                                                  ; $f486 : $18
	ldy #$18                                                  ; $f487 : $a0, $18
	tya                                                  ; $f489 : $98
	bpl -$70                                                  ; $f48a : $10, $90

	bpl br_00_f416                                                  ; $f48c : $10, $88

	bpl -$80                                                  ; $f48e : $10, $80

	bpl $78                                                  ; $f490 : $10, $78

	bpl br_00_f504                                                  ; $f492 : $10, $70

	bpl br_00_f4fe                                                  ; $f494 : $10, $68

	bpl br_00_f4f8                                                  ; $f496 : $10, $60

	bpl br_00_f4f2                                                  ; $f498 : $10, $58

	bpl $50                                                  ; $f49a : $10, $50

	bpl br_00_f4e6                                                  ; $f49c : $10, $48

	bpl br_00_f4e0                                                  ; $f49e : $10, $40

	clc                                                  ; $f4a0 : $18
	sec                                                  ; $f4a1 : $38
	clc                                                  ; $f4a2 : $18
	bmi br_00_f4c5                                                  ; $f4a3 : $30, $20

br_00_f4a5:
	plp                                                  ; $f4a5 : $28
	plp                                                  ; $f4a6 : $28
	jsr $2030                                                  ; $f4a7 : $20, $30, $20
	sec                                                  ; $f4aa : $38
	jsr $2840                                                  ; $f4ab : $20, $40, $28
	pha                                                  ; $f4ae : $48
	bmi br_00_f501                                                  ; $f4af : $30, $50

	sec                                                  ; $f4b1 : $38
	bvc br_00_f4f4                                                  ; $f4b2 : $50, $40

	bvc br_00_f4fe                                                  ; $f4b4 : $50, $48

	bvc br_00_f508                                                  ; $f4b6 : $50, $50

	bvc $58                                                  ; $f4b8 : $50, $58

	pha                                                  ; $f4ba : $48
	rts                                                  ; $f4bb : $60


	pha                                                  ; $f4bc : $48
	pla                                                  ; $f4bd : $68
	pha                                                  ; $f4be : $48
	bvs br_00_f511                                                  ; $f4bf : $70, $50

	sei                                                  ; $f4c1 : $78
	bvc -$80                                                  ; $f4c2 : $50, $80

	cli                                                  ; $f4c4 : $58

br_00_f4c5:
	dey                                                  ; $f4c5 : $88
	rts                                                  ; $f4c6 : $60


	bcc $60                                                  ; $f4c7 : $90, $60

	tya                                                  ; $f4c9 : $98
	pla                                                  ; $f4ca : $68
	ldy #$70                                                  ; $f4cb : $a0, $70
	tay                                                  ; $f4cd : $a8
	sei                                                  ; $f4ce : $78
	tay                                                  ; $f4cf : $a8
	.db $80                                                  ; $f4d0 : $80
	tay                                                  ; $f4d1 : $a8
	dey                                                  ; $f4d2 : $88

br_00_f4d3:
	tay                                                  ; $f4d3 : $a8
	bcc -$60                                                  ; $f4d4 : $90, $a0

	tya                                                  ; $f4d6 : $98
	ldy #$a0                                                  ; $f4d7 : $a0, $a0
	tya                                                  ; $f4d9 : $98
	tay                                                  ; $f4da : $a8

br_00_f4db:
	bcc br_00_f485                                                  ; $f4db : $90, $a8

	dey                                                  ; $f4dd : $88
	bcs -$80                                                  ; $f4de : $b0, $80

br_00_f4e0:
	bcs br_00_f55a                                                  ; $f4e0 : $b0, $78

	bcs br_00_f554                                                  ; $f4e2 : $b0, $70

	bcs br_00_f54e                                                  ; $f4e4 : $b0, $68

br_00_f4e6:
	clv                                                  ; $f4e6 : $b8
	rts                                                  ; $f4e7 : $60


	clv                                                  ; $f4e8 : $b8
	cli                                                  ; $f4e9 : $58
	clv                                                  ; $f4ea : $b8
	bvc br_00_f4a5                                                  ; $f4eb : $50, $b8

	pha                                                  ; $f4ed : $48
	bcs br_00_f530                                                  ; $f4ee : $b0, $40

	bcs br_00_f532                                                  ; $f4f0 : $b0, $40

br_00_f4f2:
	bcs br_00_f52c                                                  ; $f4f2 : $b0, $38

br_00_f4f4:
	bcs br_00_f526                                                  ; $f4f4 : $b0, $30

	tay                                                  ; $f4f6 : $a8
	plp                                                  ; $f4f7 : $28

br_00_f4f8:
	tay                                                  ; $f4f8 : $a8
	jsr $18a0                                                  ; $f4f9 : $20, $a0, $18
	tya                                                  ; $f4fc : $98
	clc                                                  ; $f4fd : $18

br_00_f4fe:
	bcc br_00_f518                                                  ; $f4fe : $90, $18

	dey                                                  ; $f500 : $88

br_00_f501:
	clc                                                  ; $f501 : $18
	.db $80                                                  ; $f502 : $80
	clc                                                  ; $f503 : $18

br_00_f504:
	sei                                                  ; $f504 : $78
	jsr $2870                                                  ; $f505 : $20, $70, $28

br_00_f508:
	pla                                                  ; $f508 : $68
	bmi br_00_f56b                                                  ; $f509 : $30, $60

	sec                                                  ; $f50b : $38
	rts                                                  ; $f50c : $60


	rti                                                  ; $f50d : $40


	rts                                                  ; $f50e : $60


	pha                                                  ; $f50f : $48
	rts                                                  ; $f510 : $60


br_00_f511:
	bvc br_00_f57b                                                  ; $f511 : $50, $68

	cli                                                  ; $f513 : $58
	pla                                                  ; $f514 : $68
	rts                                                  ; $f515 : $60


	bvs br_00_f580                                                  ; $f516 : $70, $68

br_00_f518:
	bvs br_00_f559                                                  ; $f518 : $70, $3f

	ora $2737, y                                                  ; $f51a : $19, $37, $27
	.db $3f                                                  ; $f51d : $3f
	and ($21, x)                                                  ; $f51e : $21, $21
	and ($3f, x)                                                  ; $f520 : $21, $3f
	and ($21, x)                                                  ; $f522 : $21, $21
	and ($3f, x)                                                  ; $f524 : $21, $3f

br_00_f526:
	and ($21, x)                                                  ; $f526 : $21, $21
	and ($60, x)                                                  ; $f528 : $21, $60
	cpy #$00                                                  ; $f52a : $c0, $00

br_00_f52c:
	rts                                                  ; $f52c : $60


	rts                                                  ; $f52d : $60


	cmp ($00, x)                                                  ; $f52e : $c1, $00

br_00_f530:
	pla                                                  ; $f530 : $68
	rts                                                  ; $f531 : $60


br_00_f532:
	.db $c2                                                  ; $f532 : $c2
	.db $00                                                  ; $f533 : $00
	bvs br_00_f596                                                  ; $f534 : $70, $60

	.db $c3                                                  ; $f536 : $c3
	.db $00                                                  ; $f537 : $00
	sei                                                  ; $f538 : $78
	rts                                                  ; $f539 : $60


	cpy $00                                                  ; $f53a : $c4, $00
	.db $80                                                  ; $f53c : $80
	rts                                                  ; $f53d : $60


	cmp $00                                                  ; $f53e : $c5, $00

br_00_f540:
	dey                                                  ; $f540 : $88
	rts                                                  ; $f541 : $60


	dec $00                                                  ; $f542 : $c6, $00
	bcc br_00_f5a6                                                  ; $f544 : $90, $60

	.db $c7                                                  ; $f546 : $c7
	.db $00                                                  ; $f547 : $00
	tya                                                  ; $f548 : $98
	pla                                                  ; $f549 : $68
	iny                                                  ; $f54a : $c8
	.db $00                                                  ; $f54b : $00
	rts                                                  ; $f54c : $60


	pla                                                  ; $f54d : $68

br_00_f54e:
	cmp #$00                                                  ; $f54e : $c9, $00
	pla                                                  ; $f550 : $68
	pla                                                  ; $f551 : $68
	dex                                                  ; $f552 : $ca
	.db $00                                                  ; $f553 : $00

br_00_f554:
	bvs br_00_f5be                                                  ; $f554 : $70, $68

	.db $cb                                                  ; $f556 : $cb
	.db $00                                                  ; $f557 : $00
	sei                                                  ; $f558 : $78

br_00_f559:
	pla                                                  ; $f559 : $68

br_00_f55a:
	cpy $8000                                                  ; $f55a : $cc, $00, $80
	pla                                                  ; $f55d : $68
	cmp $8800                                                  ; $f55e : $cd, $00, $88
	pla                                                  ; $f561 : $68
	dec $9000                                                  ; $f562 : $ce, $00, $90
	pla                                                  ; $f565 : $68
	.db $cf                                                  ; $f566 : $cf
	.db $00                                                  ; $f567 : $00
	tya                                                  ; $f568 : $98
	bvs -$30                                                  ; $f569 : $70, $d0

br_00_f56b:
	.db $00                                                  ; $f56b : $00
	rts                                                  ; $f56c : $60


	bvs br_00_f540                                                  ; $f56d : $70, $d1

	.db $00                                                  ; $f56f : $00
	pla                                                  ; $f570 : $68
	bvs -$2e                                                  ; $f571 : $70, $d2

	.db $00                                                  ; $f573 : $00
	bvs $70                                                  ; $f574 : $70, $70

	.db $d3                                                  ; $f576 : $d3
	.db $00                                                  ; $f577 : $00
	sei                                                  ; $f578 : $78
	bvs -$2c                                                  ; $f579 : $70, $d4

br_00_f57b:
	.db $00                                                  ; $f57b : $00
	.db $80                                                  ; $f57c : $80
	bvs br_00_f554                                                  ; $f57d : $70, $d5

	.db $00                                                  ; $f57f : $00

br_00_f580:
	dey                                                  ; $f580 : $88
	bvs br_00_f559                                                  ; $f581 : $70, $d6

	.db $00                                                  ; $f583 : $00
	bcc br_00_f5f6                                                  ; $f584 : $90, $70

	.db $d7                                                  ; $f586 : $d7
	.db $00                                                  ; $f587 : $00
	tya                                                  ; $f588 : $98
	sei                                                  ; $f589 : $78
	cld                                                  ; $f58a : $d8
	.db $00                                                  ; $f58b : $00
	rts                                                  ; $f58c : $60


	sei                                                  ; $f58d : $78
	cmp $6800, y                                                  ; $f58e : $d9, $00, $68
	sei                                                  ; $f591 : $78
	.db $da                                                  ; $f592 : $da
	.db $00                                                  ; $f593 : $00
	bvs br_00_f60e                                                  ; $f594 : $70, $78

br_00_f596:
	.db $db                                                  ; $f596 : $db
	.db $00                                                  ; $f597 : $00
	sei                                                  ; $f598 : $78
	sei                                                  ; $f599 : $78
	.db $dc                                                  ; $f59a : $dc
	.db $00                                                  ; $f59b : $00
	.db $80                                                  ; $f59c : $80
	sei                                                  ; $f59d : $78
	cmp $8800, x                                                  ; $f59e : $dd, $00, $88
	sei                                                  ; $f5a1 : $78
	dec $9000, x                                                  ; $f5a2 : $de, $00, $90
	sei                                                  ; $f5a5 : $78

br_00_f5a6:
	.db $df                                                  ; $f5a6 : $df
	.db $00                                                  ; $f5a7 : $00
	tya                                                  ; $f5a8 : $98
	.db $00                                                  ; $f5a9 : $00
	ora ($00, x)                                                  ; $f5aa : $01, $00
	php                                                  ; $f5ac : $08
	.db $00                                                  ; $f5ad : $00
	.db $02                                                  ; $f5ae : $02
	.db $00                                                  ; $f5af : $00
	bpl br_00_f5b2                                                  ; $f5b0 : $10, $00

br_00_f5b2:
	.db $03                                                  ; $f5b2 : $03
	.db $00                                                  ; $f5b3 : $00
	clc                                                  ; $f5b4 : $18
	.db $00                                                  ; $f5b5 : $00
	.db $04                                                  ; $f5b6 : $04
	.db $00                                                  ; $f5b7 : $00
	jsr $0508                                                  ; $f5b8 : $20, $08, $05
	.db $00                                                  ; $f5bb : $00
	.db $00                                                  ; $f5bc : $00
	php                                                  ; $f5bd : $08

br_00_f5be:
	asl $00                                                  ; $f5be : $06, $00
	php                                                  ; $f5c0 : $08
	php                                                  ; $f5c1 : $08
	.db $07                                                  ; $f5c2 : $07
	.db $00                                                  ; $f5c3 : $00
	bpl $08                                                  ; $f5c4 : $10, $08

	php                                                  ; $f5c6 : $08
	.db $00                                                  ; $f5c7 : $00
	clc                                                  ; $f5c8 : $18
	php                                                  ; $f5c9 : $08
	ora #$00                                                  ; $f5ca : $09, $00
	jsr $0a08                                                  ; $f5cc : $20, $08, $0a
	.db $00                                                  ; $f5cf : $00
	plp                                                  ; $f5d0 : $28
	bpl br_00_f5de                                                  ; $f5d1 : $10, $0b

	.db $00                                                  ; $f5d3 : $00
	.db $00                                                  ; $f5d4 : $00
	bpl br_00_f5e3                                                  ; $f5d5 : $10, $0c

	.db $00                                                  ; $f5d7 : $00
	php                                                  ; $f5d8 : $08
	bpl br_00_f5e8                                                  ; $f5d9 : $10, $0d

	.db $00                                                  ; $f5db : $00
	bpl br_00_f5ee                                                  ; $f5dc : $10, $10

br_00_f5de:
	asl $1800                                                  ; $f5de : $0e, $00, $18
	bpl br_00_f5f2                                                  ; $f5e1 : $10, $0f

br_00_f5e3:
	.db $00                                                  ; $f5e3 : $00
	jsr $1010                                                  ; $f5e4 : $20, $10, $10
	.db $00                                                  ; $f5e7 : $00

br_00_f5e8:
	plp                                                  ; $f5e8 : $28
	clc                                                  ; $f5e9 : $18
	ora ($00), y                                                  ; $f5ea : $11, $00
	.db $00                                                  ; $f5ec : $00
	clc                                                  ; $f5ed : $18

br_00_f5ee:
	.db $12                                                  ; $f5ee : $12
	.db $00                                                  ; $f5ef : $00
	php                                                  ; $f5f0 : $08
	clc                                                  ; $f5f1 : $18

br_00_f5f2:
	.db $13                                                  ; $f5f2 : $13
	.db $00                                                  ; $f5f3 : $00
	bpl br_00_f60e                                                  ; $f5f4 : $10, $18

br_00_f5f6:
	.db $14                                                  ; $f5f6 : $14
	.db $00                                                  ; $f5f7 : $00
	clc                                                  ; $f5f8 : $18
	clc                                                  ; $f5f9 : $18
	ora $00, x                                                  ; $f5fa : $15, $00
	jsr $1618                                                  ; $f5fc : $20, $18, $16
	.db $00                                                  ; $f5ff : $00
	plp                                                  ; $f600 : $28
	jsr $0017                                                  ; $f601 : $20, $17, $00
	.db $00                                                  ; $f604 : $00
	jsr $0018                                                  ; $f605 : $20, $18, $00
	php                                                  ; $f608 : $08
	jsr $0019                                                  ; $f609 : $20, $19, $00
	bpl $20                                                  ; $f60c : $10, $20

br_00_f60e:
	.db $1a                                                  ; $f60e : $1a
	.db $00                                                  ; $f60f : $00
	clc                                                  ; $f610 : $18
	jsr $001b                                                  ; $f611 : $20, $1b, $00
	jsr $1c20                                                  ; $f614 : $20, $20, $1c
	.db $00                                                  ; $f617 : $00
	plp                                                  ; $f618 : $28
	plp                                                  ; $f619 : $28
	ora $0800, x                                                  ; $f61a : $1d, $00, $08
	plp                                                  ; $f61d : $28
	asl $1000, x                                                  ; $f61e : $1e, $00, $10
	plp                                                  ; $f621 : $28
	.db $1f                                                  ; $f622 : $1f
	.db $00                                                  ; $f623 : $00
	clc                                                  ; $f624 : $18
	plp                                                  ; $f625 : $28
	jsr $2000                                                  ; $f626 : $20, $00, $20

Jump_00_f629:
	jsr Call_00_dbb2                                                  ; $f629 : $20, $b2, $db
	jsr Call_00_845b                                                  ; $f62c : $20, $5b, $84
	jsr Call_00_90e7                                                  ; $f62f : $20, $e7, $90
	jsr Call_00_9284                                                  ; $f632 : $20, $84, $92
	lda #$28                                                  ; $f635 : $a9, $28
	sta $1c                                                  ; $f637 : $85, $1c
	jsr LoadScreen                                                  ; $f639 : $20, $6b, $93
	lda #$80                                                  ; $f63c : $a9, $80
	sta $06                                                  ; $f63e : $85, $06
	lda #$1e                                                  ; $f640 : $a9, $1e
	sta $07                                                  ; $f642 : $85, $07
	lda #$00                                                  ; $f644 : $a9, $00
	sta $0a                                                  ; $f646 : $85, $0a

Jump_00_f648:
	sta $79                                                  ; $f648 : $85, $79
	sta $11                                                  ; $f64a : $85, $11
	jsr Call_00_9652                                                  ; $f64c : $20, $52, $96
	lda #$88                                                  ; $f64f : $a9, $88
	sta $020c                                                  ; $f651 : $8d, $0c, $02
	lda #$04                                                  ; $f654 : $a9, $04
	sta $020d                                                  ; $f656 : $8d, $0d, $02
	lda #$01                                                  ; $f659 : $a9, $01
	sta $020e                                                  ; $f65b : $8d, $0e, $02
	lda $79                                                  ; $f65e : $a5, $79
	asl a                                                  ; $f660 : $0a
	asl a                                                  ; $f661 : $0a
	asl a                                                  ; $f662 : $0a
	asl a                                                  ; $f663 : $0a
	adc #$2c                                                  ; $f664 : $69, $2c
	sta $020f                                                  ; $f666 : $8d, $0f, $02

Jump_00_f669:
br_00_f669:
	lda $a2                                                  ; $f669 : $a5, $a2
	bne br_00_f669                                                  ; $f66b : $d0, $fc

	ldy #$00                                                  ; $f66d : $a0, $00
	lda #$ef                                                  ; $f66f : $a9, $ef

br_00_f671:
	sta $0210, y                                                  ; $f671 : $99, $10, $02
	iny                                                  ; $f674 : $c8
	iny                                                  ; $f675 : $c8
	iny                                                  ; $f676 : $c8
	iny                                                  ; $f677 : $c8
	cpy #$3f                                                  ; $f678 : $c0, $3f
	bcc br_00_f671                                                  ; $f67a : $90, $f5

br_00_f67c:
	lda $07fc                                                  ; $f67c : $ad, $fc, $07
	and #$0f                                                  ; $f67f : $29, $0f
	bne br_00_f6ae                                                  ; $f681 : $d0, $2b

	lda $07fc                                                  ; $f683 : $ad, $fc, $07
	lsr a                                                  ; $f686 : $4a
	lsr a                                                  ; $f687 : $4a
	lsr a                                                  ; $f688 : $4a
	lsr a                                                  ; $f689 : $4a
	and #$03                                                  ; $f68a : $29, $03
	tax                                                  ; $f68c : $aa
	lda $f78b, x                                                  ; $f68d : $bd, $8b, $f7
	sta $0703                                                  ; $f690 : $8d, $03, $07
	lda #$01                                                  ; $f693 : $a9, $01
	sta $0700                                                  ; $f695 : $8d, $00, $07
	lda #$3f                                                  ; $f698 : $a9, $3f
	sta $0701                                                  ; $f69a : $8d, $01, $07
	lda #$16                                                  ; $f69d : $a9, $16
	sta $0702                                                  ; $f69f : $8d, $02, $07
	lda #$00                                                  ; $f6a2 : $a9, $00
	sta $0704                                                  ; $f6a4 : $8d, $04, $07
	lda #$02                                                  ; $f6a7 : $a9, $02
	sta $0a                                                  ; $f6a9 : $85, $0a
	jsr Call_00_92ed                                                  ; $f6ab : $20, $ed, $92

br_00_f6ae:
	lda $a2                                                  ; $f6ae : $a5, $a2
	cmp #$01                                                  ; $f6b0 : $c9, $01
	bne br_00_f67c                                                  ; $f6b2 : $d0, $c8

	jsr $df96                                                  ; $f6b4 : $20, $96, $df
	bcs br_00_f67c                                                  ; $f6b7 : $b0, $c3

	lda $1c                                                  ; $f6b9 : $a5, $1c
	sec                                                  ; $f6bb : $38
	sbc #$30                                                  ; $f6bc : $e9, $30
	tax                                                  ; $f6be : $aa
	lda $f746, x                                                  ; $f6bf : $bd, $46, $f7
	sta $14.w                                                  ; $f6c2 : $8d, $14, $00
	ldy #$00                                                  ; $f6c5 : $a0, $00

br_00_f6c7:
	lda $f74b, y                                                  ; $f6c7 : $b9, $4b, $f7
	clc                                                  ; $f6ca : $18
	adc #$97                                                  ; $f6cb : $69, $97
	sta $0210, y                                                  ; $f6cd : $99, $10, $02
	iny                                                  ; $f6d0 : $c8
	lda $f74b, y                                                  ; $f6d1 : $b9, $4b, $f7
	sta $0210, y                                                  ; $f6d4 : $99, $10, $02
	iny                                                  ; $f6d7 : $c8
	lda $f74b, y                                                  ; $f6d8 : $b9, $4b, $f7

br_00_f6db:
	sta $0210, y                                                  ; $f6db : $99, $10, $02
	iny                                                  ; $f6de : $c8
	lda $f74b, y                                                  ; $f6df : $b9, $4b, $f7
	clc                                                  ; $f6e2 : $18
	adc $14.w                                                  ; $f6e3 : $6d, $14, $00
	sta $0210, y                                                  ; $f6e6 : $99, $10, $02

br_00_f6e9:
	iny                                                  ; $f6e9 : $c8
	cpy #$3f                                                  ; $f6ea : $c0, $3f
	bcc br_00_f6c7                                                  ; $f6ec : $90, $d9

br_00_f6ee:
	lda $1c                                                  ; $f6ee : $a5, $1c
	cmp #$30                                                  ; $f6f0 : $c9, $30
	bne br_00_f6fa                                                  ; $f6f2 : $d0, $06

	jsr Call_00_9642                                                  ; $f6f4 : $20, $42, $96

br_00_f6f7:
	jmp Jump_00_f669                                                  ; $f6f7 : $4c, $69, $f6


br_00_f6fa:
	cmp #$31                                                  ; $f6fa : $c9, $31
	bne br_00_f709                                                  ; $f6fc : $d0, $0b

	lda $11                                                  ; $f6fe : $a5, $11
	beq br_00_f6f7                                                  ; $f700 : $f0, $f5

	dec $11                                                  ; $f702 : $c6, $11

Jump_00_f704:
	lda $11                                                  ; $f704 : $a5, $11
	jmp Jump_00_f648                                                  ; $f706 : $4c, $48, $f6


br_00_f709:
	cmp #$32                                                  ; $f709 : $c9, $32
	bne br_00_f71b                                                  ; $f70b : $d0, $0e

	lda $11                                                  ; $f70d : $a5, $11
	cmp #$0a                                                  ; $f70f : $c9, $0a
	bcs br_00_f718                                                  ; $f711 : $b0, $05

	inc $11                                                  ; $f713 : $e6, $11
	jmp Jump_00_f704                                                  ; $f715 : $4c, $04, $f7


br_00_f718:
	jmp Jump_00_f669                                                  ; $f718 : $4c, $69, $f6


br_00_f71b:
	cmp #$33                                                  ; $f71b : $c9, $33
	bne br_00_f724                                                  ; $f71d : $d0, $05

	lda $11                                                  ; $f71f : $a5, $11
	jmp Jump_00_f648                                                  ; $f721 : $4c, $48, $f6


br_00_f724:
	cmp #$34                                                  ; $f724 : $c9, $34
	bne br_00_f718                                                  ; $f726 : $d0, $f0

	jmp ResetVector                                                  ; $f728 : $4c, $25, $80


	ora $00                                                  ; $f72b : $05, $00
	bmi br_00_f6c7                                                  ; $f72d : $30, $98

	bvc br_00_f6e9                                                  ; $f72f : $50, $b8

	bmi br_00_f783                                                  ; $f731 : $30, $50

	tya                                                  ; $f733 : $98
	bvs br_00_f6ee                                                  ; $f734 : $70, $b8

	and ($70), y                                                  ; $f736 : $31, $70
	tya                                                  ; $f738 : $98
	bcc -$48                                                  ; $f739 : $90, $b8

	.db $32                                                  ; $f73b : $32
	bcc -$68                                                  ; $f73c : $90, $98

	bcs -$48                                                  ; $f73e : $b0, $b8

	.db $33                                                  ; $f740 : $33
	bcs br_00_f6db                                                  ; $f741 : $b0, $98

	bne -$48                                                  ; $f743 : $d0, $b8

	.db $34                                                  ; $f745 : $34
	.db $30, $50

	bvs -$70                                                  ; $f748 : $70, $90

	bcs br_00_f74c                                                  ; $f74a : $b0, $00

br_00_f74c:
	.db $02                                                  ; $f74c : $02
	.db $02                                                  ; $f74d : $02
	.db $00                                                  ; $f74e : $00
	.db $00                                                  ; $f74f : $00
	.db $02                                                  ; $f750 : $02
	.db $02                                                  ; $f751 : $02
	php                                                  ; $f752 : $08
	.db $00                                                  ; $f753 : $00
	.db $02                                                  ; $f754 : $02
	.db $02                                                  ; $f755 : $02
	bpl br_00_f758                                                  ; $f756 : $10, $00

br_00_f758:
	.db $03                                                  ; $f758 : $03
	.db $02                                                  ; $f759 : $02
	clc                                                  ; $f75a : $18
	php                                                  ; $f75b : $08
	ora ($02, x)                                                  ; $f75c : $01, $02
	.db $00                                                  ; $f75e : $00
	php                                                  ; $f75f : $08
	ora ($02, x)                                                  ; $f760 : $01, $02
	php                                                  ; $f762 : $08
	php                                                  ; $f763 : $08
	ora ($02, x)                                                  ; $f764 : $01, $02
	bpl $08                                                  ; $f766 : $10, $08

	.db $07                                                  ; $f768 : $07
	.db $02                                                  ; $f769 : $02
	clc                                                  ; $f76a : $18
	bpl br_00_f76e                                                  ; $f76b : $10, $01

	.db $02                                                  ; $f76d : $02

br_00_f76e:
	.db $00                                                  ; $f76e : $00
	bpl br_00_f772                                                  ; $f76f : $10, $01

	.db $02                                                  ; $f771 : $02

br_00_f772:
	php                                                  ; $f772 : $08
	bpl br_00_f776                                                  ; $f773 : $10, $01

	.db $02                                                  ; $f775 : $02

br_00_f776:
	bpl br_00_f788                                                  ; $f776 : $10, $10

	.db $07                                                  ; $f778 : $07
	.db $02                                                  ; $f779 : $02
	clc                                                  ; $f77a : $18
	clc                                                  ; $f77b : $18
	php                                                  ; $f77c : $08
	.db $02                                                  ; $f77d : $02
	.db $00                                                  ; $f77e : $00
	clc                                                  ; $f77f : $18
	php                                                  ; $f780 : $08
	.db $02                                                  ; $f781 : $02
	php                                                  ; $f782 : $08

br_00_f783:
	clc                                                  ; $f783 : $18
	php                                                  ; $f784 : $08
	.db $02                                                  ; $f785 : $02
	.db $10, $18

br_00_f788:
	ora #$02                                                  ; $f788 : $09, $02
	clc                                                  ; $f78a : $18
	asl $1a, x                                                  ; $f78b : $16, $1a
	.db $12                                                  ; $f78d : $12
	clc                                                  ; $f78e : $18
	lda #$00                                                  ; $f78f : $a9, $00


.orga $fa00

	sta $8000                                                  ; $fa00 : $8d, $00, $80
	pha                                                  ; $fa03 : $48
	asl a                                                  ; $fa04 : $0a
	sta $4801                                                  ; $fa05 : $8d, $01, $48
	pla                                                  ; $fa08 : $68
	lsr a                                                  ; $fa09 : $4a
	lsr a                                                  ; $fa0a : $4a
	sta $4802                                                  ; $fa0b : $8d, $02, $48
	rts                                                  ; $fa0e : $60


.orga $ffc0

Jump_00_ffc0:
	lda #$00                                                  ; $ffc0 : $a9, $00
	sta PPUCTRL                                                  ; $ffc2 : $8d, $00, $20
	sta PPUMASK                                                  ; $ffc5 : $8d, $01, $20
	ldy #$00                                                  ; $ffc8 : $a0, $00

br_00_ffca:
	lda $ffd8, y                                                  ; $ffca : $b9, $d8, $ff
	sta $0600, y                                                  ; $ffcd : $99, $00, $06
	iny                                                  ; $ffd0 : $c8
	cpy #$20                                                  ; $ffd1 : $c0, $20
	bne br_00_ffca                                                  ; $ffd3 : $d0, $f5

	jmp $0600                                                  ; $ffd5 : $4c, $00, $06


	lda #$00                                                  ; $ffd8 : $a9, $00
	sta $8000                                                  ; $ffda : $8d, $00, $80
	sta $4800                                                  ; $ffdd : $8d, $00, $48
	sta $4801                                                  ; $ffe0 : $8d, $01, $48
	sta $4802                                                  ; $ffe3 : $8d, $02, $48
	jmp Jump_00_8006                                                  ; $ffe6 : $4c, $06, $80


	.db $00                                                  ; $ffe9 : $00
	.db $00                                                  ; $ffea : $00
	.db $00                                                  ; $ffeb : $00
	.db $00                                                  ; $ffec : $00
	.db $00                                                  ; $ffed : $00
	.db $00                                                  ; $ffee : $00
	.db $00                                                  ; $ffef : $00
	.db $00                                                  ; $fff0 : $00
	.db $00                                                  ; $fff1 : $00
	jmp Jump_00_ffc0                                                  ; $fff2 : $4c, $c0, $ff


	.db $00                                                  ; $fff5 : $00
	.db $00                                                  ; $fff6 : $00
	.db $00                                                  ; $fff7 : $00
	.db $00                                                  ; $fff8 : $00
	.db $00                                                  ; $fff9 : $00


.orga $fffa

	.dw NmiVector
	.dw ResetVector
	.dw IrqVector
