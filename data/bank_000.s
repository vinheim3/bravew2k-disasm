	.db $32                                                  ; $992e : $32
	sta $9967, y                                                  ; $992f : $99, $67, $99
	ora ($a4, x)                                                  ; $9932 : $01, $a4
	ldy #$00                                                  ; $9934 : $a0, $00
	ora ($a4, x)                                                  ; $9936 : $01, $a4
	bcs br_00_993a                                                  ; $9938 : $b0, $00

br_00_993a:
	ora ($a5, x)                                                  ; $993a : $01, $a5
	cpy #$00                                                  ; $993c : $c0, $00
	ora ($a6, x)                                                  ; $993e : $01, $a6
	ldy #$00                                                  ; $9940 : $a0, $00
	ora ($a7, x)                                                  ; $9942 : $01, $a7
	bcc br_00_9946                                                  ; $9944 : $90, $00

br_00_9946:
	ora ($a8, x)                                                  ; $9946 : $01, $a8
	.db $80                                                  ; $9948 : $80
	.db $00                                                  ; $9949 : $00
	ora ($a9, x)                                                  ; $994a : $01, $a9
	bvs br_00_994e                                                  ; $994c : $70, $00

br_00_994e:
	ora ($aa, x)                                                  ; $994e : $01, $aa
	eor $00, x                                                  ; $9950 : $55, $00
	ora ($ab, x)                                                  ; $9952 : $01, $ab
	rti                                                  ; $9954 : $40


	.db $00                                                  ; $9955 : $00
	ora ($ac, x)                                                  ; $9956 : $01, $ac
	bmi br_00_995a                                                  ; $9958 : $30, $00

br_00_995a:
	ora ($ad, x)                                                  ; $995a : $01, $ad
	jsr $0100                                                  ; $995c : $20, $00, $01
	lda $10.w                                                  ; $995f : $ad, $10, $00
	ora ($ae, x)                                                  ; $9962 : $01, $ae
	ora #$00                                                  ; $9964 : $09, $00
	.db $ff                                                  ; $9966 : $ff
	ora ($ad, x)                                                  ; $9967 : $01, $ad
	bpl br_00_996b                                                  ; $9969 : $10, $00

br_00_996b:
	ora ($ad, x)                                                  ; $996b : $01, $ad
	jsr $0100                                                  ; $996d : $20, $00, $01
	tax                                                  ; $9970 : $aa
	bmi br_00_9973                                                  ; $9971 : $30, $00

br_00_9973:
	ora ($aa, x)                                                  ; $9973 : $01, $aa
	rti                                                  ; $9975 : $40


	.db $00                                                  ; $9976 : $00
	ora ($a7, x)                                                  ; $9977 : $01, $a7
	bvc br_00_997b                                                  ; $9979 : $50, $00

br_00_997b:
	ora ($a7, x)                                                  ; $997b : $01, $a7
	rts                                                  ; $997d : $60


	.db $00                                                  ; $997e : $00
	ora ($a3, x)                                                  ; $997f : $01, $a3
	bvs br_00_9983                                                  ; $9981 : $70, $00

br_00_9983:
	ora ($a3, x)                                                  ; $9983 : $01, $a3
	.db $80                                                  ; $9985 : $80
	.db $00                                                  ; $9986 : $00
	ora ($a1, x)                                                  ; $9987 : $01, $a1
	bcc br_00_998b                                                  ; $9989 : $90, $00

br_00_998b:
	.db $ff                                                  ; $998b : $ff
	.db $9c                                                  ; $998c : $9c
	sta $99a1, y                                                  ; $998d : $99, $a1, $99
	ldx $99                                                  ; $9990 : $a6, $99
	.db $ab                                                  ; $9992 : $ab
	sta $99b0, y                                                  ; $9993 : $99, $b0, $99
	lda $99, x                                                  ; $9996 : $b5, $99
	tsx                                                  ; $9998 : $ba
	sta $99bf, y                                                  ; $9999 : $99, $bf, $99
	ora ($0f, x)                                                  ; $999c : $01, $0f
	ora $08                                                  ; $999e : $05, $08
	.db $ff                                                  ; $99a0 : $ff
	.db $0f                                                  ; $99a1 : $0f
	.db $3f                                                  ; $99a2 : $3f
	.db $0f                                                  ; $99a3 : $0f
	.db $04                                                  ; $99a4 : $04
	.db $ff                                                  ; $99a5 : $ff
	.db $03                                                  ; $99a6 : $03
	.db $0b                                                  ; $99a7 : $0b
	.db $02                                                  ; $99a8 : $02
	php                                                  ; $99a9 : $08
	.db $ff                                                  ; $99aa : $ff
	.db $03                                                  ; $99ab : $03
	.db $0f                                                  ; $99ac : $0f
	ora $08                                                  ; $99ad : $05, $08
	.db $ff                                                  ; $99af : $ff
	.db $07                                                  ; $99b0 : $07
	.db $ef                                                  ; $99b1 : $ef
	sbc ($08, x)                                                  ; $99b2 : $e1, $08
	.db $ff                                                  ; $99b4 : $ff
	ora $12                                                  ; $99b5 : $05, $12
	.db $02                                                  ; $99b7 : $02
	php                                                  ; $99b8 : $08
	.db $ff                                                  ; $99b9 : $ff
	.db $03                                                  ; $99ba : $03
	.db $ef                                                  ; $99bb : $ef

br_00_99bc:
	beq $08                                                  ; $99bc : $f0, $08

	.db $ff                                                  ; $99be : $ff
	.db $04                                                  ; $99bf : $04
	.db $ef                                                  ; $99c0 : $ef
	sta ($08), y                                                  ; $99c1 : $91, $08
	.db $ff                                                  ; $99c3 : $ff
	dex                                                  ; $99c4 : $ca
	sta $99ce, y                                                  ; $99c5 : $99, $ce, $99
	.db $d2                                                  ; $99c8 : $d2
	sta $7f8f, y                                                  ; $99c9 : $99, $8f, $7f
	.db $00                                                  ; $99cc : $00
	.db $9b                                                  ; $99cd : $9b
	.db $8f                                                  ; $99ce : $8f
	adc $a840, x                                                  ; $99cf : $7d, $40, $a8
	sty $e87f                                                  ; $99d2 : $8c, $7f, $e8
	.db $12                                                  ; $99d5 : $12
	asl a                                                  ; $99d6 : $0a
	txs                                                  ; $99d7 : $9a
	rol $a4                                                  ; $99d8 : $26, $a4
	cpy $ad                                                  ; $99da : $c4, $ad
	dey                                                  ; $99dc : $88
	lda $c2, x                                                  ; $99dd : $b5, $c2
	ldy $c5e2, x                                                  ; $99df : $bc, $e2, $c5
	.db $14                                                  ; $99e2 : $14
	.db $cb                                                  ; $99e3 : $cb
	.db $da                                                  ; $99e4 : $da
	cmp #$2e                                                  ; $99e5 : $c9, $2e
	dec $cfaa                                                  ; $99e7 : $ce, $aa, $cf
	beq br_00_99bc                                                  ; $99ea : $f0, $d0

	.db $5a                                                  ; $99ec : $5a
	.db $d2                                                  ; $99ed : $d2
	rti                                                  ; $99ee : $40


	.db $d3                                                  ; $99ef : $d3
	cmp $439e                                                  ; $99f0 : $cd, $9e, $43
	lda #$c3                                                  ; $99f3 : $a9, $c3
	.db $af                                                  ; $99f5 : $af
	sta $b8, x                                                  ; $99f6 : $95, $b8
	eor ($c0, x)                                                  ; $99f8 : $41, $c0
	and $35c7, y                                                  ; $99fa : $39, $c7, $35
	cpy $cab3                                                  ; $99fd : $cc, $b3, $ca
	sbc #$ce                                                  ; $9a00 : $e9, $ce
	.db $5f                                                  ; $9a02 : $5f
	bne -$1f                                                  ; $9a03 : $d0, $e1

	cmp ($eb), y                                                  ; $9a05 : $d1, $eb
	.db $d2                                                  ; $9a07 : $d2
	.db $cb                                                  ; $9a08 : $cb
	.db $d3                                                  ; $9a09 : $d3
	asl $ba.w                                                  ; $9a0a : $0e, $ba, $00
	.db $00                                                  ; $9a0d : $00
	sta $0eff, y                                                  ; $9a0e : $99, $ff, $0e
	tsx                                                  ; $9a11 : $ba
	.db $00                                                  ; $9a12 : $00
	.db $00                                                  ; $9a13 : $00
	ldy $0eff                                                  ; $9a14 : $ac, $ff, $0e
	tsx                                                  ; $9a17 : $ba
	.db $00                                                  ; $9a18 : $00
	.db $00                                                  ; $9a19 : $00
	sta $0eff, y                                                  ; $9a1a : $99, $ff, $0e
	tsx                                                  ; $9a1d : $ba
	.db $00                                                  ; $9a1e : $00
	.db $00                                                  ; $9a1f : $00
	sta ($ff, x)                                                  ; $9a20 : $81, $ff
	asl $ba.w                                                  ; $9a22 : $0e, $ba, $00
	.db $00                                                  ; $9a25 : $00
	.db $c2                                                  ; $9a26 : $c2
	.db $ff                                                  ; $9a27 : $ff
	asl $ba.w                                                  ; $9a28 : $0e, $ba, $00
	.db $00                                                  ; $9a2b : $00
	inc $ff                                                  ; $9a2c : $e6, $ff
	asl $ba.w                                                  ; $9a2e : $0e, $ba, $00
	.db $00                                                  ; $9a31 : $00
	sta ($ff, x)                                                  ; $9a32 : $81, $ff
	asl $ba.w                                                  ; $9a34 : $0e, $ba, $00
	.db $00                                                  ; $9a37 : $00
	sta $2aff, y                                                  ; $9a38 : $99, $ff, $2a
	tsx                                                  ; $9a3b : $ba
	.db $00                                                  ; $9a3c : $00
	.db $00                                                  ; $9a3d : $00
	ldy $07ff                                                  ; $9a3e : $ac, $ff, $07
	tsx                                                  ; $9a41 : $ba
	.db $00                                                  ; $9a42 : $00
	.db $00                                                  ; $9a43 : $00
	sta $07ff, y                                                  ; $9a44 : $99, $ff, $07
	tsx                                                  ; $9a47 : $ba
	.db $00                                                  ; $9a48 : $00
	.db $00                                                  ; $9a49 : $00
	ldy $0eff                                                  ; $9a4a : $ac, $ff, $0e
	tsx                                                  ; $9a4d : $ba
	.db $00                                                  ; $9a4e : $00
	.db $00                                                  ; $9a4f : $00
	.db $c2                                                  ; $9a50 : $c2
	.db $ff                                                  ; $9a51 : $ff
	.db $07                                                  ; $9a52 : $07
	tsx                                                  ; $9a53 : $ba
	.db $00                                                  ; $9a54 : $00
	.db $00                                                  ; $9a55 : $00
	.db $c2                                                  ; $9a56 : $c2
	.db $ff                                                  ; $9a57 : $ff
	.db $07                                                  ; $9a58 : $07
	tsx                                                  ; $9a59 : $ba
	.db $00                                                  ; $9a5a : $00
	.db $00                                                  ; $9a5b : $00
	inc $ff                                                  ; $9a5c : $e6, $ff
	asl $ba.w                                                  ; $9a5e : $0e, $ba, $00
	.db $00                                                  ; $9a61 : $00
	.db $c2                                                  ; $9a62 : $c2
	.db $ff                                                  ; $9a63 : $ff
	asl $ba.w                                                  ; $9a64 : $0e, $ba, $00
	.db $00                                                  ; $9a67 : $00
	ldy $0eff                                                  ; $9a68 : $ac, $ff, $0e
	tsx                                                  ; $9a6b : $ba
	.db $00                                                  ; $9a6c : $00
	.db $00                                                  ; $9a6d : $00
	.db $c2                                                  ; $9a6e : $c2
	.db $ff                                                  ; $9a6f : $ff
	asl $ba.w                                                  ; $9a70 : $0e, $ba, $00
	.db $00                                                  ; $9a73 : $00
	inc $ff                                                  ; $9a74 : $e6, $ff
	asl $ba.w                                                  ; $9a76 : $0e, $ba, $00
	ora ($03, x)                                                  ; $9a79 : $01, $03
	.db $ff                                                  ; $9a7b : $ff
	asl $ba.w                                                  ; $9a7c : $0e, $ba, $00
	ora ($34, x)                                                  ; $9a7f : $01, $34
	.db $ff                                                  ; $9a81 : $ff
	sec                                                  ; $9a82 : $38
	tsx                                                  ; $9a83 : $ba
	.db $00                                                  ; $9a84 : $00
	ora ($03, x)                                                  ; $9a85 : $01, $03
	.db $ff                                                  ; $9a87 : $ff
	.db $1c                                                  ; $9a88 : $1c
	tsx                                                  ; $9a89 : $ba
	.db $00                                                  ; $9a8a : $00
	.db $00                                                  ; $9a8b : $00
	inc $ff                                                  ; $9a8c : $e6, $ff
	asl $ba.w                                                  ; $9a8e : $0e, $ba, $00
	.db $00                                                  ; $9a91 : $00
	.db $c2                                                  ; $9a92 : $c2
	.db $ff                                                  ; $9a93 : $ff
	asl $ba.w                                                  ; $9a94 : $0e, $ba, $00
	ora ($03, x)                                                  ; $9a97 : $01, $03
	.db $ff                                                  ; $9a99 : $ff
	ora $ba, x                                                  ; $9a9a : $15, $ba
	.db $00                                                  ; $9a9c : $00
	.db $00                                                  ; $9a9d : $00
	inc $ff                                                  ; $9a9e : $e6, $ff
	.db $07                                                  ; $9aa0 : $07
	tsx                                                  ; $9aa1 : $ba
	.db $00                                                  ; $9aa2 : $00
	.db $00                                                  ; $9aa3 : $00
	.db $c2                                                  ; $9aa4 : $c2
	.db $ff                                                  ; $9aa5 : $ff
	asl $ba.w                                                  ; $9aa6 : $0e, $ba, $00
	.db $00                                                  ; $9aa9 : $00
	ldy $0eff                                                  ; $9aaa : $ac, $ff, $0e
	tsx                                                  ; $9aad : $ba
	.db $00                                                  ; $9aae : $00
	.db $00                                                  ; $9aaf : $00
	sta $0eff, y                                                  ; $9ab0 : $99, $ff, $0e
	tsx                                                  ; $9ab3 : $ba
	.db $00                                                  ; $9ab4 : $00
	.db $00                                                  ; $9ab5 : $00
	ldy $0eff                                                  ; $9ab6 : $ac, $ff, $0e
	tsx                                                  ; $9ab9 : $ba
	.db $00                                                  ; $9aba : $00
	.db $00                                                  ; $9abb : $00
	.db $c2                                                  ; $9abc : $c2
	.db $ff                                                  ; $9abd : $ff
	.db $07                                                  ; $9abe : $07
	tsx                                                  ; $9abf : $ba
	.db $00                                                  ; $9ac0 : $00
	.db $00                                                  ; $9ac1 : $00
	inc $ff                                                  ; $9ac2 : $e6, $ff
	.db $07                                                  ; $9ac4 : $07
	tsx                                                  ; $9ac5 : $ba
	.db $00                                                  ; $9ac6 : $00
	.db $00                                                  ; $9ac7 : $00
	.db $c2                                                  ; $9ac8 : $c2
	.db $ff                                                  ; $9ac9 : $ff
	asl $ba.w                                                  ; $9aca : $0e, $ba, $00
	ora ($03, x)                                                  ; $9acd : $01, $03
	.db $ff                                                  ; $9acf : $ff
	sec                                                  ; $9ad0 : $38
	tsx                                                  ; $9ad1 : $ba
	.db $00                                                  ; $9ad2 : $00
	.db $00                                                  ; $9ad3 : $00
	inc $ff                                                  ; $9ad4 : $e6, $ff
	ora $ba, x                                                  ; $9ad6 : $15, $ba
	.db $00                                                  ; $9ad8 : $00
	.db $00                                                  ; $9ad9 : $00
	inc $ff                                                  ; $9ada : $e6, $ff
	.db $07                                                  ; $9adc : $07
	tsx                                                  ; $9add : $ba
	.db $00                                                  ; $9ade : $00
	.db $00                                                  ; $9adf : $00
	.db $c2                                                  ; $9ae0 : $c2
	.db $ff                                                  ; $9ae1 : $ff
	asl $ba.w                                                  ; $9ae2 : $0e, $ba, $00
	.db $00                                                  ; $9ae5 : $00
	ldy $0eff                                                  ; $9ae6 : $ac, $ff, $0e
	tsx                                                  ; $9ae9 : $ba
	.db $00                                                  ; $9aea : $00
	.db $00                                                  ; $9aeb : $00
	sta $0eff, y                                                  ; $9aec : $99, $ff, $0e
	tsx                                                  ; $9aef : $ba
	.db $00                                                  ; $9af0 : $00
	.db $00                                                  ; $9af1 : $00
	ldy $0eff                                                  ; $9af2 : $ac, $ff, $0e
	tsx                                                  ; $9af5 : $ba
	.db $00                                                  ; $9af6 : $00
	.db $00                                                  ; $9af7 : $00
	.db $c2                                                  ; $9af8 : $c2
	.db $ff                                                  ; $9af9 : $ff
	asl $ba.w                                                  ; $9afa : $0e, $ba, $00
	.db $00                                                  ; $9afd : $00
	inc $ff                                                  ; $9afe : $e6, $ff
	asl $ba.w                                                  ; $9b00 : $0e, $ba, $00
	ora ($03, x)                                                  ; $9b03 : $01, $03
	.db $ff                                                  ; $9b05 : $ff
	ora $ba, x                                                  ; $9b06 : $15, $ba
	.db $00                                                  ; $9b08 : $00
	ora ($34, x)                                                  ; $9b09 : $01, $34
	.db $ff                                                  ; $9b0b : $ff
	.db $07                                                  ; $9b0c : $07
	tsx                                                  ; $9b0d : $ba
	.db $00                                                  ; $9b0e : $00
	ora ($03, x)                                                  ; $9b0f : $01, $03
	.db $ff                                                  ; $9b11 : $ff
	asl $ba.w                                                  ; $9b12 : $0e, $ba, $00
	.db $00                                                  ; $9b15 : $00
	.db $c2                                                  ; $9b16 : $c2
	.db $ff                                                  ; $9b17 : $ff
	asl $ba.w                                                  ; $9b18 : $0e, $ba, $00
	.db $00                                                  ; $9b1b : $00
	inc $ff                                                  ; $9b1c : $e6, $ff
	sec                                                  ; $9b1e : $38
	tsx                                                  ; $9b1f : $ba
	.db $00                                                  ; $9b20 : $00
	ora ($03, x)                                                  ; $9b21 : $01, $03
	.db $ff                                                  ; $9b23 : $ff
	.db $07                                                  ; $9b24 : $07
	.db $a7                                                  ; $9b25 : $a7
	.db $00                                                  ; $9b26 : $00
	.db $00                                                  ; $9b27 : $00
	.db $c2                                                  ; $9b28 : $c2
	.db $ff                                                  ; $9b29 : $ff
	.db $07                                                  ; $9b2a : $07
	.db $a7                                                  ; $9b2b : $a7
	.db $00                                                  ; $9b2c : $00
	.db $00                                                  ; $9b2d : $00
	ldy $07ff                                                  ; $9b2e : $ac, $ff, $07
	.db $a7                                                  ; $9b31 : $a7
	.db $00                                                  ; $9b32 : $00
	.db $00                                                  ; $9b33 : $00
	sta $07ff, y                                                  ; $9b34 : $99, $ff, $07
	.db $a7                                                  ; $9b37 : $a7
	.db $00                                                  ; $9b38 : $00
	.db $00                                                  ; $9b39 : $00
	sta ($ff, x)                                                  ; $9b3a : $81, $ff
	.db $07                                                  ; $9b3c : $07
	.db $a7                                                  ; $9b3d : $a7
	.db $00                                                  ; $9b3e : $00
	.db $00                                                  ; $9b3f : $00
	ldy $07ff                                                  ; $9b40 : $ac, $ff, $07
	.db $a7                                                  ; $9b43 : $a7
	.db $00                                                  ; $9b44 : $00
	.db $00                                                  ; $9b45 : $00
	.db $c2                                                  ; $9b46 : $c2
	.db $ff                                                  ; $9b47 : $ff
	asl $a7.w                                                  ; $9b48 : $0e, $a7, $00
	.db $00                                                  ; $9b4b : $00
	inc $ff                                                  ; $9b4c : $e6, $ff
	clc                                                  ; $9b4e : $18
	.db $a7                                                  ; $9b4f : $a7
	.db $00                                                  ; $9b50 : $00
	ora ($03, x)                                                  ; $9b51 : $01, $03
	.db $ff                                                  ; $9b53 : $ff
	.db $04                                                  ; $9b54 : $04
	.db $a7                                                  ; $9b55 : $a7
	.db $00                                                  ; $9b56 : $00
	.db $00                                                  ; $9b57 : $00
	ora ($ff, x)                                                  ; $9b58 : $01, $ff
	.db $07                                                  ; $9b5a : $07
	.db $a7                                                  ; $9b5b : $a7
	.db $00                                                  ; $9b5c : $00
	.db $00                                                  ; $9b5d : $00
	inc $ff                                                  ; $9b5e : $e6, $ff
	.db $07                                                  ; $9b60 : $07
	.db $a7                                                  ; $9b61 : $a7
	.db $00                                                  ; $9b62 : $00
	ora ($03, x)                                                  ; $9b63 : $01, $03
	.db $ff                                                  ; $9b65 : $ff
	.db $07                                                  ; $9b66 : $07
	.db $a7                                                  ; $9b67 : $a7
	.db $00                                                  ; $9b68 : $00
	.db $00                                                  ; $9b69 : $00
	inc $ff                                                  ; $9b6a : $e6, $ff
	.db $07                                                  ; $9b6c : $07
	.db $a7                                                  ; $9b6d : $a7
	.db $00                                                  ; $9b6e : $00
	.db $00                                                  ; $9b6f : $00
	.db $c2                                                  ; $9b70 : $c2
	.db $ff                                                  ; $9b71 : $ff
	clc                                                  ; $9b72 : $18
	.db $a7                                                  ; $9b73 : $a7
	.db $00                                                  ; $9b74 : $00
	ora ($03, x)                                                  ; $9b75 : $01, $03
	.db $ff                                                  ; $9b77 : $ff
	jsr $00a7                                                  ; $9b78 : $20, $a7, $00
	.db $00                                                  ; $9b7b : $00
	ora ($ff, x)                                                  ; $9b7c : $01, $ff
	asl $0a.w                                                  ; $9b7e : $0e, $0a, $00
	.db $00                                                  ; $9b81 : $00
	sta $0eff, y                                                  ; $9b82 : $99, $ff, $0e
	asl a                                                  ; $9b85 : $0a
	.db $00                                                  ; $9b86 : $00
	.db $00                                                  ; $9b87 : $00
	ldy $0eff                                                  ; $9b88 : $ac, $ff, $0e
	asl a                                                  ; $9b8b : $0a
	.db $00                                                  ; $9b8c : $00
	.db $00                                                  ; $9b8d : $00
	sta $0eff, y                                                  ; $9b8e : $99, $ff, $0e
	asl a                                                  ; $9b91 : $0a
	.db $00                                                  ; $9b92 : $00
	.db $00                                                  ; $9b93 : $00
	sta ($ff, x)                                                  ; $9b94 : $81, $ff
	asl $0a.w                                                  ; $9b96 : $0e, $0a, $00
	.db $00                                                  ; $9b99 : $00
	.db $c2                                                  ; $9b9a : $c2
	.db $ff                                                  ; $9b9b : $ff
	asl $0a.w                                                  ; $9b9c : $0e, $0a, $00
	.db $00                                                  ; $9b9f : $00
	inc $ff                                                  ; $9ba0 : $e6, $ff
	asl $0a.w                                                  ; $9ba2 : $0e, $0a, $00
	.db $00                                                  ; $9ba5 : $00
	sta ($ff, x)                                                  ; $9ba6 : $81, $ff
	asl $0a.w                                                  ; $9ba8 : $0e, $0a, $00
	.db $00                                                  ; $9bab : $00
	sta $2aff, y                                                  ; $9bac : $99, $ff, $2a
	asl a                                                  ; $9baf : $0a
	.db $00                                                  ; $9bb0 : $00
	.db $00                                                  ; $9bb1 : $00
	ldy $07ff                                                  ; $9bb2 : $ac, $ff, $07
	asl a                                                  ; $9bb5 : $0a
	.db $00                                                  ; $9bb6 : $00
	.db $00                                                  ; $9bb7 : $00
	sta $07ff, y                                                  ; $9bb8 : $99, $ff, $07
	asl a                                                  ; $9bbb : $0a
	.db $00                                                  ; $9bbc : $00
	.db $00                                                  ; $9bbd : $00
	ldy $0eff                                                  ; $9bbe : $ac, $ff, $0e
	asl a                                                  ; $9bc1 : $0a
	.db $00                                                  ; $9bc2 : $00
	.db $00                                                  ; $9bc3 : $00
	.db $c2                                                  ; $9bc4 : $c2
	.db $ff                                                  ; $9bc5 : $ff
	.db $07                                                  ; $9bc6 : $07
	asl a                                                  ; $9bc7 : $0a
	.db $00                                                  ; $9bc8 : $00
	.db $00                                                  ; $9bc9 : $00
	.db $c2                                                  ; $9bca : $c2
	.db $ff                                                  ; $9bcb : $ff
	.db $07                                                  ; $9bcc : $07
	asl a                                                  ; $9bcd : $0a
	.db $00                                                  ; $9bce : $00
	.db $00                                                  ; $9bcf : $00
	inc $ff                                                  ; $9bd0 : $e6, $ff
	asl $0a.w                                                  ; $9bd2 : $0e, $0a, $00
	.db $00                                                  ; $9bd5 : $00
	.db $c2                                                  ; $9bd6 : $c2
	.db $ff                                                  ; $9bd7 : $ff
	asl $0a.w                                                  ; $9bd8 : $0e, $0a, $00
	.db $00                                                  ; $9bdb : $00
	ldy $0eff                                                  ; $9bdc : $ac, $ff, $0e
	asl a                                                  ; $9bdf : $0a
	.db $00                                                  ; $9be0 : $00
	.db $00                                                  ; $9be1 : $00
	.db $c2                                                  ; $9be2 : $c2
	.db $ff                                                  ; $9be3 : $ff
	asl $0a.w                                                  ; $9be4 : $0e, $0a, $00
	.db $00                                                  ; $9be7 : $00
	inc $ff                                                  ; $9be8 : $e6, $ff
	asl $0a.w                                                  ; $9bea : $0e, $0a, $00
	ora ($03, x)                                                  ; $9bed : $01, $03
	.db $ff                                                  ; $9bef : $ff
	asl $0a.w                                                  ; $9bf0 : $0e, $0a, $00
	ora ($34, x)                                                  ; $9bf3 : $01, $34
	.db $ff                                                  ; $9bf5 : $ff
	sec                                                  ; $9bf6 : $38
	asl a                                                  ; $9bf7 : $0a
	.db $00                                                  ; $9bf8 : $00
	ora ($03, x)                                                  ; $9bf9 : $01, $03
	.db $ff                                                  ; $9bfb : $ff
	.db $1c                                                  ; $9bfc : $1c
	asl a                                                  ; $9bfd : $0a
	.db $00                                                  ; $9bfe : $00
	.db $00                                                  ; $9bff : $00
	inc $ff                                                  ; $9c00 : $e6, $ff
	asl $0a.w                                                  ; $9c02 : $0e, $0a, $00
	.db $00                                                  ; $9c05 : $00
	.db $c2                                                  ; $9c06 : $c2
	.db $ff                                                  ; $9c07 : $ff
	asl $0a.w                                                  ; $9c08 : $0e, $0a, $00
	ora ($03, x)                                                  ; $9c0b : $01, $03
	.db $ff                                                  ; $9c0d : $ff
	ora $0a, x                                                  ; $9c0e : $15, $0a
	.db $00                                                  ; $9c10 : $00
	.db $00                                                  ; $9c11 : $00
	inc $ff                                                  ; $9c12 : $e6, $ff
	.db $07                                                  ; $9c14 : $07
	asl a                                                  ; $9c15 : $0a
	.db $00                                                  ; $9c16 : $00
	.db $00                                                  ; $9c17 : $00
	.db $c2                                                  ; $9c18 : $c2
	.db $ff                                                  ; $9c19 : $ff
	asl $0a.w                                                  ; $9c1a : $0e, $0a, $00
	.db $00                                                  ; $9c1d : $00
	ldy $0eff                                                  ; $9c1e : $ac, $ff, $0e
	asl a                                                  ; $9c21 : $0a
	.db $00                                                  ; $9c22 : $00
	.db $00                                                  ; $9c23 : $00
	sta $0eff, y                                                  ; $9c24 : $99, $ff, $0e
	asl a                                                  ; $9c27 : $0a
	.db $00                                                  ; $9c28 : $00
	.db $00                                                  ; $9c29 : $00
	ldy $0eff                                                  ; $9c2a : $ac, $ff, $0e
	asl a                                                  ; $9c2d : $0a
	.db $00                                                  ; $9c2e : $00
	.db $00                                                  ; $9c2f : $00
	.db $c2                                                  ; $9c30 : $c2
	.db $ff                                                  ; $9c31 : $ff
	.db $07                                                  ; $9c32 : $07
	asl a                                                  ; $9c33 : $0a
	.db $00                                                  ; $9c34 : $00
	.db $00                                                  ; $9c35 : $00
	inc $ff                                                  ; $9c36 : $e6, $ff
	.db $07                                                  ; $9c38 : $07
	asl a                                                  ; $9c39 : $0a
	.db $00                                                  ; $9c3a : $00
	.db $00                                                  ; $9c3b : $00
	.db $c2                                                  ; $9c3c : $c2
	.db $ff                                                  ; $9c3d : $ff
	asl $0a.w                                                  ; $9c3e : $0e, $0a, $00
	ora ($03, x)                                                  ; $9c41 : $01, $03
	.db $ff                                                  ; $9c43 : $ff
	sec                                                  ; $9c44 : $38
	asl a                                                  ; $9c45 : $0a
	.db $00                                                  ; $9c46 : $00
	.db $00                                                  ; $9c47 : $00
	inc $ff                                                  ; $9c48 : $e6, $ff
	ora $0a, x                                                  ; $9c4a : $15, $0a
	.db $00                                                  ; $9c4c : $00
	.db $00                                                  ; $9c4d : $00
	inc $ff                                                  ; $9c4e : $e6, $ff
	.db $07                                                  ; $9c50 : $07
	asl a                                                  ; $9c51 : $0a
	.db $00                                                  ; $9c52 : $00
	.db $00                                                  ; $9c53 : $00
	.db $c2                                                  ; $9c54 : $c2
	.db $ff                                                  ; $9c55 : $ff
	asl $0a.w                                                  ; $9c56 : $0e, $0a, $00
	.db $00                                                  ; $9c59 : $00
	ldy $0eff                                                  ; $9c5a : $ac, $ff, $0e
	asl a                                                  ; $9c5d : $0a
	.db $00                                                  ; $9c5e : $00
	.db $00                                                  ; $9c5f : $00
	sta $0eff, y                                                  ; $9c60 : $99, $ff, $0e
	asl a                                                  ; $9c63 : $0a
	.db $00                                                  ; $9c64 : $00
	.db $00                                                  ; $9c65 : $00
	ldy $0eff                                                  ; $9c66 : $ac, $ff, $0e
	asl a                                                  ; $9c69 : $0a
	.db $00                                                  ; $9c6a : $00
	.db $00                                                  ; $9c6b : $00
	.db $c2                                                  ; $9c6c : $c2
	.db $ff                                                  ; $9c6d : $ff
	asl $0a.w                                                  ; $9c6e : $0e, $0a, $00
	.db $00                                                  ; $9c71 : $00
	inc $ff                                                  ; $9c72 : $e6, $ff
	asl $0a.w                                                  ; $9c74 : $0e, $0a, $00
	ora ($03, x)                                                  ; $9c77 : $01, $03
	.db $ff                                                  ; $9c79 : $ff
	ora $0a, x                                                  ; $9c7a : $15, $0a
	.db $00                                                  ; $9c7c : $00
	ora ($34, x)                                                  ; $9c7d : $01, $34
	.db $ff                                                  ; $9c7f : $ff
	.db $07                                                  ; $9c80 : $07
	asl a                                                  ; $9c81 : $0a
	.db $00                                                  ; $9c82 : $00
	ora ($03, x)                                                  ; $9c83 : $01, $03
	.db $ff                                                  ; $9c85 : $ff
	asl $0a.w                                                  ; $9c86 : $0e, $0a, $00
	.db $00                                                  ; $9c89 : $00
	.db $c2                                                  ; $9c8a : $c2
	.db $ff                                                  ; $9c8b : $ff
	asl $0a.w                                                  ; $9c8c : $0e, $0a, $00
	.db $00                                                  ; $9c8f : $00
	inc $ff                                                  ; $9c90 : $e6, $ff
	sec                                                  ; $9c92 : $38
	.db $0b                                                  ; $9c93 : $0b
	.db $00                                                  ; $9c94 : $00
	ora ($03, x)                                                  ; $9c95 : $01, $03
	.db $ff                                                  ; $9c97 : $ff
	asl $0a.w                                                  ; $9c98 : $0e, $0a, $00
	.db $00                                                  ; $9c9b : $00
	sta $0eff, y                                                  ; $9c9c : $99, $ff, $0e
	asl a                                                  ; $9c9f : $0a
	.db $00                                                  ; $9ca0 : $00
	.db $00                                                  ; $9ca1 : $00
	ldy $0eff                                                  ; $9ca2 : $ac, $ff, $0e
	asl a                                                  ; $9ca5 : $0a
	.db $00                                                  ; $9ca6 : $00
	.db $00                                                  ; $9ca7 : $00
	sta $0eff, y                                                  ; $9ca8 : $99, $ff, $0e
	asl a                                                  ; $9cab : $0a
	.db $00                                                  ; $9cac : $00
	.db $00                                                  ; $9cad : $00
	sta ($ff, x)                                                  ; $9cae : $81, $ff
	asl $0a.w                                                  ; $9cb0 : $0e, $0a, $00
	.db $00                                                  ; $9cb3 : $00
	.db $c2                                                  ; $9cb4 : $c2
	.db $ff                                                  ; $9cb5 : $ff
	asl $0a.w                                                  ; $9cb6 : $0e, $0a, $00
	.db $00                                                  ; $9cb9 : $00
	inc $ff                                                  ; $9cba : $e6, $ff
	asl $0a.w                                                  ; $9cbc : $0e, $0a, $00
	.db $00                                                  ; $9cbf : $00
	sta ($ff, x)                                                  ; $9cc0 : $81, $ff
	asl $0a.w                                                  ; $9cc2 : $0e, $0a, $00
	.db $00                                                  ; $9cc5 : $00
	sta $2aff, y                                                  ; $9cc6 : $99, $ff, $2a
	asl a                                                  ; $9cc9 : $0a
	.db $00                                                  ; $9cca : $00
	.db $00                                                  ; $9ccb : $00
	ldy $07ff                                                  ; $9ccc : $ac, $ff, $07
	asl a                                                  ; $9ccf : $0a
	.db $00                                                  ; $9cd0 : $00
	.db $00                                                  ; $9cd1 : $00
	sta $07ff, y                                                  ; $9cd2 : $99, $ff, $07
	asl a                                                  ; $9cd5 : $0a
	.db $00                                                  ; $9cd6 : $00
	.db $00                                                  ; $9cd7 : $00
	ldy $0eff                                                  ; $9cd8 : $ac, $ff, $0e
	asl a                                                  ; $9cdb : $0a
	.db $00                                                  ; $9cdc : $00
	.db $00                                                  ; $9cdd : $00
	.db $c2                                                  ; $9cde : $c2
	.db $ff                                                  ; $9cdf : $ff
	.db $07                                                  ; $9ce0 : $07
	asl a                                                  ; $9ce1 : $0a
	.db $00                                                  ; $9ce2 : $00
	.db $00                                                  ; $9ce3 : $00
	.db $c2                                                  ; $9ce4 : $c2
	.db $ff                                                  ; $9ce5 : $ff
	.db $07                                                  ; $9ce6 : $07
	asl a                                                  ; $9ce7 : $0a
	.db $00                                                  ; $9ce8 : $00
	.db $00                                                  ; $9ce9 : $00
	inc $ff                                                  ; $9cea : $e6, $ff
	asl $0a.w                                                  ; $9cec : $0e, $0a, $00
	.db $00                                                  ; $9cef : $00
	.db $c2                                                  ; $9cf0 : $c2
	.db $ff                                                  ; $9cf1 : $ff
	asl $0a.w                                                  ; $9cf2 : $0e, $0a, $00
	.db $00                                                  ; $9cf5 : $00
	ldy $0eff                                                  ; $9cf6 : $ac, $ff, $0e
	asl a                                                  ; $9cf9 : $0a
	.db $00                                                  ; $9cfa : $00
	.db $00                                                  ; $9cfb : $00
	.db $c2                                                  ; $9cfc : $c2
	.db $ff                                                  ; $9cfd : $ff
	asl $0a.w                                                  ; $9cfe : $0e, $0a, $00
	.db $00                                                  ; $9d01 : $00
	inc $ff                                                  ; $9d02 : $e6, $ff
	asl $0a.w                                                  ; $9d04 : $0e, $0a, $00
	ora ($03, x)                                                  ; $9d07 : $01, $03
	.db $ff                                                  ; $9d09 : $ff
	asl $0a.w                                                  ; $9d0a : $0e, $0a, $00
	ora ($34, x)                                                  ; $9d0d : $01, $34
	.db $ff                                                  ; $9d0f : $ff
	sec                                                  ; $9d10 : $38
	asl a                                                  ; $9d11 : $0a
	.db $00                                                  ; $9d12 : $00
	ora ($03, x)                                                  ; $9d13 : $01, $03
	.db $ff                                                  ; $9d15 : $ff
	.db $1c                                                  ; $9d16 : $1c
	asl a                                                  ; $9d17 : $0a
	.db $00                                                  ; $9d18 : $00
	.db $00                                                  ; $9d19 : $00
	inc $ff                                                  ; $9d1a : $e6, $ff
	asl $0a.w                                                  ; $9d1c : $0e, $0a, $00
	.db $00                                                  ; $9d1f : $00
	.db $c2                                                  ; $9d20 : $c2
	.db $ff                                                  ; $9d21 : $ff
	asl $0a.w                                                  ; $9d22 : $0e, $0a, $00
	ora ($03, x)                                                  ; $9d25 : $01, $03
	.db $ff                                                  ; $9d27 : $ff
	ora $0a, x                                                  ; $9d28 : $15, $0a
	.db $00                                                  ; $9d2a : $00
	.db $00                                                  ; $9d2b : $00
	inc $ff                                                  ; $9d2c : $e6, $ff
	.db $07                                                  ; $9d2e : $07
	asl a                                                  ; $9d2f : $0a
	.db $00                                                  ; $9d30 : $00
	.db $00                                                  ; $9d31 : $00
	.db $c2                                                  ; $9d32 : $c2
	.db $ff                                                  ; $9d33 : $ff
	asl $0a.w                                                  ; $9d34 : $0e, $0a, $00
	.db $00                                                  ; $9d37 : $00
	ldy $0eff                                                  ; $9d38 : $ac, $ff, $0e
	asl a                                                  ; $9d3b : $0a
	.db $00                                                  ; $9d3c : $00
	.db $00                                                  ; $9d3d : $00
	sta $0eff, y                                                  ; $9d3e : $99, $ff, $0e
	asl a                                                  ; $9d41 : $0a
	.db $00                                                  ; $9d42 : $00
	.db $00                                                  ; $9d43 : $00
	ldy $0eff                                                  ; $9d44 : $ac, $ff, $0e
	asl a                                                  ; $9d47 : $0a
	.db $00                                                  ; $9d48 : $00
	.db $00                                                  ; $9d49 : $00
	.db $c2                                                  ; $9d4a : $c2
	.db $ff                                                  ; $9d4b : $ff
	.db $07                                                  ; $9d4c : $07
	asl a                                                  ; $9d4d : $0a
	.db $00                                                  ; $9d4e : $00
	.db $00                                                  ; $9d4f : $00
	inc $ff                                                  ; $9d50 : $e6, $ff
	.db $07                                                  ; $9d52 : $07
	asl a                                                  ; $9d53 : $0a
	.db $00                                                  ; $9d54 : $00
	.db $00                                                  ; $9d55 : $00
	.db $c2                                                  ; $9d56 : $c2
	.db $ff                                                  ; $9d57 : $ff
	asl $0a.w                                                  ; $9d58 : $0e, $0a, $00
	ora ($03, x)                                                  ; $9d5b : $01, $03
	.db $ff                                                  ; $9d5d : $ff
	sec                                                  ; $9d5e : $38
	asl a                                                  ; $9d5f : $0a
	.db $00                                                  ; $9d60 : $00
	.db $00                                                  ; $9d61 : $00
	inc $ff                                                  ; $9d62 : $e6, $ff
	ora $0a, x                                                  ; $9d64 : $15, $0a
	.db $00                                                  ; $9d66 : $00
	.db $00                                                  ; $9d67 : $00
	inc $ff                                                  ; $9d68 : $e6, $ff
	.db $07                                                  ; $9d6a : $07
	asl a                                                  ; $9d6b : $0a
	.db $00                                                  ; $9d6c : $00
	.db $00                                                  ; $9d6d : $00
	.db $c2                                                  ; $9d6e : $c2
	.db $ff                                                  ; $9d6f : $ff
	asl $0a.w                                                  ; $9d70 : $0e, $0a, $00
	.db $00                                                  ; $9d73 : $00
	ldy $0eff                                                  ; $9d74 : $ac, $ff, $0e
	asl a                                                  ; $9d77 : $0a
	.db $00                                                  ; $9d78 : $00
	.db $00                                                  ; $9d79 : $00
	sta $0eff, y                                                  ; $9d7a : $99, $ff, $0e
	asl a                                                  ; $9d7d : $0a
	.db $00                                                  ; $9d7e : $00
	.db $00                                                  ; $9d7f : $00
	ldy $0eff                                                  ; $9d80 : $ac, $ff, $0e
	asl a                                                  ; $9d83 : $0a
	.db $00                                                  ; $9d84 : $00
	.db $00                                                  ; $9d85 : $00
	.db $c2                                                  ; $9d86 : $c2
	.db $ff                                                  ; $9d87 : $ff
	asl $0a.w                                                  ; $9d88 : $0e, $0a, $00
	.db $00                                                  ; $9d8b : $00
	inc $ff                                                  ; $9d8c : $e6, $ff
	asl $0a.w                                                  ; $9d8e : $0e, $0a, $00
	ora ($03, x)                                                  ; $9d91 : $01, $03
	.db $ff                                                  ; $9d93 : $ff
	ora $0a, x                                                  ; $9d94 : $15, $0a
	.db $00                                                  ; $9d96 : $00
	ora ($34, x)                                                  ; $9d97 : $01, $34
	.db $ff                                                  ; $9d99 : $ff
	.db $07                                                  ; $9d9a : $07
	asl a                                                  ; $9d9b : $0a
	.db $00                                                  ; $9d9c : $00
	ora ($03, x)                                                  ; $9d9d : $01, $03
	.db $ff                                                  ; $9d9f : $ff
	asl $0a.w                                                  ; $9da0 : $0e, $0a, $00
	.db $00                                                  ; $9da3 : $00
	.db $c2                                                  ; $9da4 : $c2
	.db $ff                                                  ; $9da5 : $ff
	asl $0a.w                                                  ; $9da6 : $0e, $0a, $00
	.db $00                                                  ; $9da9 : $00
	inc $ff                                                  ; $9daa : $e6, $ff
	sec                                                  ; $9dac : $38
	tsx                                                  ; $9dad : $ba
	.db $00                                                  ; $9dae : $00
	ora ($03, x)                                                  ; $9daf : $01, $03
	.db $ff                                                  ; $9db1 : $ff
	asl $ba.w                                                  ; $9db2 : $0e, $ba, $00
	.db $00                                                  ; $9db5 : $00
	sta $0eff, y                                                  ; $9db6 : $99, $ff, $0e
	tsx                                                  ; $9db9 : $ba
	.db $00                                                  ; $9dba : $00
	.db $00                                                  ; $9dbb : $00
	ldy $0eff                                                  ; $9dbc : $ac, $ff, $0e
	tsx                                                  ; $9dbf : $ba
	.db $00                                                  ; $9dc0 : $00
	.db $00                                                  ; $9dc1 : $00
	sta $0eff, y                                                  ; $9dc2 : $99, $ff, $0e
	tsx                                                  ; $9dc5 : $ba
	.db $00                                                  ; $9dc6 : $00
	.db $00                                                  ; $9dc7 : $00
	sta ($ff, x)                                                  ; $9dc8 : $81, $ff
	asl $ba.w                                                  ; $9dca : $0e, $ba, $00
	.db $00                                                  ; $9dcd : $00
	.db $c2                                                  ; $9dce : $c2
	.db $ff                                                  ; $9dcf : $ff
	asl $ba.w                                                  ; $9dd0 : $0e, $ba, $00
	.db $00                                                  ; $9dd3 : $00
	inc $ff                                                  ; $9dd4 : $e6, $ff
	asl $ba.w                                                  ; $9dd6 : $0e, $ba, $00
	.db $00                                                  ; $9dd9 : $00
	sta ($ff, x)                                                  ; $9dda : $81, $ff
	asl $ba.w                                                  ; $9ddc : $0e, $ba, $00
	.db $00                                                  ; $9ddf : $00
	sta $2aff, y                                                  ; $9de0 : $99, $ff, $2a
	tsx                                                  ; $9de3 : $ba
	.db $00                                                  ; $9de4 : $00
	.db $00                                                  ; $9de5 : $00
	ldy $07ff                                                  ; $9de6 : $ac, $ff, $07
	tsx                                                  ; $9de9 : $ba
	.db $00                                                  ; $9dea : $00
	.db $00                                                  ; $9deb : $00
	sta $07ff, y                                                  ; $9dec : $99, $ff, $07
	tsx                                                  ; $9def : $ba
	.db $00                                                  ; $9df0 : $00
	.db $00                                                  ; $9df1 : $00
	ldy $0eff                                                  ; $9df2 : $ac, $ff, $0e
	tsx                                                  ; $9df5 : $ba
	.db $00                                                  ; $9df6 : $00
	.db $00                                                  ; $9df7 : $00
	.db $c2                                                  ; $9df8 : $c2
	.db $ff                                                  ; $9df9 : $ff
	.db $07                                                  ; $9dfa : $07
	tsx                                                  ; $9dfb : $ba
	.db $00                                                  ; $9dfc : $00
	.db $00                                                  ; $9dfd : $00
	.db $c2                                                  ; $9dfe : $c2
	.db $ff                                                  ; $9dff : $ff
	.db $07                                                  ; $9e00 : $07
	tsx                                                  ; $9e01 : $ba
	.db $00                                                  ; $9e02 : $00
	.db $00                                                  ; $9e03 : $00
	inc $ff                                                  ; $9e04 : $e6, $ff
	asl $ba.w                                                  ; $9e06 : $0e, $ba, $00
	.db $00                                                  ; $9e09 : $00
	.db $c2                                                  ; $9e0a : $c2
	.db $ff                                                  ; $9e0b : $ff
	asl $ba.w                                                  ; $9e0c : $0e, $ba, $00
	.db $00                                                  ; $9e0f : $00
	ldy $0eff                                                  ; $9e10 : $ac, $ff, $0e
	tsx                                                  ; $9e13 : $ba
	.db $00                                                  ; $9e14 : $00
	.db $00                                                  ; $9e15 : $00
	.db $c2                                                  ; $9e16 : $c2
	.db $ff                                                  ; $9e17 : $ff
	asl $ba.w                                                  ; $9e18 : $0e, $ba, $00
	.db $00                                                  ; $9e1b : $00
	inc $ff                                                  ; $9e1c : $e6, $ff
	asl $ba.w                                                  ; $9e1e : $0e, $ba, $00
	ora ($03, x)                                                  ; $9e21 : $01, $03
	.db $ff                                                  ; $9e23 : $ff
	asl $ba.w                                                  ; $9e24 : $0e, $ba, $00
	ora ($34, x)                                                  ; $9e27 : $01, $34
	.db $ff                                                  ; $9e29 : $ff
	sec                                                  ; $9e2a : $38
	tsx                                                  ; $9e2b : $ba
	.db $00                                                  ; $9e2c : $00
	ora ($03, x)                                                  ; $9e2d : $01, $03
	.db $ff                                                  ; $9e2f : $ff
	.db $1c                                                  ; $9e30 : $1c
	tsx                                                  ; $9e31 : $ba
	.db $00                                                  ; $9e32 : $00
	.db $00                                                  ; $9e33 : $00
	inc $ff                                                  ; $9e34 : $e6, $ff
	asl $ba.w                                                  ; $9e36 : $0e, $ba, $00
	.db $00                                                  ; $9e39 : $00
	.db $c2                                                  ; $9e3a : $c2
	.db $ff                                                  ; $9e3b : $ff
	asl $ba.w                                                  ; $9e3c : $0e, $ba, $00
	ora ($03, x)                                                  ; $9e3f : $01, $03
	.db $ff                                                  ; $9e41 : $ff
	ora $ba, x                                                  ; $9e42 : $15, $ba
	.db $00                                                  ; $9e44 : $00
	.db $00                                                  ; $9e45 : $00
	inc $ff                                                  ; $9e46 : $e6, $ff
	.db $07                                                  ; $9e48 : $07
	tsx                                                  ; $9e49 : $ba
	.db $00                                                  ; $9e4a : $00
	.db $00                                                  ; $9e4b : $00
	.db $c2                                                  ; $9e4c : $c2
	.db $ff                                                  ; $9e4d : $ff
	asl $ba.w                                                  ; $9e4e : $0e, $ba, $00
	.db $00                                                  ; $9e51 : $00
	ldy $0eff                                                  ; $9e52 : $ac, $ff, $0e
	tsx                                                  ; $9e55 : $ba
	.db $00                                                  ; $9e56 : $00
	.db $00                                                  ; $9e57 : $00
	sta $0eff, y                                                  ; $9e58 : $99, $ff, $0e
	tsx                                                  ; $9e5b : $ba
	.db $00                                                  ; $9e5c : $00
	.db $00                                                  ; $9e5d : $00
	ldy $0eff                                                  ; $9e5e : $ac, $ff, $0e
	tsx                                                  ; $9e61 : $ba
	.db $00                                                  ; $9e62 : $00
	.db $00                                                  ; $9e63 : $00
	.db $c2                                                  ; $9e64 : $c2
	.db $ff                                                  ; $9e65 : $ff
	.db $07                                                  ; $9e66 : $07
	tsx                                                  ; $9e67 : $ba
	.db $00                                                  ; $9e68 : $00
	.db $00                                                  ; $9e69 : $00
	inc $ff                                                  ; $9e6a : $e6, $ff
	.db $07                                                  ; $9e6c : $07
	tsx                                                  ; $9e6d : $ba
	.db $00                                                  ; $9e6e : $00
	.db $00                                                  ; $9e6f : $00
	.db $c2                                                  ; $9e70 : $c2
	.db $ff                                                  ; $9e71 : $ff
	asl $ba.w                                                  ; $9e72 : $0e, $ba, $00
	ora ($03, x)                                                  ; $9e75 : $01, $03
	.db $ff                                                  ; $9e77 : $ff
	sec                                                  ; $9e78 : $38
	tsx                                                  ; $9e79 : $ba
	.db $00                                                  ; $9e7a : $00
	.db $00                                                  ; $9e7b : $00
	inc $ff                                                  ; $9e7c : $e6, $ff
	ora $ba, x                                                  ; $9e7e : $15, $ba
	.db $00                                                  ; $9e80 : $00
	.db $00                                                  ; $9e81 : $00
	inc $ff                                                  ; $9e82 : $e6, $ff
	.db $07                                                  ; $9e84 : $07
	tsx                                                  ; $9e85 : $ba
	.db $00                                                  ; $9e86 : $00
	.db $00                                                  ; $9e87 : $00
	.db $c2                                                  ; $9e88 : $c2
	.db $ff                                                  ; $9e89 : $ff
	asl $ba.w                                                  ; $9e8a : $0e, $ba, $00
	.db $00                                                  ; $9e8d : $00
	ldy $0eff                                                  ; $9e8e : $ac, $ff, $0e
	tsx                                                  ; $9e91 : $ba
	.db $00                                                  ; $9e92 : $00
	.db $00                                                  ; $9e93 : $00
	sta $0eff, y                                                  ; $9e94 : $99, $ff, $0e
	tsx                                                  ; $9e97 : $ba
	.db $00                                                  ; $9e98 : $00
	.db $00                                                  ; $9e99 : $00
	ldy $0eff                                                  ; $9e9a : $ac, $ff, $0e
	tsx                                                  ; $9e9d : $ba
	.db $00                                                  ; $9e9e : $00
	.db $00                                                  ; $9e9f : $00
	.db $c2                                                  ; $9ea0 : $c2
	.db $ff                                                  ; $9ea1 : $ff
	asl $ba.w                                                  ; $9ea2 : $0e, $ba, $00
	.db $00                                                  ; $9ea5 : $00
	inc $ff                                                  ; $9ea6 : $e6, $ff
	asl $ba.w                                                  ; $9ea8 : $0e, $ba, $00
	ora ($03, x)                                                  ; $9eab : $01, $03
	.db $ff                                                  ; $9ead : $ff
	ora $ba, x                                                  ; $9eae : $15, $ba
	.db $00                                                  ; $9eb0 : $00
	ora ($34, x)                                                  ; $9eb1 : $01, $34
	.db $ff                                                  ; $9eb3 : $ff
	.db $07                                                  ; $9eb4 : $07
	tsx                                                  ; $9eb5 : $ba
	.db $00                                                  ; $9eb6 : $00
	ora ($03, x)                                                  ; $9eb7 : $01, $03
	.db $ff                                                  ; $9eb9 : $ff
	asl $ba.w                                                  ; $9eba : $0e, $ba, $00
	.db $00                                                  ; $9ebd : $00
	.db $c2                                                  ; $9ebe : $c2
	.db $ff                                                  ; $9ebf : $ff
	asl $ba.w                                                  ; $9ec0 : $0e, $ba, $00
	.db $00                                                  ; $9ec3 : $00
	inc $ff                                                  ; $9ec4 : $e6, $ff
	sec                                                  ; $9ec6 : $38
	tsx                                                  ; $9ec7 : $ba
	.db $00                                                  ; $9ec8 : $00
	ora ($03, x)                                                  ; $9ec9 : $01, $03
	.db $ff                                                  ; $9ecb : $ff
	.db $ff                                                  ; $9ecc : $ff
	asl $130d                                                  ; $9ecd : $0e, $0d, $13
	.db $04                                                  ; $9ed0 : $04
	bne -$01                                                  ; $9ed1 : $d0, $ff

	asl $130d                                                  ; $9ed3 : $0e, $0d, $13
	.db $00                                                  ; $9ed6 : $00
	ora ($ff, x)                                                  ; $9ed7 : $01, $ff
	asl $130d                                                  ; $9ed9 : $0e, $0d, $13
	.db $00                                                  ; $9edc : $00
	ora ($ff, x)                                                  ; $9edd : $01, $ff
	asl $130d                                                  ; $9edf : $0e, $0d, $13
	.db $04                                                  ; $9ee2 : $04
	.db $0c                                                  ; $9ee3 : $0c
	.db $ff                                                  ; $9ee4 : $ff
	asl $130d                                                  ; $9ee5 : $0e, $0d, $13
	asl $10                                                  ; $9ee8 : $06, $10
	.db $ff                                                  ; $9eea : $ff
	asl $130d                                                  ; $9eeb : $0e, $0d, $13
	.db $00                                                  ; $9eee : $00
	ora ($ff, x)                                                  ; $9eef : $01, $ff
	asl $130d                                                  ; $9ef1 : $0e, $0d, $13
	.db $00                                                  ; $9ef4 : $00
	ora ($ff, x)                                                  ; $9ef5 : $01, $ff
	asl $130d                                                  ; $9ef7 : $0e, $0d, $13
	.db $04                                                  ; $9efa : $04
	bne -$01                                                  ; $9efb : $d0, $ff

	asl $130d                                                  ; $9efd : $0e, $0d, $13
	ora $67                                                  ; $9f00 : $05, $67
	.db $ff                                                  ; $9f02 : $ff
	asl $130d                                                  ; $9f03 : $0e, $0d, $13
	ora $67                                                  ; $9f06 : $05, $67
	.db $ff                                                  ; $9f08 : $ff
	asl $130d                                                  ; $9f09 : $0e, $0d, $13
	.db $00                                                  ; $9f0c : $00
	ora ($ff, x)                                                  ; $9f0d : $01, $ff
	asl $130d                                                  ; $9f0f : $0e, $0d, $13
	.db $00                                                  ; $9f12 : $00
	ora ($ff, x)                                                  ; $9f13 : $01, $ff
	ora $0d, x                                                  ; $9f15 : $15, $0d
	.db $13                                                  ; $9f17 : $13
	asl $10                                                  ; $9f18 : $06, $10
	.db $ff                                                  ; $9f1a : $ff
	.db $07                                                  ; $9f1b : $07
	ora $13.w                                                  ; $9f1c : $0d, $13, $00
	ora ($ff, x)                                                  ; $9f1f : $01, $ff
	asl $130d                                                  ; $9f21 : $0e, $0d, $13
	.db $00                                                  ; $9f24 : $00
	ora ($ff, x)                                                  ; $9f25 : $01, $ff
	asl $130d                                                  ; $9f27 : $0e, $0d, $13
	.db $03                                                  ; $9f2a : $03
	.db $9b                                                  ; $9f2b : $9b
	.db $ff                                                  ; $9f2c : $ff
	asl $130d                                                  ; $9f2d : $0e, $0d, $13
	asl $10                                                  ; $9f30 : $06, $10
	.db $ff                                                  ; $9f32 : $ff
	asl $130d                                                  ; $9f33 : $0e, $0d, $13
	.db $00                                                  ; $9f36 : $00
	ora ($ff, x)                                                  ; $9f37 : $01, $ff
	asl $130d                                                  ; $9f39 : $0e, $0d, $13
	.db $00                                                  ; $9f3c : $00
	ora ($ff, x)                                                  ; $9f3d : $01, $ff
	asl $130d                                                  ; $9f3f : $0e, $0d, $13
	.db $04                                                  ; $9f42 : $04
	bne -$01                                                  ; $9f43 : $d0, $ff

	rol a                                                  ; $9f45 : $2a
	ora $0413                                                  ; $9f46 : $0d, $13, $04
	.db $0c                                                  ; $9f49 : $0c
	.db $ff                                                  ; $9f4a : $ff
	.db $07                                                  ; $9f4b : $07
	ora $0213                                                  ; $9f4c : $0d, $13, $02
	pla                                                  ; $9f4f : $68
	.db $ff                                                  ; $9f50 : $ff
	.db $07                                                  ; $9f51 : $07
	ora $0213                                                  ; $9f52 : $0d, $13, $02
	.db $b3                                                  ; $9f55 : $b3
	.db $ff                                                  ; $9f56 : $ff
	asl $130d                                                  ; $9f57 : $0e, $0d, $13
	.db $03                                                  ; $9f5a : $03
	php                                                  ; $9f5b : $08
	.db $ff                                                  ; $9f5c : $ff
	asl $130d                                                  ; $9f5d : $0e, $0d, $13
	.db $00                                                  ; $9f60 : $00
	ora ($ff, x)                                                  ; $9f61 : $01, $ff
	asl $130d                                                  ; $9f63 : $0e, $0d, $13
	.db $00                                                  ; $9f66 : $00
	ora ($ff, x)                                                  ; $9f67 : $01, $ff
	asl $130d                                                  ; $9f69 : $0e, $0d, $13
	.db $04                                                  ; $9f6c : $04
	.db $0c                                                  ; $9f6d : $0c
	.db $ff                                                  ; $9f6e : $ff
	asl $130d                                                  ; $9f6f : $0e, $0d, $13
	.db $03                                                  ; $9f72 : $03
	.db $9b                                                  ; $9f73 : $9b
	.db $ff                                                  ; $9f74 : $ff
	asl $130d                                                  ; $9f75 : $0e, $0d, $13
	.db $00                                                  ; $9f78 : $00
	ora ($ff, x)                                                  ; $9f79 : $01, $ff
	asl $130d                                                  ; $9f7b : $0e, $0d, $13
	.db $00                                                  ; $9f7e : $00
	ora ($ff, x)                                                  ; $9f7f : $01, $ff
	asl $130d                                                  ; $9f81 : $0e, $0d, $13
	.db $04                                                  ; $9f84 : $04
	bne -$01                                                  ; $9f85 : $d0, $ff

	asl $130d                                                  ; $9f87 : $0e, $0d, $13
	ora $67                                                  ; $9f8a : $05, $67
	.db $ff                                                  ; $9f8c : $ff
	asl $130d                                                  ; $9f8d : $0e, $0d, $13
	.db $00                                                  ; $9f90 : $00
	ora ($ff, x)                                                  ; $9f91 : $01, $ff
	asl $130d                                                  ; $9f93 : $0e, $0d, $13
	.db $00                                                  ; $9f96 : $00
	ora ($ff, x)                                                  ; $9f97 : $01, $ff
	asl $130d                                                  ; $9f99 : $0e, $0d, $13
	.db $04                                                  ; $9f9c : $04
	.db $0c                                                  ; $9f9d : $0c
	.db $ff                                                  ; $9f9e : $ff
	asl $130d                                                  ; $9f9f : $0e, $0d, $13
	.db $03                                                  ; $9fa2 : $03
	.db $9b                                                  ; $9fa3 : $9b
	.db $ff                                                  ; $9fa4 : $ff
	.db $1c                                                  ; $9fa5 : $1c
	ora $0313                                                  ; $9fa6 : $0d, $13, $03
	.db $9b                                                  ; $9fa9 : $9b
	.db $ff                                                  ; $9faa : $ff
	asl $130d                                                  ; $9fab : $0e, $0d, $13
	.db $00                                                  ; $9fae : $00
	ora ($ff, x)                                                  ; $9faf : $01, $ff
	asl $130d                                                  ; $9fb1 : $0e, $0d, $13
	.db $03                                                  ; $9fb4 : $03
	.db $9b                                                  ; $9fb5 : $9b
	.db $ff                                                  ; $9fb6 : $ff
	asl $130d                                                  ; $9fb7 : $0e, $0d, $13
	.db $00                                                  ; $9fba : $00
	ora ($ff, x)                                                  ; $9fbb : $01, $ff
	asl $130d                                                  ; $9fbd : $0e, $0d, $13
	.db $00                                                  ; $9fc0 : $00
	ora ($ff, x)                                                  ; $9fc1 : $01, $ff
	asl $130d                                                  ; $9fc3 : $0e, $0d, $13
	.db $04                                                  ; $9fc6 : $04
	bne -$01                                                  ; $9fc7 : $d0, $ff

	asl $130d                                                  ; $9fc9 : $0e, $0d, $13
	.db $04                                                  ; $9fcc : $04
	.db $8b                                                  ; $9fcd : $8b
	.db $ff                                                  ; $9fce : $ff
	asl $130d                                                  ; $9fcf : $0e, $0d, $13
	.db $00                                                  ; $9fd2 : $00
	ora ($ff, x)                                                  ; $9fd3 : $01, $ff
	asl $130d                                                  ; $9fd5 : $0e, $0d, $13
	.db $00                                                  ; $9fd8 : $00
	ora ($ff, x)                                                  ; $9fd9 : $01, $ff
	asl $130d                                                  ; $9fdb : $0e, $0d, $13
	.db $04                                                  ; $9fde : $04
	.db $0c                                                  ; $9fdf : $0c
	.db $ff                                                  ; $9fe0 : $ff
	asl $130d                                                  ; $9fe1 : $0e, $0d, $13
	.db $04                                                  ; $9fe4 : $04
	bne -$01                                                  ; $9fe5 : $d0, $ff

	asl $130d                                                  ; $9fe7 : $0e, $0d, $13
	.db $00                                                  ; $9fea : $00
	ora ($ff, x)                                                  ; $9feb : $01, $ff
	asl $130d                                                  ; $9fed : $0e, $0d, $13
	.db $00                                                  ; $9ff0 : $00
	ora ($ff, x)                                                  ; $9ff1 : $01, $ff
	asl $130d                                                  ; $9ff3 : $0e, $0d, $13
	.db $03                                                  ; $9ff6 : $03
	.db $9b                                                  ; $9ff7 : $9b
	.db $ff                                                  ; $9ff8 : $ff
	asl $130d                                                  ; $9ff9 : $0e, $0d, $13
	asl $10                                                  ; $9ffc : $06, $10
	.db $ff                                                  ; $9ffe : $ff
	.db $1c                                                  ; $9fff : $1c
	ora $0613                                                  ; $a000 : $0d, $13, $06
	bpl -$01                                                  ; $a003 : $10, $ff

	asl $130d                                                  ; $a005 : $0e, $0d, $13
	.db $00                                                  ; $a008 : $00
	ora ($ff, x)                                                  ; $a009 : $01, $ff
	sec                                                  ; $a00b : $38
	lda $13                                                  ; $a00c : $a5, $13
	.db $00                                                  ; $a00e : $00
	ora ($ff, x)                                                  ; $a00f : $01, $ff
	sec                                                  ; $a011 : $38
	.db $b7                                                  ; $a012 : $b7
	.db $13                                                  ; $a013 : $13
	.db $00                                                  ; $a014 : $00
	ora ($ff, x)                                                  ; $a015 : $01, $ff
	.db $1c                                                  ; $a017 : $1c
	.db $b7                                                  ; $a018 : $b7
	.db $13                                                  ; $a019 : $13
	.db $00                                                  ; $a01a : $00
	ora ($ff, x)                                                  ; $a01b : $01, $ff
	.db $07                                                  ; $a01d : $07
	.db $b7                                                  ; $a01e : $b7
	.db $13                                                  ; $a01f : $13
	ora ($59, x)                                                  ; $a020 : $01, $59
	.db $ff                                                  ; $a022 : $ff
	.db $07                                                  ; $a023 : $07
	.db $b7                                                  ; $a024 : $b7
	.db $13                                                  ; $a025 : $13
	ora ($34, x)                                                  ; $a026 : $01, $34
	.db $ff                                                  ; $a028 : $ff
	.db $07                                                  ; $a029 : $07
	.db $b7                                                  ; $a02a : $b7
	.db $13                                                  ; $a02b : $13
	ora ($03, x)                                                  ; $a02c : $01, $03
	.db $ff                                                  ; $a02e : $ff
	.db $07                                                  ; $a02f : $07
	.db $b7                                                  ; $a030 : $b7
	.db $13                                                  ; $a031 : $13
	.db $00                                                  ; $a032 : $00
	inc $ff                                                  ; $a033 : $e6, $ff
	asl $13a7                                                  ; $a035 : $0e, $a7, $13
	ora ($34, x)                                                  ; $a038 : $01, $34
	.db $00                                                  ; $a03a : $00
	asl $13a7                                                  ; $a03b : $0e, $a7, $13
	.db $02                                                  ; $a03e : $02
	asl $ff                                                  ; $a03f : $06, $ff
	asl $13a7                                                  ; $a041 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a044 : $01, $84
	.db $02                                                  ; $a046 : $02
	asl $13a7                                                  ; $a047 : $0e, $a7, $13
	.db $02                                                  ; $a04a : $02
	asl $ff                                                  ; $a04b : $06, $ff
	asl $13a7                                                  ; $a04d : $0e, $a7, $13
	ora ($34, x)                                                  ; $a050 : $01, $34
	.db $00                                                  ; $a052 : $00
	asl $13a7                                                  ; $a053 : $0e, $a7, $13
	.db $02                                                  ; $a056 : $02
	asl $00                                                  ; $a057 : $06, $00
	asl $13a7                                                  ; $a059 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a05c : $01, $84
	.db $02                                                  ; $a05e : $02
	asl $13a7                                                  ; $a05f : $0e, $a7, $13
	.db $02                                                  ; $a062 : $02
	asl $ff                                                  ; $a063 : $06, $ff
	asl $13a7                                                  ; $a065 : $0e, $a7, $13
	ora $67                                                  ; $a068 : $05, $67
	.db $00                                                  ; $a06a : $00
	asl $13a7                                                  ; $a06b : $0e, $a7, $13
	.db $02                                                  ; $a06e : $02
	eor $ff                                                  ; $a06f : $45, $ff
	asl $13a7                                                  ; $a071 : $0e, $a7, $13
	.db $00                                                  ; $a074 : $00
	inc $02                                                  ; $a075 : $e6, $02
	asl $13a7                                                  ; $a077 : $0e, $a7, $13
	ora ($59, x)                                                  ; $a07a : $01, $59
	.db $ff                                                  ; $a07c : $ff
	asl $13a7                                                  ; $a07d : $0e, $a7, $13
	asl $10                                                  ; $a080 : $06, $10
	.db $00                                                  ; $a082 : $00
	asl $13a7                                                  ; $a083 : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a086 : $01, $cd
	.db $00                                                  ; $a088 : $00
	asl $13a7                                                  ; $a089 : $0e, $a7, $13
	.db $02                                                  ; $a08c : $02
	eor $02                                                  ; $a08d : $45, $02
	asl $13a7                                                  ; $a08f : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a092 : $01, $cd
	.db $ff                                                  ; $a094 : $ff
	asl $13a7                                                  ; $a095 : $0e, $a7, $13
	asl $10                                                  ; $a098 : $06, $10
	.db $00                                                  ; $a09a : $00
	asl $13a7                                                  ; $a09b : $0e, $a7, $13
	.db $02                                                  ; $a09e : $02
	pla                                                  ; $a09f : $68
	.db $ff                                                  ; $a0a0 : $ff
	asl $13a7                                                  ; $a0a1 : $0e, $a7, $13
	.db $02                                                  ; $a0a4 : $02
	asl $02                                                  ; $a0a5 : $06, $02
	asl $13a7                                                  ; $a0a7 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a0aa : $01, $84
	.db $ff                                                  ; $a0ac : $ff
	asl $13a7                                                  ; $a0ad : $0e, $a7, $13
	asl $10                                                  ; $a0b0 : $06, $10
	.db $00                                                  ; $a0b2 : $00
	asl $13a7                                                  ; $a0b3 : $0e, $a7, $13
	.db $02                                                  ; $a0b6 : $02
	asl $00                                                  ; $a0b7 : $06, $00
	asl $13a7                                                  ; $a0b9 : $0e, $a7, $13
	.db $02                                                  ; $a0bc : $02
	pla                                                  ; $a0bd : $68
	.db $02                                                  ; $a0be : $02
	asl $13a7                                                  ; $a0bf : $0e, $a7, $13
	.db $02                                                  ; $a0c2 : $02
	asl $ff                                                  ; $a0c3 : $06, $ff
	asl $13a7                                                  ; $a0c5 : $0e, $a7, $13
	.db $03                                                  ; $a0c8 : $03
	.db $9b                                                  ; $a0c9 : $9b
	.db $00                                                  ; $a0ca : $00
	asl $13a7                                                  ; $a0cb : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a0ce : $01, $cd
	.db $ff                                                  ; $a0d0 : $ff
	asl $13a7                                                  ; $a0d1 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a0d4 : $01, $84
	.db $02                                                  ; $a0d6 : $02
	asl $13a7                                                  ; $a0d7 : $0e, $a7, $13
	ora ($34, x)                                                  ; $a0da : $01, $34
	.db $ff                                                  ; $a0dc : $ff
	asl $13a7                                                  ; $a0dd : $0e, $a7, $13
	.db $03                                                  ; $a0e0 : $03
	.db $9b                                                  ; $a0e1 : $9b
	.db $00                                                  ; $a0e2 : $00
	asl $13a7                                                  ; $a0e3 : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a0e6 : $01, $cd
	.db $00                                                  ; $a0e8 : $00
	asl $13a7                                                  ; $a0e9 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a0ec : $01, $84
	.db $02                                                  ; $a0ee : $02
	asl $13a7                                                  ; $a0ef : $0e, $a7, $13
	ora ($34, x)                                                  ; $a0f2 : $01, $34
	.db $ff                                                  ; $a0f4 : $ff
	asl $13a7                                                  ; $a0f5 : $0e, $a7, $13
	ora $67                                                  ; $a0f8 : $05, $67
	.db $00                                                  ; $a0fa : $00
	asl $13a7                                                  ; $a0fb : $0e, $a7, $13
	ora ($84, x)                                                  ; $a0fe : $01, $84
	.db $ff                                                  ; $a100 : $ff
	asl $13a7                                                  ; $a101 : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a104 : $01, $cd
	.db $02                                                  ; $a106 : $02
	asl $13a7                                                  ; $a107 : $0e, $a7, $13
	.db $02                                                  ; $a10a : $02
	asl $ff                                                  ; $a10b : $06, $ff
	asl $13a7                                                  ; $a10d : $0e, $a7, $13
	.db $03                                                  ; $a110 : $03
	.db $9b                                                  ; $a111 : $9b
	.db $00                                                  ; $a112 : $00
	asl $13a7                                                  ; $a113 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a116 : $01, $84
	.db $00                                                  ; $a118 : $00
	asl $13a7                                                  ; $a119 : $0e, $a7, $13
	ora ($34, x)                                                  ; $a11c : $01, $34
	.db $02                                                  ; $a11e : $02
	asl $13a7                                                  ; $a11f : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a122 : $01, $cd
	.db $ff                                                  ; $a124 : $ff
	asl $13a7                                                  ; $a125 : $0e, $a7, $13
	.db $03                                                  ; $a128 : $03
	.db $9b                                                  ; $a129 : $9b
	.db $00                                                  ; $a12a : $00
	asl $13a7                                                  ; $a12b : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a12e : $01, $cd
	.db $ff                                                  ; $a130 : $ff
	asl $13a7                                                  ; $a131 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a134 : $01, $84
	.db $02                                                  ; $a136 : $02
	asl $13a7                                                  ; $a137 : $0e, $a7, $13
	ora ($34, x)                                                  ; $a13a : $01, $34
	.db $ff                                                  ; $a13c : $ff
	asl $13a7                                                  ; $a13d : $0e, $a7, $13
	.db $03                                                  ; $a140 : $03
	.db $9b                                                  ; $a141 : $9b
	.db $00                                                  ; $a142 : $00
	asl $13a7                                                  ; $a143 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a146 : $01, $84
	.db $00                                                  ; $a148 : $00
	asl $13a7                                                  ; $a149 : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a14c : $01, $cd
	.db $02                                                  ; $a14e : $02
	asl $13a7                                                  ; $a14f : $0e, $a7, $13
	.db $02                                                  ; $a152 : $02
	asl $ff                                                  ; $a153 : $06, $ff
	asl $13a7                                                  ; $a155 : $0e, $a7, $13
	.db $04                                                  ; $a158 : $04
	bne br_00_a15b                                                  ; $a159 : $d0, $00

br_00_a15b:
	asl $13a7                                                  ; $a15b : $0e, $a7, $13
	.db $02                                                  ; $a15e : $02
	asl $ff                                                  ; $a15f : $06, $ff
	asl $13a7                                                  ; $a161 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a164 : $01, $84
	.db $02                                                  ; $a166 : $02
	asl $13a7                                                  ; $a167 : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a16a : $01, $cd
	.db $ff                                                  ; $a16c : $ff
	asl $13a7                                                  ; $a16d : $0e, $a7, $13
	asl $10                                                  ; $a170 : $06, $10
	.db $00                                                  ; $a172 : $00
	asl $13a7                                                  ; $a173 : $0e, $a7, $13
	.db $02                                                  ; $a176 : $02
	asl $00                                                  ; $a177 : $06, $00
	asl $13a7                                                  ; $a179 : $0e, $a7, $13
	.db $02                                                  ; $a17c : $02
	pla                                                  ; $a17d : $68
	.db $02                                                  ; $a17e : $02
	asl $13a7                                                  ; $a17f : $0e, $a7, $13
	.db $02                                                  ; $a182 : $02
	asl $ff                                                  ; $a183 : $06, $ff
	asl $13a7                                                  ; $a185 : $0e, $a7, $13
	ora ($34, x)                                                  ; $a188 : $01, $34
	.db $00                                                  ; $a18a : $00
	asl $13a7                                                  ; $a18b : $0e, $a7, $13
	.db $02                                                  ; $a18e : $02
	asl $ff                                                  ; $a18f : $06, $ff
	asl $13a7                                                  ; $a191 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a194 : $01, $84
	.db $02                                                  ; $a196 : $02
	asl $13a7                                                  ; $a197 : $0e, $a7, $13
	.db $02                                                  ; $a19a : $02
	asl $ff                                                  ; $a19b : $06, $ff
	asl $13a7                                                  ; $a19d : $0e, $a7, $13
	ora ($34, x)                                                  ; $a1a0 : $01, $34
	.db $00                                                  ; $a1a2 : $00
	asl $13a7                                                  ; $a1a3 : $0e, $a7, $13
	.db $02                                                  ; $a1a6 : $02
	asl $00                                                  ; $a1a7 : $06, $00
	asl $13a7                                                  ; $a1a9 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a1ac : $01, $84
	.db $02                                                  ; $a1ae : $02
	asl $13a7                                                  ; $a1af : $0e, $a7, $13
	.db $02                                                  ; $a1b2 : $02
	asl $ff                                                  ; $a1b3 : $06, $ff
	asl $13a7                                                  ; $a1b5 : $0e, $a7, $13
	ora $67                                                  ; $a1b8 : $05, $67
	.db $00                                                  ; $a1ba : $00
	asl $13a7                                                  ; $a1bb : $0e, $a7, $13
	.db $02                                                  ; $a1be : $02
	eor $ff                                                  ; $a1bf : $45, $ff
	asl $13a7                                                  ; $a1c1 : $0e, $a7, $13
	.db $00                                                  ; $a1c4 : $00
	inc $02                                                  ; $a1c5 : $e6, $02
	asl $13a7                                                  ; $a1c7 : $0e, $a7, $13
	ora ($59, x)                                                  ; $a1ca : $01, $59
	.db $ff                                                  ; $a1cc : $ff
	asl $13a7                                                  ; $a1cd : $0e, $a7, $13
	asl $10                                                  ; $a1d0 : $06, $10
	.db $00                                                  ; $a1d2 : $00
	asl $13a7                                                  ; $a1d3 : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a1d6 : $01, $cd
	.db $00                                                  ; $a1d8 : $00
	asl $13a7                                                  ; $a1d9 : $0e, $a7, $13
	.db $02                                                  ; $a1dc : $02
	eor $02                                                  ; $a1dd : $45, $02
	asl $13a7                                                  ; $a1df : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a1e2 : $01, $cd
	.db $ff                                                  ; $a1e4 : $ff
	asl $13a7                                                  ; $a1e5 : $0e, $a7, $13
	asl $10                                                  ; $a1e8 : $06, $10
	.db $00                                                  ; $a1ea : $00
	asl $13a7                                                  ; $a1eb : $0e, $a7, $13
	.db $02                                                  ; $a1ee : $02
	pla                                                  ; $a1ef : $68
	.db $ff                                                  ; $a1f0 : $ff
	asl $13a7                                                  ; $a1f1 : $0e, $a7, $13
	.db $02                                                  ; $a1f4 : $02
	asl $02                                                  ; $a1f5 : $06, $02
	asl $13a7                                                  ; $a1f7 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a1fa : $01, $84
	.db $ff                                                  ; $a1fc : $ff
	asl $13a7                                                  ; $a1fd : $0e, $a7, $13
	asl $10                                                  ; $a200 : $06, $10
	.db $00                                                  ; $a202 : $00
	asl $13a7                                                  ; $a203 : $0e, $a7, $13
	.db $02                                                  ; $a206 : $02
	asl $00                                                  ; $a207 : $06, $00
	asl $13a7                                                  ; $a209 : $0e, $a7, $13
	.db $02                                                  ; $a20c : $02
	pla                                                  ; $a20d : $68
	.db $02                                                  ; $a20e : $02
	asl $13a7                                                  ; $a20f : $0e, $a7, $13
	.db $02                                                  ; $a212 : $02
	asl $ff                                                  ; $a213 : $06, $ff
	asl $13a7                                                  ; $a215 : $0e, $a7, $13
	.db $03                                                  ; $a218 : $03
	.db $9b                                                  ; $a219 : $9b
	.db $00                                                  ; $a21a : $00
	asl $13a7                                                  ; $a21b : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a21e : $01, $cd
	.db $ff                                                  ; $a220 : $ff
	asl $13a7                                                  ; $a221 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a224 : $01, $84
	.db $02                                                  ; $a226 : $02
	asl $13a7                                                  ; $a227 : $0e, $a7, $13
	ora ($34, x)                                                  ; $a22a : $01, $34
	.db $ff                                                  ; $a22c : $ff
	asl $13a7                                                  ; $a22d : $0e, $a7, $13
	.db $03                                                  ; $a230 : $03
	.db $9b                                                  ; $a231 : $9b
	.db $00                                                  ; $a232 : $00
	asl $13a7                                                  ; $a233 : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a236 : $01, $cd
	.db $00                                                  ; $a238 : $00
	asl $13a7                                                  ; $a239 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a23c : $01, $84
	.db $02                                                  ; $a23e : $02
	asl $13a7                                                  ; $a23f : $0e, $a7, $13
	ora ($34, x)                                                  ; $a242 : $01, $34
	.db $ff                                                  ; $a244 : $ff
	asl $13a7                                                  ; $a245 : $0e, $a7, $13
	ora $67                                                  ; $a248 : $05, $67
	.db $00                                                  ; $a24a : $00
	asl $13a7                                                  ; $a24b : $0e, $a7, $13
	ora ($84, x)                                                  ; $a24e : $01, $84
	.db $ff                                                  ; $a250 : $ff
	asl $13a7                                                  ; $a251 : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a254 : $01, $cd
	.db $02                                                  ; $a256 : $02
	asl $13a7                                                  ; $a257 : $0e, $a7, $13
	.db $02                                                  ; $a25a : $02
	asl $ff                                                  ; $a25b : $06, $ff
	asl $13a7                                                  ; $a25d : $0e, $a7, $13
	.db $03                                                  ; $a260 : $03
	.db $9b                                                  ; $a261 : $9b
	.db $00                                                  ; $a262 : $00
	asl $13a7                                                  ; $a263 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a266 : $01, $84
	.db $00                                                  ; $a268 : $00
	asl $13a7                                                  ; $a269 : $0e, $a7, $13
	ora ($34, x)                                                  ; $a26c : $01, $34
	.db $02                                                  ; $a26e : $02
	asl $13a7                                                  ; $a26f : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a272 : $01, $cd
	.db $ff                                                  ; $a274 : $ff
	asl $13a7                                                  ; $a275 : $0e, $a7, $13
	.db $03                                                  ; $a278 : $03
	.db $9b                                                  ; $a279 : $9b
	.db $00                                                  ; $a27a : $00
	asl $13a7                                                  ; $a27b : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a27e : $01, $cd
	.db $ff                                                  ; $a280 : $ff
	asl $13a7                                                  ; $a281 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a284 : $01, $84
	.db $02                                                  ; $a286 : $02
	asl $13a7                                                  ; $a287 : $0e, $a7, $13
	ora ($34, x)                                                  ; $a28a : $01, $34
	.db $ff                                                  ; $a28c : $ff
	asl $13a7                                                  ; $a28d : $0e, $a7, $13
	.db $03                                                  ; $a290 : $03
	.db $9b                                                  ; $a291 : $9b
	.db $00                                                  ; $a292 : $00
	asl $13a7                                                  ; $a293 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a296 : $01, $84
	.db $00                                                  ; $a298 : $00
	asl $13a7                                                  ; $a299 : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a29c : $01, $cd
	.db $02                                                  ; $a29e : $02
	asl $13a7                                                  ; $a29f : $0e, $a7, $13
	.db $02                                                  ; $a2a2 : $02
	asl $ff                                                  ; $a2a3 : $06, $ff
	asl $13a7                                                  ; $a2a5 : $0e, $a7, $13
	.db $04                                                  ; $a2a8 : $04
	bne br_00_a2ab                                                  ; $a2a9 : $d0, $00

br_00_a2ab:
	asl $13a7                                                  ; $a2ab : $0e, $a7, $13
	.db $02                                                  ; $a2ae : $02
	asl $ff                                                  ; $a2af : $06, $ff
	asl $13a7                                                  ; $a2b1 : $0e, $a7, $13
	ora ($84, x)                                                  ; $a2b4 : $01, $84
	.db $02                                                  ; $a2b6 : $02
	asl $13a7                                                  ; $a2b7 : $0e, $a7, $13
	ora ($cd, x)                                                  ; $a2ba : $01, $cd
	.db $ff                                                  ; $a2bc : $ff
	asl $13a7                                                  ; $a2bd : $0e, $a7, $13
	asl $10                                                  ; $a2c0 : $06, $10
	.db $00                                                  ; $a2c2 : $00
	asl $13a7                                                  ; $a2c3 : $0e, $a7, $13
	.db $02                                                  ; $a2c6 : $02
	asl $00                                                  ; $a2c7 : $06, $00
	asl $13a7                                                  ; $a2c9 : $0e, $a7, $13
	.db $02                                                  ; $a2cc : $02
	pla                                                  ; $a2cd : $68
	.db $02                                                  ; $a2ce : $02
	asl $13a7                                                  ; $a2cf : $0e, $a7, $13
	.db $02                                                  ; $a2d2 : $02
	asl $ff                                                  ; $a2d3 : $06, $ff
	asl $13aa                                                  ; $a2d5 : $0e, $aa, $13
	ora ($34, x)                                                  ; $a2d8 : $01, $34
	.db $00                                                  ; $a2da : $00
	asl $13aa                                                  ; $a2db : $0e, $aa, $13
	.db $02                                                  ; $a2de : $02
	asl $ff                                                  ; $a2df : $06, $ff
	asl $13aa                                                  ; $a2e1 : $0e, $aa, $13
	ora ($84, x)                                                  ; $a2e4 : $01, $84
	.db $02                                                  ; $a2e6 : $02
	asl $13aa                                                  ; $a2e7 : $0e, $aa, $13
	.db $02                                                  ; $a2ea : $02
	asl $ff                                                  ; $a2eb : $06, $ff
	asl $13aa                                                  ; $a2ed : $0e, $aa, $13
	ora ($34, x)                                                  ; $a2f0 : $01, $34
	.db $00                                                  ; $a2f2 : $00
	asl $13aa                                                  ; $a2f3 : $0e, $aa, $13
	.db $02                                                  ; $a2f6 : $02
	asl $00                                                  ; $a2f7 : $06, $00
	asl $13aa                                                  ; $a2f9 : $0e, $aa, $13
	ora ($84, x)                                                  ; $a2fc : $01, $84
	.db $02                                                  ; $a2fe : $02
	asl $13aa                                                  ; $a2ff : $0e, $aa, $13
	.db $02                                                  ; $a302 : $02
	asl $ff                                                  ; $a303 : $06, $ff
	asl $13aa                                                  ; $a305 : $0e, $aa, $13
	ora $67                                                  ; $a308 : $05, $67
	.db $00                                                  ; $a30a : $00
	asl $13aa                                                  ; $a30b : $0e, $aa, $13
	.db $02                                                  ; $a30e : $02
	eor $ff                                                  ; $a30f : $45, $ff
	asl $13aa                                                  ; $a311 : $0e, $aa, $13
	.db $00                                                  ; $a314 : $00
	inc $02                                                  ; $a315 : $e6, $02
	asl $13aa                                                  ; $a317 : $0e, $aa, $13
	ora ($59, x)                                                  ; $a31a : $01, $59
	.db $ff                                                  ; $a31c : $ff
	asl $13aa                                                  ; $a31d : $0e, $aa, $13

Call_00_a320:
	asl $10                                                  ; $a320 : $06, $10
	.db $00                                                  ; $a322 : $00
	asl $13aa                                                  ; $a323 : $0e, $aa, $13
	ora ($cd, x)                                                  ; $a326 : $01, $cd
	.db $00                                                  ; $a328 : $00
	asl $13aa                                                  ; $a329 : $0e, $aa, $13
	.db $02                                                  ; $a32c : $02
	eor $02                                                  ; $a32d : $45, $02
	asl $13aa                                                  ; $a32f : $0e, $aa, $13
	ora ($cd, x)                                                  ; $a332 : $01, $cd
	.db $ff                                                  ; $a334 : $ff
	asl $13aa                                                  ; $a335 : $0e, $aa, $13
	asl $10                                                  ; $a338 : $06, $10
	.db $00                                                  ; $a33a : $00
	asl $13aa                                                  ; $a33b : $0e, $aa, $13
	.db $02                                                  ; $a33e : $02
	pla                                                  ; $a33f : $68
	.db $ff                                                  ; $a340 : $ff
	asl $13aa                                                  ; $a341 : $0e, $aa, $13
	.db $02                                                  ; $a344 : $02
	asl $02                                                  ; $a345 : $06, $02
	asl $13aa                                                  ; $a347 : $0e, $aa, $13
	ora ($84, x)                                                  ; $a34a : $01, $84
	.db $ff                                                  ; $a34c : $ff
	asl $13aa                                                  ; $a34d : $0e, $aa, $13
	asl $10                                                  ; $a350 : $06, $10
	.db $00                                                  ; $a352 : $00
	asl $13aa                                                  ; $a353 : $0e, $aa, $13
	.db $02                                                  ; $a356 : $02
	asl $00                                                  ; $a357 : $06, $00
	asl $13aa                                                  ; $a359 : $0e, $aa, $13
	.db $02                                                  ; $a35c : $02
	pla                                                  ; $a35d : $68
	.db $02                                                  ; $a35e : $02
	asl $13aa                                                  ; $a35f : $0e, $aa, $13
	.db $02                                                  ; $a362 : $02
	asl $ff                                                  ; $a363 : $06, $ff
	asl $13aa                                                  ; $a365 : $0e, $aa, $13
	.db $03                                                  ; $a368 : $03
	.db $9b                                                  ; $a369 : $9b
	.db $00                                                  ; $a36a : $00
	asl $13aa                                                  ; $a36b : $0e, $aa, $13
	ora ($cd, x)                                                  ; $a36e : $01, $cd
	.db $ff                                                  ; $a370 : $ff
	asl $13aa                                                  ; $a371 : $0e, $aa, $13
	ora ($84, x)                                                  ; $a374 : $01, $84
	.db $02                                                  ; $a376 : $02
	asl $13aa                                                  ; $a377 : $0e, $aa, $13
	ora ($34, x)                                                  ; $a37a : $01, $34
	.db $ff                                                  ; $a37c : $ff
	asl $13aa                                                  ; $a37d : $0e, $aa, $13
	.db $03                                                  ; $a380 : $03
	.db $9b                                                  ; $a381 : $9b
	.db $00                                                  ; $a382 : $00
	asl $13aa                                                  ; $a383 : $0e, $aa, $13
	ora ($cd, x)                                                  ; $a386 : $01, $cd
	.db $00                                                  ; $a388 : $00
	asl $13aa                                                  ; $a389 : $0e, $aa, $13
	ora ($84, x)                                                  ; $a38c : $01, $84
	.db $02                                                  ; $a38e : $02
	asl $13aa                                                  ; $a38f : $0e, $aa, $13
	ora ($34, x)                                                  ; $a392 : $01, $34
	.db $ff                                                  ; $a394 : $ff
	asl $13aa                                                  ; $a395 : $0e, $aa, $13
	ora $67                                                  ; $a398 : $05, $67
	.db $00                                                  ; $a39a : $00
	asl $13aa                                                  ; $a39b : $0e, $aa, $13
	ora ($84, x)                                                  ; $a39e : $01, $84
	.db $ff                                                  ; $a3a0 : $ff
	asl $13aa                                                  ; $a3a1 : $0e, $aa, $13
	ora ($cd, x)                                                  ; $a3a4 : $01, $cd
	.db $02                                                  ; $a3a6 : $02
	asl $13aa                                                  ; $a3a7 : $0e, $aa, $13
	.db $02                                                  ; $a3aa : $02
	asl $ff                                                  ; $a3ab : $06, $ff
	asl $13aa                                                  ; $a3ad : $0e, $aa, $13
	.db $03                                                  ; $a3b0 : $03
	.db $9b                                                  ; $a3b1 : $9b
	.db $00                                                  ; $a3b2 : $00
	asl $13aa                                                  ; $a3b3 : $0e, $aa, $13
	ora ($84, x)                                                  ; $a3b6 : $01, $84
	.db $00                                                  ; $a3b8 : $00
	asl $13aa                                                  ; $a3b9 : $0e, $aa, $13
	ora ($34, x)                                                  ; $a3bc : $01, $34
	.db $02                                                  ; $a3be : $02
	asl $13aa                                                  ; $a3bf : $0e, $aa, $13
	ora ($cd, x)                                                  ; $a3c2 : $01, $cd
	.db $ff                                                  ; $a3c4 : $ff
	asl $13aa                                                  ; $a3c5 : $0e, $aa, $13
	.db $03                                                  ; $a3c8 : $03
	.db $9b                                                  ; $a3c9 : $9b
	.db $00                                                  ; $a3ca : $00
	asl $13aa                                                  ; $a3cb : $0e, $aa, $13
	ora ($cd, x)                                                  ; $a3ce : $01, $cd
	.db $ff                                                  ; $a3d0 : $ff
	asl $13aa                                                  ; $a3d1 : $0e, $aa, $13
	ora ($84, x)                                                  ; $a3d4 : $01, $84
	.db $02                                                  ; $a3d6 : $02
	asl $13aa                                                  ; $a3d7 : $0e, $aa, $13
	ora ($34, x)                                                  ; $a3da : $01, $34
	.db $ff                                                  ; $a3dc : $ff
	asl $13aa                                                  ; $a3dd : $0e, $aa, $13
	.db $03                                                  ; $a3e0 : $03
	.db $9b                                                  ; $a3e1 : $9b
	.db $00                                                  ; $a3e2 : $00
	asl $13aa                                                  ; $a3e3 : $0e, $aa, $13
	ora ($84, x)                                                  ; $a3e6 : $01, $84
	.db $00                                                  ; $a3e8 : $00
	asl $13aa                                                  ; $a3e9 : $0e, $aa, $13
	ora ($cd, x)                                                  ; $a3ec : $01, $cd
	.db $02                                                  ; $a3ee : $02
	asl $13aa                                                  ; $a3ef : $0e, $aa, $13
	.db $02                                                  ; $a3f2 : $02
	asl $ff                                                  ; $a3f3 : $06, $ff
	asl $13aa                                                  ; $a3f5 : $0e, $aa, $13
	.db $04                                                  ; $a3f8 : $04
	bne br_00_a3fb                                                  ; $a3f9 : $d0, $00

br_00_a3fb:
	asl $13aa                                                  ; $a3fb : $0e, $aa, $13
	.db $02                                                  ; $a3fe : $02
	asl $ff                                                  ; $a3ff : $06, $ff
	asl $13aa                                                  ; $a401 : $0e, $aa, $13
	ora ($84, x)                                                  ; $a404 : $01, $84
	.db $02                                                  ; $a406 : $02
	asl $13aa                                                  ; $a407 : $0e, $aa, $13
	ora ($cd, x)                                                  ; $a40a : $01, $cd
	.db $ff                                                  ; $a40c : $ff
	asl $13aa                                                  ; $a40d : $0e, $aa, $13
	asl $10                                                  ; $a410 : $06, $10
	.db $00                                                  ; $a412 : $00
	asl $13aa                                                  ; $a413 : $0e, $aa, $13
	.db $02                                                  ; $a416 : $02
	asl $00                                                  ; $a417 : $06, $00
	asl $13aa                                                  ; $a419 : $0e, $aa, $13
	.db $02                                                  ; $a41c : $02
	pla                                                  ; $a41d : $68
	.db $02                                                  ; $a41e : $02
	asl $13aa                                                  ; $a41f : $0e, $aa, $13
	.db $02                                                  ; $a422 : $02
	asl $ff                                                  ; $a423 : $06, $ff
	.db $ff                                                  ; $a425 : $ff
	asl a                                                  ; $a426 : $0a
	.db $b7                                                  ; $a427 : $b7
	.db $03                                                  ; $a428 : $03
	.db $00                                                  ; $a429 : $00
	cmp $0aff                                                  ; $a42a : $cd, $ff, $0a
	.db $b7                                                  ; $a42d : $b7
	.db $03                                                  ; $a42e : $03
	.db $00                                                  ; $a42f : $00
	inc $ff                                                  ; $a430 : $e6, $ff
	asl a                                                  ; $a432 : $0a
	.db $b7                                                  ; $a433 : $b7
	.db $03                                                  ; $a434 : $03
	.db $00                                                  ; $a435 : $00
	cmp $0aff                                                  ; $a436 : $cd, $ff, $0a
	.db $b7                                                  ; $a439 : $b7
	.db $03                                                  ; $a43a : $03
	.db $00                                                  ; $a43b : $00
	ldy $0aff                                                  ; $a43c : $ac, $ff, $0a
	.db $b7                                                  ; $a43f : $b7
	.db $03                                                  ; $a440 : $03
	.db $00                                                  ; $a441 : $00
	sta $0aff, y                                                  ; $a442 : $99, $ff, $0a
	.db $b7                                                  ; $a445 : $b7
	.db $03                                                  ; $a446 : $03
	.db $00                                                  ; $a447 : $00
	ldy $0aff                                                  ; $a448 : $ac, $ff, $0a
	.db $b7                                                  ; $a44b : $b7
	.db $03                                                  ; $a44c : $03
	.db $00                                                  ; $a44d : $00
	sta ($ff, x)                                                  ; $a44e : $81, $ff
	asl a                                                  ; $a450 : $0a
	.db $b7                                                  ; $a451 : $b7
	.db $03                                                  ; $a452 : $03
	.db $00                                                  ; $a453 : $00
	sta $0aff, y                                                  ; $a454 : $99, $ff, $0a
	.db $b7                                                  ; $a457 : $b7
	.db $03                                                  ; $a458 : $03
	.db $00                                                  ; $a459 : $00
	ldy $0aff                                                  ; $a45a : $ac, $ff, $0a
	.db $b7                                                  ; $a45d : $b7
	.db $03                                                  ; $a45e : $03
	.db $00                                                  ; $a45f : $00
	cmp $28ff                                                  ; $a460 : $cd, $ff, $28
	.db $b7                                                  ; $a463 : $b7
	.db $03                                                  ; $a464 : $03
	.db $00                                                  ; $a465 : $00
	ldy $14ff                                                  ; $a466 : $ac, $ff, $14
	.db $b7                                                  ; $a469 : $b7
	.db $03                                                  ; $a46a : $03
	.db $00                                                  ; $a46b : $00
	sta $14ff, y                                                  ; $a46c : $99, $ff, $14
	.db $b7                                                  ; $a46f : $b7
	.db $03                                                  ; $a470 : $03
	.db $00                                                  ; $a471 : $00
	sta ($ff, x)                                                  ; $a472 : $81, $ff
	asl a                                                  ; $a474 : $0a
	.db $b7                                                  ; $a475 : $b7
	.db $03                                                  ; $a476 : $03
	.db $00                                                  ; $a477 : $00
	.db $73                                                  ; $a478 : $73
	.db $ff                                                  ; $a479 : $ff
	asl a                                                  ; $a47a : $0a
	.db $b7                                                  ; $a47b : $b7
	.db $03                                                  ; $a47c : $03
	.db $00                                                  ; $a47d : $00
	ror $ff                                                  ; $a47e : $66, $ff
	asl a                                                  ; $a480 : $0a
	.db $b7                                                  ; $a481 : $b7
	.db $03                                                  ; $a482 : $03
	.db $00                                                  ; $a483 : $00
	.db $73                                                  ; $a484 : $73
	.db $ff                                                  ; $a485 : $ff
	asl a                                                  ; $a486 : $0a
	.db $b7                                                  ; $a487 : $b7
	.db $03                                                  ; $a488 : $03
	.db $00                                                  ; $a489 : $00
	sta ($ff, x)                                                  ; $a48a : $81, $ff
	asl a                                                  ; $a48c : $0a
	.db $b7                                                  ; $a48d : $b7
	.db $03                                                  ; $a48e : $03
	.db $00                                                  ; $a48f : $00
	sta $0aff, y                                                  ; $a490 : $99, $ff, $0a
	.db $b7                                                  ; $a493 : $b7
	.db $03                                                  ; $a494 : $03
	.db $00                                                  ; $a495 : $00
	sta ($ff, x)                                                  ; $a496 : $81, $ff
	.db $3c                                                  ; $a498 : $3c
	.db $b7                                                  ; $a499 : $b7
	.db $03                                                  ; $a49a : $03
	.db $00                                                  ; $a49b : $00
	ldy $14ff                                                  ; $a49c : $ac, $ff, $14
	.db $b7                                                  ; $a49f : $b7
	.db $03                                                  ; $a4a0 : $03
	.db $00                                                  ; $a4a1 : $00
	ora ($ff, x)                                                  ; $a4a2 : $01, $ff
	asl a                                                  ; $a4a4 : $0a
	.db $b7                                                  ; $a4a5 : $b7
	.db $03                                                  ; $a4a6 : $03
	.db $00                                                  ; $a4a7 : $00
	ldy $0aff                                                  ; $a4a8 : $ac, $ff, $0a
	.db $b7                                                  ; $a4ab : $b7
	.db $03                                                  ; $a4ac : $03
	.db $00                                                  ; $a4ad : $00
	cmp $28ff                                                  ; $a4ae : $cd, $ff, $28
	.db $b7                                                  ; $a4b1 : $b7
	.db $03                                                  ; $a4b2 : $03
	.db $00                                                  ; $a4b3 : $00
	ldy $14ff                                                  ; $a4b4 : $ac, $ff, $14
	.db $b7                                                  ; $a4b7 : $b7
	.db $03                                                  ; $a4b8 : $03
	.db $00                                                  ; $a4b9 : $00
	sta $14ff, y                                                  ; $a4ba : $99, $ff, $14
	.db $b7                                                  ; $a4bd : $b7
	.db $03                                                  ; $a4be : $03
	.db $00                                                  ; $a4bf : $00
	sta ($ff, x)                                                  ; $a4c0 : $81, $ff
	asl a                                                  ; $a4c2 : $0a
	.db $b7                                                  ; $a4c3 : $b7
	.db $03                                                  ; $a4c4 : $03
	.db $00                                                  ; $a4c5 : $00
	.db $73                                                  ; $a4c6 : $73
	.db $ff                                                  ; $a4c7 : $ff
	asl a                                                  ; $a4c8 : $0a
	.db $b7                                                  ; $a4c9 : $b7
	.db $03                                                  ; $a4ca : $03
	.db $00                                                  ; $a4cb : $00
	ror $ff                                                  ; $a4cc : $66, $ff
	asl a                                                  ; $a4ce : $0a
	.db $b7                                                  ; $a4cf : $b7
	.db $03                                                  ; $a4d0 : $03
	.db $00                                                  ; $a4d1 : $00
	sta ($ff, x)                                                  ; $a4d2 : $81, $ff
	asl a                                                  ; $a4d4 : $0a
	.db $b7                                                  ; $a4d5 : $b7
	.db $03                                                  ; $a4d6 : $03
	.db $00                                                  ; $a4d7 : $00
	sta $14ff, y                                                  ; $a4d8 : $99, $ff, $14
	.db $b7                                                  ; $a4db : $b7
	.db $03                                                  ; $a4dc : $03
	.db $00                                                  ; $a4dd : $00
	ldy $14ff                                                  ; $a4de : $ac, $ff, $14
	.db $b7                                                  ; $a4e1 : $b7
	.db $03                                                  ; $a4e2 : $03
	.db $00                                                  ; $a4e3 : $00
	ldy $14ff                                                  ; $a4e4 : $ac, $ff, $14
	.db $b7                                                  ; $a4e7 : $b7
	.db $03                                                  ; $a4e8 : $03
	.db $00                                                  ; $a4e9 : $00
	inc $ff                                                  ; $a4ea : $e6, $ff
	asl a                                                  ; $a4ec : $0a
	.db $b7                                                  ; $a4ed : $b7
	.db $03                                                  ; $a4ee : $03
	.db $00                                                  ; $a4ef : $00
	cmp $0aff                                                  ; $a4f0 : $cd, $ff, $0a
	.db $b7                                                  ; $a4f3 : $b7
	.db $03                                                  ; $a4f4 : $03
	.db $00                                                  ; $a4f5 : $00
	ldy $0aff                                                  ; $a4f6 : $ac, $ff, $0a
	.db $b7                                                  ; $a4f9 : $b7
	.db $03                                                  ; $a4fa : $03
	.db $00                                                  ; $a4fb : $00
	cmp $0aff                                                  ; $a4fc : $cd, $ff, $0a
	.db $b7                                                  ; $a4ff : $b7
	.db $03                                                  ; $a500 : $03
	.db $00                                                  ; $a501 : $00
	inc $ff                                                  ; $a502 : $e6, $ff
	asl a                                                  ; $a504 : $0a
	.db $b7                                                  ; $a505 : $b7
	.db $03                                                  ; $a506 : $03
	ora ($03, x)                                                  ; $a507 : $01, $03
	.db $ff                                                  ; $a509 : $ff
	asl a                                                  ; $a50a : $0a
	.db $b7                                                  ; $a50b : $b7
	.db $03                                                  ; $a50c : $03
	ora ($34, x)                                                  ; $a50d : $01, $34
	.db $ff                                                  ; $a50f : $ff
	asl $03b7, x                                                  ; $a510 : $1e, $b7, $03
	ora ($03, x)                                                  ; $a513 : $01, $03
	.db $ff                                                  ; $a515 : $ff
	asl a                                                  ; $a516 : $0a
	.db $b7                                                  ; $a517 : $b7
	.db $03                                                  ; $a518 : $03
	ora ($34, x)                                                  ; $a519 : $01, $34
	.db $ff                                                  ; $a51b : $ff
	asl a                                                  ; $a51c : $0a
	.db $b7                                                  ; $a51d : $b7
	.db $03                                                  ; $a51e : $03
	ora ($03, x)                                                  ; $a51f : $01, $03
	.db $ff                                                  ; $a521 : $ff
	asl a                                                  ; $a522 : $0a
	.db $b7                                                  ; $a523 : $b7
	.db $03                                                  ; $a524 : $03
	.db $00                                                  ; $a525 : $00
	inc $ff                                                  ; $a526 : $e6, $ff
	asl a                                                  ; $a528 : $0a
	.db $b7                                                  ; $a529 : $b7
	.db $03                                                  ; $a52a : $03
	.db $00                                                  ; $a52b : $00
	cmp $0aff                                                  ; $a52c : $cd, $ff, $0a
	.db $b7                                                  ; $a52f : $b7
	.db $03                                                  ; $a530 : $03
	.db $00                                                  ; $a531 : $00
	inc $ff                                                  ; $a532 : $e6, $ff
	.db $14                                                  ; $a534 : $14
	.db $b7                                                  ; $a535 : $b7
	.db $03                                                  ; $a536 : $03
	ora ($03, x)                                                  ; $a537 : $01, $03
	.db $ff                                                  ; $a539 : $ff
	asl $03b7, x                                                  ; $a53a : $1e, $b7, $03
	.db $00                                                  ; $a53d : $00
	inc $ff                                                  ; $a53e : $e6, $ff
	asl a                                                  ; $a540 : $0a
	.db $b7                                                  ; $a541 : $b7
	.db $03                                                  ; $a542 : $03
	.db $00                                                  ; $a543 : $00
	cmp $14ff                                                  ; $a544 : $cd, $ff, $14
	.db $b7                                                  ; $a547 : $b7
	.db $03                                                  ; $a548 : $03
	.db $00                                                  ; $a549 : $00
	ldy $0aff                                                  ; $a54a : $ac, $ff, $0a
	.db $b7                                                  ; $a54d : $b7
	.db $03                                                  ; $a54e : $03
	.db $00                                                  ; $a54f : $00
	sta $0aff, y                                                  ; $a550 : $99, $ff, $0a
	.db $b7                                                  ; $a553 : $b7
	.db $03                                                  ; $a554 : $03
	.db $00                                                  ; $a555 : $00
	sta ($ff, x)                                                  ; $a556 : $81, $ff
	.db $14                                                  ; $a558 : $14
	.db $b7                                                  ; $a559 : $b7
	.db $03                                                  ; $a55a : $03
	.db $00                                                  ; $a55b : $00
	sta $14ff, y                                                  ; $a55c : $99, $ff, $14
	.db $b7                                                  ; $a55f : $b7
	.db $03                                                  ; $a560 : $03
	.db $00                                                  ; $a561 : $00
	ldy $14ff                                                  ; $a562 : $ac, $ff, $14
	.db $b7                                                  ; $a565 : $b7
	.db $03                                                  ; $a566 : $03
	.db $00                                                  ; $a567 : $00
	ldy $14ff                                                  ; $a568 : $ac, $ff, $14
	.db $b7                                                  ; $a56b : $b7
	.db $03                                                  ; $a56c : $03
	.db $00                                                  ; $a56d : $00
	inc $ff                                                  ; $a56e : $e6, $ff
	asl a                                                  ; $a570 : $0a
	.db $b7                                                  ; $a571 : $b7
	.db $03                                                  ; $a572 : $03
	.db $00                                                  ; $a573 : $00
	cmp $0aff                                                  ; $a574 : $cd, $ff, $0a
	.db $b7                                                  ; $a577 : $b7
	.db $03                                                  ; $a578 : $03
	.db $00                                                  ; $a579 : $00
	ldy $0aff                                                  ; $a57a : $ac, $ff, $0a
	.db $b7                                                  ; $a57d : $b7
	.db $03                                                  ; $a57e : $03
	.db $00                                                  ; $a57f : $00
	cmp $0aff                                                  ; $a580 : $cd, $ff, $0a
	.db $b7                                                  ; $a583 : $b7
	.db $03                                                  ; $a584 : $03
	.db $00                                                  ; $a585 : $00
	inc $ff                                                  ; $a586 : $e6, $ff
	asl a                                                  ; $a588 : $0a
	.db $b7                                                  ; $a589 : $b7
	.db $03                                                  ; $a58a : $03
	ora ($03, x)                                                  ; $a58b : $01, $03
	.db $ff                                                  ; $a58d : $ff
	asl a                                                  ; $a58e : $0a
	.db $b7                                                  ; $a58f : $b7
	.db $03                                                  ; $a590 : $03
	.db $00                                                  ; $a591 : $00
	inc $ff                                                  ; $a592 : $e6, $ff
	plp                                                  ; $a594 : $28
	.db $b7                                                  ; $a595 : $b7
	.db $03                                                  ; $a596 : $03
	ora ($34, x)                                                  ; $a597 : $01, $34
	.db $ff                                                  ; $a599 : $ff
	.db $14                                                  ; $a59a : $14
	.db $b7                                                  ; $a59b : $b7
	.db $03                                                  ; $a59c : $03
	ora ($03, x)                                                  ; $a59d : $01, $03
	.db $ff                                                  ; $a59f : $ff
	asl $03b7, x                                                  ; $a5a0 : $1e, $b7, $03
	.db $00                                                  ; $a5a3 : $00
	inc $ff                                                  ; $a5a4 : $e6, $ff
	asl a                                                  ; $a5a6 : $0a
	.db $b7                                                  ; $a5a7 : $b7
	.db $03                                                  ; $a5a8 : $03
	.db $00                                                  ; $a5a9 : $00
	cmp $0aff                                                  ; $a5aa : $cd, $ff, $0a
	.db $b7                                                  ; $a5ad : $b7
	.db $03                                                  ; $a5ae : $03
	ora ($03, x)                                                  ; $a5af : $01, $03
	.db $ff                                                  ; $a5b1 : $ff
	asl a                                                  ; $a5b2 : $0a
	.db $b7                                                  ; $a5b3 : $b7
	.db $03                                                  ; $a5b4 : $03
	.db $00                                                  ; $a5b5 : $00
	inc $ff                                                  ; $a5b6 : $e6, $ff
	asl a                                                  ; $a5b8 : $0a
	.db $b7                                                  ; $a5b9 : $b7
	.db $03                                                  ; $a5ba : $03
	ora ($03, x)                                                  ; $a5bb : $01, $03
	.db $ff                                                  ; $a5bd : $ff
	asl a                                                  ; $a5be : $0a
	.db $b7                                                  ; $a5bf : $b7
	.db $03                                                  ; $a5c0 : $03
	ora ($34, x)                                                  ; $a5c1 : $01, $34
	.db $ff                                                  ; $a5c3 : $ff
	asl a                                                  ; $a5c4 : $0a
	.db $b7                                                  ; $a5c5 : $b7
	.db $03                                                  ; $a5c6 : $03
	ora ($03, x)                                                  ; $a5c7 : $01, $03
	.db $ff                                                  ; $a5c9 : $ff
	asl a                                                  ; $a5ca : $0a
	.db $b7                                                  ; $a5cb : $b7
	.db $03                                                  ; $a5cc : $03
	ora ($34, x)                                                  ; $a5cd : $01, $34
	.db $ff                                                  ; $a5cf : $ff
	plp                                                  ; $a5d0 : $28
	.db $b7                                                  ; $a5d1 : $b7
	.db $03                                                  ; $a5d2 : $03
	ora ($59, x)                                                  ; $a5d3 : $01, $59
	.db $ff                                                  ; $a5d5 : $ff
	.db $14                                                  ; $a5d6 : $14
	.db $b7                                                  ; $a5d7 : $b7
	.db $03                                                  ; $a5d8 : $03
	.db $00                                                  ; $a5d9 : $00
	ora ($ff, x)                                                  ; $a5da : $01, $ff
	asl a                                                  ; $a5dc : $0a
	.db $67                                                  ; $a5dd : $67
	.db $03                                                  ; $a5de : $03
	.db $00                                                  ; $a5df : $00
	cmp $0aff                                                  ; $a5e0 : $cd, $ff, $0a
	.db $67                                                  ; $a5e3 : $67
	.db $03                                                  ; $a5e4 : $03
	.db $00                                                  ; $a5e5 : $00
	inc $ff                                                  ; $a5e6 : $e6, $ff
	.db $14                                                  ; $a5e8 : $14
	.db $67                                                  ; $a5e9 : $67
	.db $03                                                  ; $a5ea : $03
	ora ($03, x)                                                  ; $a5eb : $01, $03
	.db $ff                                                  ; $a5ed : $ff
	asl $03a0, x                                                  ; $a5ee : $1e, $a0, $03
	.db $00                                                  ; $a5f1 : $00
	inc $ff                                                  ; $a5f2 : $e6, $ff
	asl a                                                  ; $a5f4 : $0a
	.db $67                                                  ; $a5f5 : $67
	.db $03                                                  ; $a5f6 : $03
	.db $00                                                  ; $a5f7 : $00
	cmp $14ff                                                  ; $a5f8 : $cd, $ff, $14
	.db $67                                                  ; $a5fb : $67
	.db $03                                                  ; $a5fc : $03
	.db $00                                                  ; $a5fd : $00
	ldy $0aff                                                  ; $a5fe : $ac, $ff, $0a
	.db $67                                                  ; $a601 : $67
	.db $03                                                  ; $a602 : $03
	.db $00                                                  ; $a603 : $00
	sta $0aff, y                                                  ; $a604 : $99, $ff, $0a
	.db $67                                                  ; $a607 : $67
	.db $03                                                  ; $a608 : $03
	.db $00                                                  ; $a609 : $00
	sta ($ff, x)                                                  ; $a60a : $81, $ff
	.db $14                                                  ; $a60c : $14
	.db $67                                                  ; $a60d : $67
	.db $03                                                  ; $a60e : $03
	.db $00                                                  ; $a60f : $00
	sta $14ff, y                                                  ; $a610 : $99, $ff, $14
	.db $67                                                  ; $a613 : $67
	.db $03                                                  ; $a614 : $03
	.db $00                                                  ; $a615 : $00
	ldy $14ff                                                  ; $a616 : $ac, $ff, $14
	.db $67                                                  ; $a619 : $67
	.db $03                                                  ; $a61a : $03
	.db $00                                                  ; $a61b : $00
	ldy $14ff                                                  ; $a61c : $ac, $ff, $14
	.db $67                                                  ; $a61f : $67
	.db $03                                                  ; $a620 : $03
	.db $00                                                  ; $a621 : $00
	inc $ff                                                  ; $a622 : $e6, $ff
	asl a                                                  ; $a624 : $0a
	.db $67                                                  ; $a625 : $67
	.db $03                                                  ; $a626 : $03
	.db $00                                                  ; $a627 : $00
	cmp $0aff                                                  ; $a628 : $cd, $ff, $0a
	.db $67                                                  ; $a62b : $67
	.db $03                                                  ; $a62c : $03
	.db $00                                                  ; $a62d : $00
	ldy $0aff                                                  ; $a62e : $ac, $ff, $0a
	.db $67                                                  ; $a631 : $67
	.db $03                                                  ; $a632 : $03
	.db $00                                                  ; $a633 : $00
	cmp $0aff                                                  ; $a634 : $cd, $ff, $0a
	.db $67                                                  ; $a637 : $67
	.db $03                                                  ; $a638 : $03
	.db $00                                                  ; $a639 : $00
	inc $ff                                                  ; $a63a : $e6, $ff
	asl a                                                  ; $a63c : $0a
	.db $67                                                  ; $a63d : $67
	.db $03                                                  ; $a63e : $03
	ora ($03, x)                                                  ; $a63f : $01, $03
	.db $ff                                                  ; $a641 : $ff
	asl a                                                  ; $a642 : $0a
	.db $67                                                  ; $a643 : $67
	.db $03                                                  ; $a644 : $03
	.db $00                                                  ; $a645 : $00
	inc $ff                                                  ; $a646 : $e6, $ff
	plp                                                  ; $a648 : $28
	.db $97                                                  ; $a649 : $97
	.db $03                                                  ; $a64a : $03
	ora ($34, x)                                                  ; $a64b : $01, $34
	.db $ff                                                  ; $a64d : $ff
	.db $14                                                  ; $a64e : $14
	.db $67                                                  ; $a64f : $67
	.db $03                                                  ; $a650 : $03
	ora ($03, x)                                                  ; $a651 : $01, $03
	.db $ff                                                  ; $a653 : $ff
	asl $0369, x                                                  ; $a654 : $1e, $69, $03
	.db $00                                                  ; $a657 : $00
	inc $ff                                                  ; $a658 : $e6, $ff
	asl a                                                  ; $a65a : $0a
	.db $67                                                  ; $a65b : $67
	.db $03                                                  ; $a65c : $03
	.db $00                                                  ; $a65d : $00
	cmp $0aff                                                  ; $a65e : $cd, $ff, $0a
	.db $67                                                  ; $a661 : $67
	.db $03                                                  ; $a662 : $03
	ora ($03, x)                                                  ; $a663 : $01, $03
	.db $ff                                                  ; $a665 : $ff
	asl a                                                  ; $a666 : $0a
	.db $67                                                  ; $a667 : $67
	.db $03                                                  ; $a668 : $03
	.db $00                                                  ; $a669 : $00
	inc $ff                                                  ; $a66a : $e6, $ff
	asl a                                                  ; $a66c : $0a
	.db $67                                                  ; $a66d : $67
	.db $03                                                  ; $a66e : $03
	ora ($03, x)                                                  ; $a66f : $01, $03
	.db $ff                                                  ; $a671 : $ff
	asl a                                                  ; $a672 : $0a
	.db $67                                                  ; $a673 : $67
	.db $03                                                  ; $a674 : $03
	ora ($34, x)                                                  ; $a675 : $01, $34
	.db $ff                                                  ; $a677 : $ff
	asl a                                                  ; $a678 : $0a
	.db $67                                                  ; $a679 : $67
	.db $03                                                  ; $a67a : $03
	ora ($03, x)                                                  ; $a67b : $01, $03
	.db $ff                                                  ; $a67d : $ff
	asl a                                                  ; $a67e : $0a
	.db $67                                                  ; $a67f : $67
	.db $03                                                  ; $a680 : $03
	ora ($34, x)                                                  ; $a681 : $01, $34
	.db $ff                                                  ; $a683 : $ff
	plp                                                  ; $a684 : $28
	.db $97                                                  ; $a685 : $97
	.db $03                                                  ; $a686 : $03
	ora ($59, x)                                                  ; $a687 : $01, $59
	.db $ff                                                  ; $a689 : $ff
	.db $14                                                  ; $a68a : $14
	.db $67                                                  ; $a68b : $67
	.db $03                                                  ; $a68c : $03
	.db $00                                                  ; $a68d : $00
	ora ($ff, x)                                                  ; $a68e : $01, $ff
	asl a                                                  ; $a690 : $0a
	.db $b7                                                  ; $a691 : $b7
	.db $03                                                  ; $a692 : $03
	.db $00                                                  ; $a693 : $00
	cmp $0aff                                                  ; $a694 : $cd, $ff, $0a
	.db $b7                                                  ; $a697 : $b7
	.db $03                                                  ; $a698 : $03
	.db $00                                                  ; $a699 : $00
	inc $ff                                                  ; $a69a : $e6, $ff
	asl a                                                  ; $a69c : $0a
	.db $b7                                                  ; $a69d : $b7
	.db $03                                                  ; $a69e : $03
	.db $00                                                  ; $a69f : $00
	cmp $0aff                                                  ; $a6a0 : $cd, $ff, $0a
	.db $b7                                                  ; $a6a3 : $b7
	.db $03                                                  ; $a6a4 : $03
	.db $00                                                  ; $a6a5 : $00
	ldy $0aff                                                  ; $a6a6 : $ac, $ff, $0a
	.db $b7                                                  ; $a6a9 : $b7
	.db $03                                                  ; $a6aa : $03
	.db $00                                                  ; $a6ab : $00
	sta $0aff, y                                                  ; $a6ac : $99, $ff, $0a
	.db $b7                                                  ; $a6af : $b7
	.db $03                                                  ; $a6b0 : $03
	.db $00                                                  ; $a6b1 : $00
	ldy $0aff                                                  ; $a6b2 : $ac, $ff, $0a
	.db $b7                                                  ; $a6b5 : $b7
	.db $03                                                  ; $a6b6 : $03
	.db $00                                                  ; $a6b7 : $00
	sta ($ff, x)                                                  ; $a6b8 : $81, $ff
	asl a                                                  ; $a6ba : $0a
	.db $b7                                                  ; $a6bb : $b7
	.db $03                                                  ; $a6bc : $03
	.db $00                                                  ; $a6bd : $00
	sta $0aff, y                                                  ; $a6be : $99, $ff, $0a
	.db $b7                                                  ; $a6c1 : $b7
	.db $03                                                  ; $a6c2 : $03
	.db $00                                                  ; $a6c3 : $00
	ldy $0aff                                                  ; $a6c4 : $ac, $ff, $0a
	.db $b7                                                  ; $a6c7 : $b7
	.db $03                                                  ; $a6c8 : $03
	.db $00                                                  ; $a6c9 : $00
	cmp $28ff                                                  ; $a6ca : $cd, $ff, $28
	.db $b7                                                  ; $a6cd : $b7
	.db $03                                                  ; $a6ce : $03
	.db $00                                                  ; $a6cf : $00
	ldy $14ff                                                  ; $a6d0 : $ac, $ff, $14
	.db $b7                                                  ; $a6d3 : $b7
	.db $03                                                  ; $a6d4 : $03
	.db $00                                                  ; $a6d5 : $00
	sta $14ff, y                                                  ; $a6d6 : $99, $ff, $14
	.db $b7                                                  ; $a6d9 : $b7
	.db $03                                                  ; $a6da : $03
	.db $00                                                  ; $a6db : $00
	sta ($ff, x)                                                  ; $a6dc : $81, $ff
	asl a                                                  ; $a6de : $0a
	.db $b7                                                  ; $a6df : $b7
	.db $03                                                  ; $a6e0 : $03
	.db $00                                                  ; $a6e1 : $00
	.db $73                                                  ; $a6e2 : $73
	.db $ff                                                  ; $a6e3 : $ff
	asl a                                                  ; $a6e4 : $0a
	.db $b7                                                  ; $a6e5 : $b7
	.db $03                                                  ; $a6e6 : $03
	.db $00                                                  ; $a6e7 : $00
	ror $ff                                                  ; $a6e8 : $66, $ff
	asl a                                                  ; $a6ea : $0a
	.db $b7                                                  ; $a6eb : $b7
	.db $03                                                  ; $a6ec : $03
	.db $00                                                  ; $a6ed : $00
	.db $73                                                  ; $a6ee : $73
	.db $ff                                                  ; $a6ef : $ff
	asl a                                                  ; $a6f0 : $0a
	.db $b7                                                  ; $a6f1 : $b7
	.db $03                                                  ; $a6f2 : $03
	.db $00                                                  ; $a6f3 : $00
	sta ($ff, x)                                                  ; $a6f4 : $81, $ff
	asl a                                                  ; $a6f6 : $0a
	.db $b7                                                  ; $a6f7 : $b7
	.db $03                                                  ; $a6f8 : $03
	.db $00                                                  ; $a6f9 : $00
	sta $0aff, y                                                  ; $a6fa : $99, $ff, $0a
	.db $b7                                                  ; $a6fd : $b7
	.db $03                                                  ; $a6fe : $03
	.db $00                                                  ; $a6ff : $00
	sta ($ff, x)                                                  ; $a700 : $81, $ff
	.db $14                                                  ; $a702 : $14
	.db $b7                                                  ; $a703 : $b7
	.db $03                                                  ; $a704 : $03
	.db $00                                                  ; $a705 : $00
	ldy $0aff                                                  ; $a706 : $ac, $ff, $0a
	.db $b7                                                  ; $a709 : $b7
	.db $03                                                  ; $a70a : $03
	.db $00                                                  ; $a70b : $00
	sta $0aff, y                                                  ; $a70c : $99, $ff, $0a
	.db $67                                                  ; $a70f : $67
	.db $03                                                  ; $a710 : $03
	.db $00                                                  ; $a711 : $00
	sta ($ff, x)                                                  ; $a712 : $81, $ff
	asl a                                                  ; $a714 : $0a
	.db $67                                                  ; $a715 : $67
	.db $03                                                  ; $a716 : $03
	.db $00                                                  ; $a717 : $00
	.db $73                                                  ; $a718 : $73
	.db $ff                                                  ; $a719 : $ff
	asl a                                                  ; $a71a : $0a
	.db $67                                                  ; $a71b : $67
	.db $03                                                  ; $a71c : $03
	.db $00                                                  ; $a71d : $00
	sta ($ff, x)                                                  ; $a71e : $81, $ff
	asl a                                                  ; $a720 : $0a
	.db $67                                                  ; $a721 : $67
	.db $03                                                  ; $a722 : $03
	.db $00                                                  ; $a723 : $00
	.db $73                                                  ; $a724 : $73
	.db $ff                                                  ; $a725 : $ff
	asl a                                                  ; $a726 : $0a
	.db $67                                                  ; $a727 : $67
	.db $03                                                  ; $a728 : $03
	.db $00                                                  ; $a729 : $00
	ror $ff                                                  ; $a72a : $66, $ff
	asl a                                                  ; $a72c : $0a
	.db $b7                                                  ; $a72d : $b7
	.db $03                                                  ; $a72e : $03
	.db $00                                                  ; $a72f : $00
	ldy $0aff                                                  ; $a730 : $ac, $ff, $0a
	.db $b7                                                  ; $a733 : $b7
	.db $03                                                  ; $a734 : $03
	.db $00                                                  ; $a735 : $00
	cmp $28ff                                                  ; $a736 : $cd, $ff, $28
	.db $b7                                                  ; $a739 : $b7
	.db $03                                                  ; $a73a : $03
	.db $00                                                  ; $a73b : $00
	ldy $14ff                                                  ; $a73c : $ac, $ff, $14
	.db $b7                                                  ; $a73f : $b7
	.db $03                                                  ; $a740 : $03
	.db $00                                                  ; $a741 : $00
	sta $14ff, y                                                  ; $a742 : $99, $ff, $14
	.db $b7                                                  ; $a745 : $b7
	.db $03                                                  ; $a746 : $03
	.db $00                                                  ; $a747 : $00
	sta ($ff, x)                                                  ; $a748 : $81, $ff
	asl a                                                  ; $a74a : $0a
	.db $b7                                                  ; $a74b : $b7
	.db $03                                                  ; $a74c : $03
	.db $00                                                  ; $a74d : $00
	.db $73                                                  ; $a74e : $73
	.db $ff                                                  ; $a74f : $ff
	asl a                                                  ; $a750 : $0a
	.db $b7                                                  ; $a751 : $b7
	.db $03                                                  ; $a752 : $03
	.db $00                                                  ; $a753 : $00
	ror $ff                                                  ; $a754 : $66, $ff
	asl a                                                  ; $a756 : $0a
	.db $b7                                                  ; $a757 : $b7
	.db $03                                                  ; $a758 : $03
	.db $00                                                  ; $a759 : $00
	sta ($ff, x)                                                  ; $a75a : $81, $ff
	asl a                                                  ; $a75c : $0a
	.db $b7                                                  ; $a75d : $b7
	.db $03                                                  ; $a75e : $03
	.db $00                                                  ; $a75f : $00
	sta $14ff, y                                                  ; $a760 : $99, $ff, $14
	.db $b7                                                  ; $a763 : $b7
	.db $03                                                  ; $a764 : $03
	.db $00                                                  ; $a765 : $00
	ldy $14ff                                                  ; $a766 : $ac, $ff, $14
	.db $b7                                                  ; $a769 : $b7
	.db $03                                                  ; $a76a : $03
	.db $00                                                  ; $a76b : $00
	ldy $14ff                                                  ; $a76c : $ac, $ff, $14
	.db $b7                                                  ; $a76f : $b7
	.db $03                                                  ; $a770 : $03
	.db $00                                                  ; $a771 : $00
	inc $ff                                                  ; $a772 : $e6, $ff
	asl a                                                  ; $a774 : $0a
	.db $b7                                                  ; $a775 : $b7
	.db $03                                                  ; $a776 : $03
	.db $00                                                  ; $a777 : $00
	cmp $0aff                                                  ; $a778 : $cd, $ff, $0a
	.db $b7                                                  ; $a77b : $b7
	.db $03                                                  ; $a77c : $03
	.db $00                                                  ; $a77d : $00
	ldy $0aff                                                  ; $a77e : $ac, $ff, $0a
	.db $b7                                                  ; $a781 : $b7
	.db $03                                                  ; $a782 : $03
	.db $00                                                  ; $a783 : $00
	cmp $0aff                                                  ; $a784 : $cd, $ff, $0a
	.db $b7                                                  ; $a787 : $b7
	.db $03                                                  ; $a788 : $03
	.db $00                                                  ; $a789 : $00
	inc $ff                                                  ; $a78a : $e6, $ff
	asl a                                                  ; $a78c : $0a
	.db $b7                                                  ; $a78d : $b7
	.db $03                                                  ; $a78e : $03
	ora ($03, x)                                                  ; $a78f : $01, $03
	.db $ff                                                  ; $a791 : $ff
	asl a                                                  ; $a792 : $0a
	.db $b7                                                  ; $a793 : $b7
	.db $03                                                  ; $a794 : $03
	ora ($34, x)                                                  ; $a795 : $01, $34
	.db $ff                                                  ; $a797 : $ff
	asl $03b7, x                                                  ; $a798 : $1e, $b7, $03
	ora ($03, x)                                                  ; $a79b : $01, $03
	.db $ff                                                  ; $a79d : $ff
	asl a                                                  ; $a79e : $0a
	.db $67                                                  ; $a79f : $67
	.db $03                                                  ; $a7a0 : $03
	.db $00                                                  ; $a7a1 : $00
	sta $0aff, y                                                  ; $a7a2 : $99, $ff, $0a
	.db $67                                                  ; $a7a5 : $67
	.db $03                                                  ; $a7a6 : $03
	.db $00                                                  ; $a7a7 : $00
	sta ($ff, x)                                                  ; $a7a8 : $81, $ff
	asl a                                                  ; $a7aa : $0a
	.db $67                                                  ; $a7ab : $67
	.db $03                                                  ; $a7ac : $03
	.db $00                                                  ; $a7ad : $00
	.db $73                                                  ; $a7ae : $73
	.db $ff                                                  ; $a7af : $ff
	asl a                                                  ; $a7b0 : $0a
	.db $b7                                                  ; $a7b1 : $b7
	.db $03                                                  ; $a7b2 : $03
	.db $00                                                  ; $a7b3 : $00
	cmp $0aff                                                  ; $a7b4 : $cd, $ff, $0a
	.db $b7                                                  ; $a7b7 : $b7
	.db $03                                                  ; $a7b8 : $03
	.db $00                                                  ; $a7b9 : $00
	inc $ff                                                  ; $a7ba : $e6, $ff
	.db $14                                                  ; $a7bc : $14
	.db $b7                                                  ; $a7bd : $b7
	.db $03                                                  ; $a7be : $03
	ora ($03, x)                                                  ; $a7bf : $01, $03
	.db $ff                                                  ; $a7c1 : $ff
	asl $03b7, x                                                  ; $a7c2 : $1e, $b7, $03
	.db $00                                                  ; $a7c5 : $00
	inc $ff                                                  ; $a7c6 : $e6, $ff
	asl a                                                  ; $a7c8 : $0a
	.db $b7                                                  ; $a7c9 : $b7
	.db $03                                                  ; $a7ca : $03
	.db $00                                                  ; $a7cb : $00
	cmp $14ff                                                  ; $a7cc : $cd, $ff, $14
	.db $b7                                                  ; $a7cf : $b7
	.db $03                                                  ; $a7d0 : $03
	.db $00                                                  ; $a7d1 : $00
	ldy $0aff                                                  ; $a7d2 : $ac, $ff, $0a
	.db $b7                                                  ; $a7d5 : $b7
	.db $03                                                  ; $a7d6 : $03
	.db $00                                                  ; $a7d7 : $00
	sta $0aff, y                                                  ; $a7d8 : $99, $ff, $0a
	.db $b7                                                  ; $a7db : $b7
	.db $03                                                  ; $a7dc : $03
	.db $00                                                  ; $a7dd : $00
	sta ($ff, x)                                                  ; $a7de : $81, $ff
	.db $14                                                  ; $a7e0 : $14
	.db $b7                                                  ; $a7e1 : $b7
	.db $03                                                  ; $a7e2 : $03
	.db $00                                                  ; $a7e3 : $00
	sta $14ff, y                                                  ; $a7e4 : $99, $ff, $14
	.db $b7                                                  ; $a7e7 : $b7
	.db $03                                                  ; $a7e8 : $03
	.db $00                                                  ; $a7e9 : $00
	ldy $14ff                                                  ; $a7ea : $ac, $ff, $14
	.db $b7                                                  ; $a7ed : $b7
	.db $03                                                  ; $a7ee : $03
	.db $00                                                  ; $a7ef : $00
	ldy $14ff                                                  ; $a7f0 : $ac, $ff, $14
	.db $b7                                                  ; $a7f3 : $b7
	.db $03                                                  ; $a7f4 : $03
	.db $00                                                  ; $a7f5 : $00
	inc $ff                                                  ; $a7f6 : $e6, $ff
	asl a                                                  ; $a7f8 : $0a
	.db $b7                                                  ; $a7f9 : $b7
	.db $03                                                  ; $a7fa : $03
	.db $00                                                  ; $a7fb : $00
	cmp $0aff                                                  ; $a7fc : $cd, $ff, $0a
	.db $b7                                                  ; $a7ff : $b7
	.db $03                                                  ; $a800 : $03
	.db $00                                                  ; $a801 : $00
	ldy $0aff                                                  ; $a802 : $ac, $ff, $0a
	.db $b7                                                  ; $a805 : $b7
	.db $03                                                  ; $a806 : $03
	.db $00                                                  ; $a807 : $00
	cmp $0aff                                                  ; $a808 : $cd, $ff, $0a
	.db $b7                                                  ; $a80b : $b7
	.db $03                                                  ; $a80c : $03
	.db $00                                                  ; $a80d : $00
	inc $ff                                                  ; $a80e : $e6, $ff
	asl a                                                  ; $a810 : $0a
	.db $b7                                                  ; $a811 : $b7
	.db $03                                                  ; $a812 : $03
	ora ($03, x)                                                  ; $a813 : $01, $03
	.db $ff                                                  ; $a815 : $ff
	asl a                                                  ; $a816 : $0a
	.db $b7                                                  ; $a817 : $b7
	.db $03                                                  ; $a818 : $03
	.db $00                                                  ; $a819 : $00
	inc $ff                                                  ; $a81a : $e6, $ff
	plp                                                  ; $a81c : $28
	.db $b7                                                  ; $a81d : $b7
	.db $03                                                  ; $a81e : $03
	ora ($34, x)                                                  ; $a81f : $01, $34
	.db $ff                                                  ; $a821 : $ff
	.db $14                                                  ; $a822 : $14
	.db $b7                                                  ; $a823 : $b7
	.db $03                                                  ; $a824 : $03
	ora ($03, x)                                                  ; $a825 : $01, $03
	.db $ff                                                  ; $a827 : $ff
	asl $03b7, x                                                  ; $a828 : $1e, $b7, $03
	.db $00                                                  ; $a82b : $00
	inc $ff                                                  ; $a82c : $e6, $ff
	asl a                                                  ; $a82e : $0a
	.db $b7                                                  ; $a82f : $b7
	.db $03                                                  ; $a830 : $03
	.db $00                                                  ; $a831 : $00
	cmp $0aff                                                  ; $a832 : $cd, $ff, $0a
	.db $b7                                                  ; $a835 : $b7
	.db $03                                                  ; $a836 : $03
	ora ($03, x)                                                  ; $a837 : $01, $03
	.db $ff                                                  ; $a839 : $ff
	asl a                                                  ; $a83a : $0a
	.db $b7                                                  ; $a83b : $b7
	.db $03                                                  ; $a83c : $03
	.db $00                                                  ; $a83d : $00
	inc $ff                                                  ; $a83e : $e6, $ff
	asl a                                                  ; $a840 : $0a
	.db $b7                                                  ; $a841 : $b7
	.db $03                                                  ; $a842 : $03
	ora ($03, x)                                                  ; $a843 : $01, $03
	.db $ff                                                  ; $a845 : $ff
	asl a                                                  ; $a846 : $0a
	.db $b7                                                  ; $a847 : $b7
	.db $03                                                  ; $a848 : $03
	ora ($34, x)                                                  ; $a849 : $01, $34
	.db $ff                                                  ; $a84b : $ff
	asl a                                                  ; $a84c : $0a
	.db $b7                                                  ; $a84d : $b7
	.db $03                                                  ; $a84e : $03
	ora ($03, x)                                                  ; $a84f : $01, $03
	.db $ff                                                  ; $a851 : $ff
	asl a                                                  ; $a852 : $0a
	.db $b7                                                  ; $a853 : $b7
	.db $03                                                  ; $a854 : $03
	ora ($34, x)                                                  ; $a855 : $01, $34
	.db $ff                                                  ; $a857 : $ff
	asl $03b7, x                                                  ; $a858 : $1e, $b7, $03
	ora ($59, x)                                                  ; $a85b : $01, $59
	.db $ff                                                  ; $a85d : $ff
	asl a                                                  ; $a85e : $0a
	.db $b7                                                  ; $a85f : $b7
	.db $03                                                  ; $a860 : $03
	ora ($34, x)                                                  ; $a861 : $01, $34
	.db $ff                                                  ; $a863 : $ff
	asl a                                                  ; $a864 : $0a
	.db $b7                                                  ; $a865 : $b7
	.db $03                                                  ; $a866 : $03
	ora ($03, x)                                                  ; $a867 : $01, $03
	.db $ff                                                  ; $a869 : $ff
	asl a                                                  ; $a86a : $0a
	.db $b7                                                  ; $a86b : $b7
	.db $03                                                  ; $a86c : $03
	.db $00                                                  ; $a86d : $00
	inc $ff                                                  ; $a86e : $e6, $ff
	asl a                                                  ; $a870 : $0a
	.db $b7                                                  ; $a871 : $b7
	.db $03                                                  ; $a872 : $03
	.db $00                                                  ; $a873 : $00
	cmp $0aff                                                  ; $a874 : $cd, $ff, $0a
	.db $b7                                                  ; $a877 : $b7
	.db $03                                                  ; $a878 : $03
	.db $00                                                  ; $a879 : $00
	inc $ff                                                  ; $a87a : $e6, $ff
	.db $14                                                  ; $a87c : $14
	.db $b7                                                  ; $a87d : $b7
	.db $03                                                  ; $a87e : $03
	ora ($03, x)                                                  ; $a87f : $01, $03
	.db $ff                                                  ; $a881 : $ff
	asl $03b7, x                                                  ; $a882 : $1e, $b7, $03
	.db $00                                                  ; $a885 : $00
	inc $ff                                                  ; $a886 : $e6, $ff
	asl a                                                  ; $a888 : $0a
	.db $b7                                                  ; $a889 : $b7
	.db $03                                                  ; $a88a : $03
	.db $00                                                  ; $a88b : $00
	cmp $14ff                                                  ; $a88c : $cd, $ff, $14
	.db $b7                                                  ; $a88f : $b7
	.db $03                                                  ; $a890 : $03
	.db $00                                                  ; $a891 : $00
	ldy $0aff                                                  ; $a892 : $ac, $ff, $0a
	.db $b7                                                  ; $a895 : $b7
	.db $03                                                  ; $a896 : $03
	.db $00                                                  ; $a897 : $00
	sta $0aff, y                                                  ; $a898 : $99, $ff, $0a
	.db $b7                                                  ; $a89b : $b7
	.db $03                                                  ; $a89c : $03
	.db $00                                                  ; $a89d : $00
	sta ($ff, x)                                                  ; $a89e : $81, $ff
	.db $14                                                  ; $a8a0 : $14
	.db $b7                                                  ; $a8a1 : $b7
	.db $03                                                  ; $a8a2 : $03
	.db $00                                                  ; $a8a3 : $00
	sta $14ff, y                                                  ; $a8a4 : $99, $ff, $14
	.db $b7                                                  ; $a8a7 : $b7
	.db $03                                                  ; $a8a8 : $03
	.db $00                                                  ; $a8a9 : $00
	ldy $14ff                                                  ; $a8aa : $ac, $ff, $14
	.db $b7                                                  ; $a8ad : $b7
	.db $03                                                  ; $a8ae : $03
	.db $00                                                  ; $a8af : $00
	ldy $14ff                                                  ; $a8b0 : $ac, $ff, $14
	.db $b7                                                  ; $a8b3 : $b7
	.db $03                                                  ; $a8b4 : $03
	.db $00                                                  ; $a8b5 : $00
	inc $ff                                                  ; $a8b6 : $e6, $ff
	asl a                                                  ; $a8b8 : $0a
	.db $b7                                                  ; $a8b9 : $b7
	.db $03                                                  ; $a8ba : $03
	.db $00                                                  ; $a8bb : $00
	cmp $0aff                                                  ; $a8bc : $cd, $ff, $0a
	.db $b7                                                  ; $a8bf : $b7
	.db $03                                                  ; $a8c0 : $03
	.db $00                                                  ; $a8c1 : $00
	ldy $0aff                                                  ; $a8c2 : $ac, $ff, $0a
	.db $b7                                                  ; $a8c5 : $b7
	.db $03                                                  ; $a8c6 : $03
	.db $00                                                  ; $a8c7 : $00
	cmp $0aff                                                  ; $a8c8 : $cd, $ff, $0a
	.db $b7                                                  ; $a8cb : $b7
	.db $03                                                  ; $a8cc : $03
	.db $00                                                  ; $a8cd : $00
	inc $ff                                                  ; $a8ce : $e6, $ff
	asl a                                                  ; $a8d0 : $0a
	.db $b7                                                  ; $a8d1 : $b7
	.db $03                                                  ; $a8d2 : $03
	ora ($03, x)                                                  ; $a8d3 : $01, $03
	.db $ff                                                  ; $a8d5 : $ff
	asl a                                                  ; $a8d6 : $0a
	.db $b7                                                  ; $a8d7 : $b7
	.db $03                                                  ; $a8d8 : $03
	.db $00                                                  ; $a8d9 : $00
	inc $ff                                                  ; $a8da : $e6, $ff
	plp                                                  ; $a8dc : $28
	.db $b7                                                  ; $a8dd : $b7
	.db $03                                                  ; $a8de : $03
	ora ($34, x)                                                  ; $a8df : $01, $34
	.db $ff                                                  ; $a8e1 : $ff
	.db $14                                                  ; $a8e2 : $14
	.db $b7                                                  ; $a8e3 : $b7
	.db $03                                                  ; $a8e4 : $03
	ora ($03, x)                                                  ; $a8e5 : $01, $03
	.db $ff                                                  ; $a8e7 : $ff
	asl $03b7, x                                                  ; $a8e8 : $1e, $b7, $03
	.db $00                                                  ; $a8eb : $00
	inc $ff                                                  ; $a8ec : $e6, $ff
	asl a                                                  ; $a8ee : $0a
	.db $b7                                                  ; $a8ef : $b7
	.db $03                                                  ; $a8f0 : $03
	.db $00                                                  ; $a8f1 : $00
	cmp $0aff                                                  ; $a8f2 : $cd, $ff, $0a
	.db $b7                                                  ; $a8f5 : $b7
	.db $03                                                  ; $a8f6 : $03
	ora ($03, x)                                                  ; $a8f7 : $01, $03
	.db $ff                                                  ; $a8f9 : $ff
	asl a                                                  ; $a8fa : $0a
	.db $b7                                                  ; $a8fb : $b7
	.db $03                                                  ; $a8fc : $03
	.db $00                                                  ; $a8fd : $00
	inc $ff                                                  ; $a8fe : $e6, $ff
	asl a                                                  ; $a900 : $0a
	.db $b7                                                  ; $a901 : $b7
	.db $03                                                  ; $a902 : $03
	ora ($03, x)                                                  ; $a903 : $01, $03
	.db $ff                                                  ; $a905 : $ff
	asl a                                                  ; $a906 : $0a
	.db $b7                                                  ; $a907 : $b7
	.db $03                                                  ; $a908 : $03
	ora ($34, x)                                                  ; $a909 : $01, $34
	.db $ff                                                  ; $a90b : $ff
	asl a                                                  ; $a90c : $0a
	.db $b7                                                  ; $a90d : $b7
	.db $03                                                  ; $a90e : $03
	ora ($59, x)                                                  ; $a90f : $01, $59
	.db $ff                                                  ; $a911 : $ff
	asl a                                                  ; $a912 : $0a
	.db $b7                                                  ; $a913 : $b7
	.db $03                                                  ; $a914 : $03
	ora ($34, x)                                                  ; $a915 : $01, $34
	.db $ff                                                  ; $a917 : $ff
	asl a                                                  ; $a918 : $0a
	.db $b7                                                  ; $a919 : $b7
	.db $03                                                  ; $a91a : $03
	ora ($03, x)                                                  ; $a91b : $01, $03
	.db $ff                                                  ; $a91d : $ff
	asl a                                                  ; $a91e : $0a
	.db $b7                                                  ; $a91f : $b7
	.db $03                                                  ; $a920 : $03
	.db $00                                                  ; $a921 : $00
	cmp $0aff                                                  ; $a922 : $cd, $ff, $0a
	.db $b7                                                  ; $a925 : $b7
	.db $03                                                  ; $a926 : $03
	.db $00                                                  ; $a927 : $00
	inc $ff                                                  ; $a928 : $e6, $ff
	asl a                                                  ; $a92a : $0a
	.db $b7                                                  ; $a92b : $b7
	.db $03                                                  ; $a92c : $03
	ora ($03, x)                                                  ; $a92d : $01, $03
	.db $ff                                                  ; $a92f : $ff
	.db $14                                                  ; $a930 : $14
	.db $b7                                                  ; $a931 : $b7
	.db $03                                                  ; $a932 : $03
	ora ($34, x)                                                  ; $a933 : $01, $34
	.db $ff                                                  ; $a935 : $ff
	.db $3c                                                  ; $a936 : $3c
	.db $b7                                                  ; $a937 : $b7
	.db $03                                                  ; $a938 : $03
	ora ($59, x)                                                  ; $a939 : $01, $59
	.db $ff                                                  ; $a93b : $ff
	.db $14                                                  ; $a93c : $14
	.db $b7                                                  ; $a93d : $b7
	.db $03                                                  ; $a93e : $03
	.db $00                                                  ; $a93f : $00
	ora ($ff, x)                                                  ; $a940 : $01, $ff
	.db $ff                                                  ; $a942 : $ff
	.db $14                                                  ; $a943 : $14
	ora $0103                                                  ; $a944 : $0d, $03, $01
	.db $03                                                  ; $a947 : $03
	.db $00                                                  ; $a948 : $00
	.db $14                                                  ; $a949 : $14
	ora $0103                                                  ; $a94a : $0d, $03, $01
	eor $14ff, y                                                  ; $a94d : $59, $ff, $14
	ora $0103                                                  ; $a950 : $0d, $03, $01
	.db $34                                                  ; $a953 : $34
	.db $00                                                  ; $a954 : $00
	.db $14                                                  ; $a955 : $14
	ora $0103                                                  ; $a956 : $0d, $03, $01
	eor $14ff, y                                                  ; $a959 : $59, $ff, $14
	ora $0103                                                  ; $a95c : $0d, $03, $01
	.db $03                                                  ; $a95f : $03
	.db $00                                                  ; $a960 : $00
	.db $14                                                  ; $a961 : $14
	ora $0103                                                  ; $a962 : $0d, $03, $01
	eor $14ff, y                                                  ; $a965 : $59, $ff, $14
	ora $0103                                                  ; $a968 : $0d, $03, $01
	.db $34                                                  ; $a96b : $34
	.db $00                                                  ; $a96c : $00
	.db $14                                                  ; $a96d : $14
	ora $0103                                                  ; $a96e : $0d, $03, $01
	eor $14ff, y                                                  ; $a971 : $59, $ff, $14
	ora $0203                                                  ; $a974 : $0d, $03, $02
	asl $00                                                  ; $a977 : $06, $00
	asl a                                                  ; $a979 : $0a
	ora $0203                                                  ; $a97a : $0d, $03, $02
	.db $b3                                                  ; $a97d : $b3
	.db $00                                                  ; $a97e : $00
	asl a                                                  ; $a97f : $0a
	ora $0203                                                  ; $a980 : $0d, $03, $02
	.db $b3                                                  ; $a983 : $b3
	.db $00                                                  ; $a984 : $00
	.db $14                                                  ; $a985 : $14
	ora $0203                                                  ; $a986 : $0d, $03, $02
	pla                                                  ; $a989 : $68
	.db $00                                                  ; $a98a : $00
	.db $14                                                  ; $a98b : $14
	ora $0203                                                  ; $a98c : $0d, $03, $02
	asl $00                                                  ; $a98f : $06, $00
	.db $14                                                  ; $a991 : $14
	ora $0203                                                  ; $a992 : $0d, $03, $02
	asl $00                                                  ; $a995 : $06, $00
	.db $14                                                  ; $a997 : $14
	ora $0203                                                  ; $a998 : $0d, $03, $02
	.db $b3                                                  ; $a99b : $b3
	.db $ff                                                  ; $a99c : $ff
	.db $14                                                  ; $a99d : $14
	ora $0203                                                  ; $a99e : $0d, $03, $02
	pla                                                  ; $a9a1 : $68
	.db $00                                                  ; $a9a2 : $00
	.db $14                                                  ; $a9a3 : $14
	ora $0203                                                  ; $a9a4 : $0d, $03, $02
	.db $b3                                                  ; $a9a7 : $b3
	.db $ff                                                  ; $a9a8 : $ff
	.db $14                                                  ; $a9a9 : $14
	ora $0103                                                  ; $a9aa : $0d, $03, $01
	.db $03                                                  ; $a9ad : $03
	.db $00                                                  ; $a9ae : $00
	.db $14                                                  ; $a9af : $14
	ora $0103                                                  ; $a9b0 : $0d, $03, $01
	eor $14ff, y                                                  ; $a9b3 : $59, $ff, $14
	ora $0103                                                  ; $a9b6 : $0d, $03, $01
	.db $34                                                  ; $a9b9 : $34
	.db $00                                                  ; $a9ba : $00
	.db $14                                                  ; $a9bb : $14
	ora $0103                                                  ; $a9bc : $0d, $03, $01
	eor $14ff, y                                                  ; $a9bf : $59, $ff, $14
	ora $0103                                                  ; $a9c2 : $0d, $03, $01
	.db $03                                                  ; $a9c5 : $03
	.db $00                                                  ; $a9c6 : $00
	.db $14                                                  ; $a9c7 : $14
	ora $0103                                                  ; $a9c8 : $0d, $03, $01
	eor $14ff, y                                                  ; $a9cb : $59, $ff, $14
	ora $03.w                                                  ; $a9ce : $0d, $03, $00
	inc $00                                                  ; $a9d1 : $e6, $00
	.db $14                                                  ; $a9d3 : $14
	ora $0103                                                  ; $a9d4 : $0d, $03, $01
	eor $14ff, y                                                  ; $a9d7 : $59, $ff, $14
	ora $0203                                                  ; $a9da : $0d, $03, $02
	.db $b3                                                  ; $a9dd : $b3
	.db $00                                                  ; $a9de : $00
	.db $14                                                  ; $a9df : $14
	ora $0103                                                  ; $a9e0 : $0d, $03, $01
	cmp $14ff                                                  ; $a9e3 : $cd, $ff, $14
	ora $0103                                                  ; $a9e6 : $0d, $03, $01
	txs                                                  ; $a9e9 : $9a
	.db $00                                                  ; $a9ea : $00
	.db $14                                                  ; $a9eb : $14
	ora $0103                                                  ; $a9ec : $0d, $03, $01
	cmp $14ff                                                  ; $a9ef : $cd, $ff, $14
	ora $0203                                                  ; $a9f2 : $0d, $03, $02
	asl $00                                                  ; $a9f5 : $06, $00
	asl a                                                  ; $a9f7 : $0a
	ora $0203                                                  ; $a9f8 : $0d, $03, $02
	.db $b3                                                  ; $a9fb : $b3
	.db $00                                                  ; $a9fc : $00
	asl a                                                  ; $a9fd : $0a
	ora $0203                                                  ; $a9fe : $0d, $03, $02
	.db $b3                                                  ; $aa01 : $b3
	.db $00                                                  ; $aa02 : $00
	.db $14                                                  ; $aa03 : $14
	ora $0203                                                  ; $aa04 : $0d, $03, $02
	pla                                                  ; $aa07 : $68
	.db $00                                                  ; $aa08 : $00
	.db $14                                                  ; $aa09 : $14
	ora $0203                                                  ; $aa0a : $0d, $03, $02
	asl $00                                                  ; $aa0d : $06, $00
	.db $14                                                  ; $aa0f : $14
	ora $0203                                                  ; $aa10 : $0d, $03, $02
	asl $00                                                  ; $aa13 : $06, $00
	.db $14                                                  ; $aa15 : $14
	ora $0203                                                  ; $aa16 : $0d, $03, $02
	.db $b3                                                  ; $aa19 : $b3
	.db $ff                                                  ; $aa1a : $ff
	.db $14                                                  ; $aa1b : $14
	ora $0103                                                  ; $aa1c : $0d, $03, $01
	cmp $1400                                                  ; $aa1f : $cd, $00, $14
	ora $0203                                                  ; $aa22 : $0d, $03, $02
	.db $b3                                                  ; $aa25 : $b3
	.db $ff                                                  ; $aa26 : $ff
	.db $14                                                  ; $aa27 : $14
	ora $0203                                                  ; $aa28 : $0d, $03, $02
	asl $00                                                  ; $aa2b : $06, $00
	.db $14                                                  ; $aa2d : $14
	ora $0203                                                  ; $aa2e : $0d, $03, $02
	.db $b3                                                  ; $aa31 : $b3
	.db $ff                                                  ; $aa32 : $ff
	.db $14                                                  ; $aa33 : $14
	ora $0203                                                  ; $aa34 : $0d, $03, $02
	pla                                                  ; $aa37 : $68
	.db $00                                                  ; $aa38 : $00
	.db $14                                                  ; $aa39 : $14
	ora $0203                                                  ; $aa3a : $0d, $03, $02
	.db $b3                                                  ; $aa3d : $b3
	.db $ff                                                  ; $aa3e : $ff
	.db $14                                                  ; $aa3f : $14
	ora $0203                                                  ; $aa40 : $0d, $03, $02
	.db $b3                                                  ; $aa43 : $b3
	.db $00                                                  ; $aa44 : $00
	.db $14                                                  ; $aa45 : $14
	ora $0103                                                  ; $aa46 : $0d, $03, $01
	cmp $14ff                                                  ; $aa49 : $cd, $ff, $14
	ora $0103                                                  ; $aa4c : $0d, $03, $01
	txs                                                  ; $aa4f : $9a
	.db $00                                                  ; $aa50 : $00
	.db $14                                                  ; $aa51 : $14
	ora $0103                                                  ; $aa52 : $0d, $03, $01
	cmp $14ff                                                  ; $aa55 : $cd, $ff, $14
	ora $0303                                                  ; $aa58 : $0d, $03, $03
	rol $00, x                                                  ; $aa5b : $36, $00
	asl a                                                  ; $aa5d : $0a
	ora $0203                                                  ; $aa5e : $0d, $03, $02
	pla                                                  ; $aa61 : $68
	.db $00                                                  ; $aa62 : $00
	asl a                                                  ; $aa63 : $0a
	ora $0203                                                  ; $aa64 : $0d, $03, $02
	pla                                                  ; $aa67 : $68
	.db $00                                                  ; $aa68 : $00
	.db $14                                                  ; $aa69 : $14
	ora $0203                                                  ; $aa6a : $0d, $03, $02
	asl $00                                                  ; $aa6d : $06, $00
	.db $14                                                  ; $aa6f : $14
	ora $0203                                                  ; $aa70 : $0d, $03, $02
	pla                                                  ; $aa73 : $68
	.db $00                                                  ; $aa74 : $00
	.db $14                                                  ; $aa75 : $14
	ora $0303                                                  ; $aa76 : $0d, $03, $03
	.db $9b                                                  ; $aa79 : $9b
	.db $00                                                  ; $aa7a : $00
	.db $14                                                  ; $aa7b : $14
	ora $0203                                                  ; $aa7c : $0d, $03, $02
	pla                                                  ; $aa7f : $68
	.db $ff                                                  ; $aa80 : $ff
	.db $14                                                  ; $aa81 : $14
	ora $0203                                                  ; $aa82 : $0d, $03, $02
	asl $00                                                  ; $aa85 : $06, $00
	.db $14                                                  ; $aa87 : $14
	ora $0203                                                  ; $aa88 : $0d, $03, $02
	pla                                                  ; $aa8b : $68
	.db $ff                                                  ; $aa8c : $ff
	.db $14                                                  ; $aa8d : $14
	ora $0203                                                  ; $aa8e : $0d, $03, $02
	asl $00                                                  ; $aa91 : $06, $00
	.db $14                                                  ; $aa93 : $14
	ora $0203                                                  ; $aa94 : $0d, $03, $02
	.db $b3                                                  ; $aa97 : $b3
	.db $ff                                                  ; $aa98 : $ff
	.db $14                                                  ; $aa99 : $14
	ora $0203                                                  ; $aa9a : $0d, $03, $02
	pla                                                  ; $aa9d : $68
	.db $00                                                  ; $aa9e : $00
	.db $14                                                  ; $aa9f : $14
	ora $0203                                                  ; $aaa0 : $0d, $03, $02
	.db $b3                                                  ; $aaa3 : $b3
	.db $ff                                                  ; $aaa4 : $ff
	.db $14                                                  ; $aaa5 : $14
	ora $0303                                                  ; $aaa6 : $0d, $03, $03
	rol $00, x                                                  ; $aaa9 : $36, $00
	.db $14                                                  ; $aaab : $14
	ora $0203                                                  ; $aaac : $0d, $03, $02
	.db $b3                                                  ; $aaaf : $b3
	.db $ff                                                  ; $aab0 : $ff
	.db $14                                                  ; $aab1 : $14
	ora $0103                                                  ; $aab2 : $0d, $03, $01
	cmp $1400                                                  ; $aab5 : $cd, $00, $14
	ora $0203                                                  ; $aab8 : $0d, $03, $02
	.db $b3                                                  ; $aabb : $b3
	.db $ff                                                  ; $aabc : $ff
	.db $14                                                  ; $aabd : $14
	ora $0403                                                  ; $aabe : $0d, $03, $04
	.db $0c                                                  ; $aac1 : $0c
	.db $00                                                  ; $aac2 : $00
	.db $14                                                  ; $aac3 : $14
	ora $0203                                                  ; $aac4 : $0d, $03, $02
	.db $b3                                                  ; $aac7 : $b3
	.db $ff                                                  ; $aac8 : $ff
	.db $14                                                  ; $aac9 : $14
	ora $0203                                                  ; $aaca : $0d, $03, $02
	pla                                                  ; $aacd : $68
	.db $00                                                  ; $aace : $00
	.db $14                                                  ; $aacf : $14
	ora $0203                                                  ; $aad0 : $0d, $03, $02
	.db $b3                                                  ; $aad3 : $b3
	.db $ff                                                  ; $aad4 : $ff
	.db $14                                                  ; $aad5 : $14
	ora $0503                                                  ; $aad6 : $0d, $03, $05
	.db $67                                                  ; $aad9 : $67
	.db $00                                                  ; $aada : $00
	.db $14                                                  ; $aadb : $14
	ora $0103                                                  ; $aadc : $0d, $03, $01
	cmp $14ff                                                  ; $aadf : $cd, $ff, $14
	ora $0103                                                  ; $aae2 : $0d, $03, $01
	txs                                                  ; $aae5 : $9a
	.db $00                                                  ; $aae6 : $00
	.db $14                                                  ; $aae7 : $14
	ora $0103                                                  ; $aae8 : $0d, $03, $01
	cmp $14ff                                                  ; $aaeb : $cd, $ff, $14
	ora $0303                                                  ; $aaee : $0d, $03, $03
	rol $00, x                                                  ; $aaf1 : $36, $00
	asl a                                                  ; $aaf3 : $0a
	ora $0203                                                  ; $aaf4 : $0d, $03, $02
	pla                                                  ; $aaf7 : $68
	.db $00                                                  ; $aaf8 : $00
	asl a                                                  ; $aaf9 : $0a
	ora $0203                                                  ; $aafa : $0d, $03, $02
	pla                                                  ; $aafd : $68
	.db $00                                                  ; $aafe : $00
	.db $14                                                  ; $aaff : $14
	ora $0203                                                  ; $ab00 : $0d, $03, $02
	asl $00                                                  ; $ab03 : $06, $00
	.db $14                                                  ; $ab05 : $14
	ora $0203                                                  ; $ab06 : $0d, $03, $02
	pla                                                  ; $ab09 : $68
	.db $00                                                  ; $ab0a : $00
	.db $14                                                  ; $ab0b : $14
	ora $0103                                                  ; $ab0c : $0d, $03, $01
	cmp $1400                                                  ; $ab0f : $cd, $00, $14
	ora $0203                                                  ; $ab12 : $0d, $03, $02
	pla                                                  ; $ab15 : $68
	.db $ff                                                  ; $ab16 : $ff
	.db $14                                                  ; $ab17 : $14
	ora $0203                                                  ; $ab18 : $0d, $03, $02
	asl $00                                                  ; $ab1b : $06, $00
	.db $14                                                  ; $ab1d : $14
	ora $0203                                                  ; $ab1e : $0d, $03, $02
	pla                                                  ; $ab21 : $68
	.db $ff                                                  ; $ab22 : $ff
	.db $14                                                  ; $ab23 : $14
	ora $0203                                                  ; $ab24 : $0d, $03, $02
	asl $00                                                  ; $ab27 : $06, $00
	.db $14                                                  ; $ab29 : $14
	ora $0203                                                  ; $ab2a : $0d, $03, $02
	.db $b3                                                  ; $ab2d : $b3
	.db $ff                                                  ; $ab2e : $ff
	.db $14                                                  ; $ab2f : $14
	ora $0203                                                  ; $ab30 : $0d, $03, $02
	pla                                                  ; $ab33 : $68
	.db $00                                                  ; $ab34 : $00
	.db $14                                                  ; $ab35 : $14
	ora $0203                                                  ; $ab36 : $0d, $03, $02
	.db $b3                                                  ; $ab39 : $b3
	.db $ff                                                  ; $ab3a : $ff
	.db $14                                                  ; $ab3b : $14
	ora $0203                                                  ; $ab3c : $0d, $03, $02
	asl $00                                                  ; $ab3f : $06, $00
	.db $14                                                  ; $ab41 : $14
	ora $0203                                                  ; $ab42 : $0d, $03, $02
	.db $b3                                                  ; $ab45 : $b3
	.db $ff                                                  ; $ab46 : $ff
	.db $14                                                  ; $ab47 : $14
	ora $0203                                                  ; $ab48 : $0d, $03, $02
	pla                                                  ; $ab4b : $68
	.db $00                                                  ; $ab4c : $00
	.db $14                                                  ; $ab4d : $14
	ora $0203                                                  ; $ab4e : $0d, $03, $02
	.db $b3                                                  ; $ab51 : $b3
	.db $ff                                                  ; $ab52 : $ff
	.db $14                                                  ; $ab53 : $14
	ora $0203                                                  ; $ab54 : $0d, $03, $02
	asl $00                                                  ; $ab57 : $06, $00
	asl a                                                  ; $ab59 : $0a
	ora $0203                                                  ; $ab5a : $0d, $03, $02
	.db $b3                                                  ; $ab5d : $b3
	.db $00                                                  ; $ab5e : $00
	asl a                                                  ; $ab5f : $0a
	ora $0203                                                  ; $ab60 : $0d, $03, $02
	.db $b3                                                  ; $ab63 : $b3
	.db $00                                                  ; $ab64 : $00
	.db $14                                                  ; $ab65 : $14
	ora $0203                                                  ; $ab66 : $0d, $03, $02
	pla                                                  ; $ab69 : $68
	.db $00                                                  ; $ab6a : $00
	.db $14                                                  ; $ab6b : $14
	ora $0203                                                  ; $ab6c : $0d, $03, $02
	.db $b3                                                  ; $ab6f : $b3
	.db $00                                                  ; $ab70 : $00
	.db $14                                                  ; $ab71 : $14
	ora $0203                                                  ; $ab72 : $0d, $03, $02
	asl $00                                                  ; $ab75 : $06, $00
	.db $14                                                  ; $ab77 : $14
	ora $0203                                                  ; $ab78 : $0d, $03, $02
	.db $b3                                                  ; $ab7b : $b3
	.db $ff                                                  ; $ab7c : $ff
	.db $14                                                  ; $ab7d : $14
	ora $0203                                                  ; $ab7e : $0d, $03, $02
	pla                                                  ; $ab81 : $68
	.db $00                                                  ; $ab82 : $00
	.db $14                                                  ; $ab83 : $14
	ora $0203                                                  ; $ab84 : $0d, $03, $02
	asl $ff                                                  ; $ab87 : $06, $ff
	.db $14                                                  ; $ab89 : $14
	ora $0203                                                  ; $ab8a : $0d, $03, $02
	asl $00                                                  ; $ab8d : $06, $00
	asl a                                                  ; $ab8f : $0a
	ora $0203                                                  ; $ab90 : $0d, $03, $02
	.db $b3                                                  ; $ab93 : $b3
	.db $00                                                  ; $ab94 : $00
	asl a                                                  ; $ab95 : $0a
	ora $0203                                                  ; $ab96 : $0d, $03, $02
	.db $b3                                                  ; $ab99 : $b3
	.db $00                                                  ; $ab9a : $00
	.db $14                                                  ; $ab9b : $14
	ora $0203                                                  ; $ab9c : $0d, $03, $02
	pla                                                  ; $ab9f : $68
	.db $00                                                  ; $aba0 : $00
	.db $14                                                  ; $aba1 : $14
	ora $0203                                                  ; $aba2 : $0d, $03, $02
	asl $00                                                  ; $aba5 : $06, $00
	.db $14                                                  ; $aba7 : $14
	ora $0203                                                  ; $aba8 : $0d, $03, $02
	asl $00                                                  ; $abab : $06, $00
	.db $14                                                  ; $abad : $14
	ora $0203                                                  ; $abae : $0d, $03, $02
	.db $b3                                                  ; $abb1 : $b3
	.db $ff                                                  ; $abb2 : $ff
	.db $14                                                  ; $abb3 : $14
	ora $0103                                                  ; $abb4 : $0d, $03, $01
	txs                                                  ; $abb7 : $9a
	.db $00                                                  ; $abb8 : $00
	.db $14                                                  ; $abb9 : $14
	ora $0203                                                  ; $abba : $0d, $03, $02
	.db $b3                                                  ; $abbd : $b3
	.db $ff                                                  ; $abbe : $ff
	.db $14                                                  ; $abbf : $14
	ora $0203                                                  ; $abc0 : $0d, $03, $02
	asl $00                                                  ; $abc3 : $06, $00
	.db $14                                                  ; $abc5 : $14
	ora $0203                                                  ; $abc6 : $0d, $03, $02
	.db $b3                                                  ; $abc9 : $b3
	.db $ff                                                  ; $abca : $ff
	.db $14                                                  ; $abcb : $14
	ora $0203                                                  ; $abcc : $0d, $03, $02
	pla                                                  ; $abcf : $68
	.db $00                                                  ; $abd0 : $00
	.db $14                                                  ; $abd1 : $14
	ora $0203                                                  ; $abd2 : $0d, $03, $02
	.db $b3                                                  ; $abd5 : $b3
	.db $ff                                                  ; $abd6 : $ff
	.db $14                                                  ; $abd7 : $14
	ora $0203                                                  ; $abd8 : $0d, $03, $02
	.db $b3                                                  ; $abdb : $b3
	.db $00                                                  ; $abdc : $00
	asl a                                                  ; $abdd : $0a
	ora $0103                                                  ; $abde : $0d, $03, $01
	cmp $0a00                                                  ; $abe1 : $cd, $00, $0a
	ora $0103                                                  ; $abe4 : $0d, $03, $01
	cmp $1400                                                  ; $abe7 : $cd, $00, $14
	ora $0103                                                  ; $abea : $0d, $03, $01
	txs                                                  ; $abed : $9a
	.db $00                                                  ; $abee : $00
	.db $14                                                  ; $abef : $14
	ora $0103                                                  ; $abf0 : $0d, $03, $01
	cmp $1400                                                  ; $abf3 : $cd, $00, $14
	ora $0203                                                  ; $abf6 : $0d, $03, $02
	asl $00                                                  ; $abf9 : $06, $00
	asl a                                                  ; $abfb : $0a
	ora $0203                                                  ; $abfc : $0d, $03, $02
	pla                                                  ; $abff : $68
	.db $00                                                  ; $ac00 : $00
	asl a                                                  ; $ac01 : $0a
	ora $0203                                                  ; $ac02 : $0d, $03, $02
	pla                                                  ; $ac05 : $68
	.db $00                                                  ; $ac06 : $00
	.db $14                                                  ; $ac07 : $14
	ora $0203                                                  ; $ac08 : $0d, $03, $02
	.db $b3                                                  ; $ac0b : $b3
	.db $00                                                  ; $ac0c : $00
	.db $14                                                  ; $ac0d : $14
	ora $0203                                                  ; $ac0e : $0d, $03, $02
	asl $00                                                  ; $ac11 : $06, $00
	.db $14                                                  ; $ac13 : $14
	ora $0103                                                  ; $ac14 : $0d, $03, $01
	txs                                                  ; $ac17 : $9a
	.db $00                                                  ; $ac18 : $00
	.db $14                                                  ; $ac19 : $14
	ora $0203                                                  ; $ac1a : $0d, $03, $02
	.db $b3                                                  ; $ac1d : $b3
	.db $ff                                                  ; $ac1e : $ff
	.db $14                                                  ; $ac1f : $14
	ora $0103                                                  ; $ac20 : $0d, $03, $01
	cmp $1400                                                  ; $ac23 : $cd, $00, $14
	ora $0203                                                  ; $ac26 : $0d, $03, $02
	.db $b3                                                  ; $ac29 : $b3
	.db $ff                                                  ; $ac2a : $ff
	.db $14                                                  ; $ac2b : $14
	ora $0203                                                  ; $ac2c : $0d, $03, $02
	asl $00                                                  ; $ac2f : $06, $00
	asl a                                                  ; $ac31 : $0a
	ora $0203                                                  ; $ac32 : $0d, $03, $02
	.db $b3                                                  ; $ac35 : $b3
	.db $00                                                  ; $ac36 : $00
	asl a                                                  ; $ac37 : $0a
	ora $0203                                                  ; $ac38 : $0d, $03, $02
	.db $b3                                                  ; $ac3b : $b3
	.db $00                                                  ; $ac3c : $00
	.db $14                                                  ; $ac3d : $14
	ora $0203                                                  ; $ac3e : $0d, $03, $02
	pla                                                  ; $ac41 : $68
	.db $00                                                  ; $ac42 : $00
	.db $14                                                  ; $ac43 : $14
	ora $0203                                                  ; $ac44 : $0d, $03, $02
	.db $b3                                                  ; $ac47 : $b3
	.db $00                                                  ; $ac48 : $00
	.db $14                                                  ; $ac49 : $14
	ora $0203                                                  ; $ac4a : $0d, $03, $02
	.db $b3                                                  ; $ac4d : $b3
	.db $00                                                  ; $ac4e : $00
	.db $14                                                  ; $ac4f : $14
	ora $0103                                                  ; $ac50 : $0d, $03, $01
	cmp $14ff                                                  ; $ac53 : $cd, $ff, $14
	ora $0103                                                  ; $ac56 : $0d, $03, $01
	txs                                                  ; $ac59 : $9a
	.db $00                                                  ; $ac5a : $00
	.db $14                                                  ; $ac5b : $14
	ora $0103                                                  ; $ac5c : $0d, $03, $01
	cmp $14ff                                                  ; $ac5f : $cd, $ff, $14
	ora $0103                                                  ; $ac62 : $0d, $03, $01
	txs                                                  ; $ac65 : $9a
	.db $00                                                  ; $ac66 : $00
	.db $14                                                  ; $ac67 : $14
	ora $0203                                                  ; $ac68 : $0d, $03, $02
	pla                                                  ; $ac6b : $68
	.db $ff                                                  ; $ac6c : $ff
	.db $14                                                  ; $ac6d : $14
	ora $0203                                                  ; $ac6e : $0d, $03, $02
	asl $00                                                  ; $ac71 : $06, $00
	.db $14                                                  ; $ac73 : $14
	ora $0203                                                  ; $ac74 : $0d, $03, $02
	pla                                                  ; $ac77 : $68
	.db $ff                                                  ; $ac78 : $ff
	.db $14                                                  ; $ac79 : $14
	ora $0103                                                  ; $ac7a : $0d, $03, $01
	cmp $0a00                                                  ; $ac7d : $cd, $00, $0a
	ora $0203                                                  ; $ac80 : $0d, $03, $02
	pla                                                  ; $ac83 : $68
	.db $00                                                  ; $ac84 : $00
	asl a                                                  ; $ac85 : $0a
	ora $0203                                                  ; $ac86 : $0d, $03, $02
	pla                                                  ; $ac89 : $68
	.db $00                                                  ; $ac8a : $00
	.db $14                                                  ; $ac8b : $14
	ora $0203                                                  ; $ac8c : $0d, $03, $02
	asl $00                                                  ; $ac8f : $06, $00
	.db $14                                                  ; $ac91 : $14
	ora $0203                                                  ; $ac92 : $0d, $03, $02
	pla                                                  ; $ac95 : $68
	.db $00                                                  ; $ac96 : $00
	.db $14                                                  ; $ac97 : $14
	ora $0203                                                  ; $ac98 : $0d, $03, $02
	asl $00                                                  ; $ac9b : $06, $00
	.db $14                                                  ; $ac9d : $14
	ora $0203                                                  ; $ac9e : $0d, $03, $02
	.db $b3                                                  ; $aca1 : $b3
	.db $ff                                                  ; $aca2 : $ff
	.db $14                                                  ; $aca3 : $14
	ora $0203                                                  ; $aca4 : $0d, $03, $02
	pla                                                  ; $aca7 : $68
	.db $00                                                  ; $aca8 : $00
	.db $14                                                  ; $aca9 : $14
	ora $0203                                                  ; $acaa : $0d, $03, $02
	.db $b3                                                  ; $acad : $b3
	.db $ff                                                  ; $acae : $ff
	asl a                                                  ; $acaf : $0a
	.db $a7                                                  ; $acb0 : $a7
	.db $03                                                  ; $acb1 : $03
	.db $03                                                  ; $acb2 : $03
	rol $00, x                                                  ; $acb3 : $36, $00
	asl a                                                  ; $acb5 : $0a
	.db $a7                                                  ; $acb6 : $a7
	.db $03                                                  ; $acb7 : $03
	.db $02                                                  ; $acb8 : $02
	pla                                                  ; $acb9 : $68
	.db $ff                                                  ; $acba : $ff
	asl a                                                  ; $acbb : $0a
	.db $a7                                                  ; $acbc : $a7
	.db $03                                                  ; $acbd : $03
	.db $02                                                  ; $acbe : $02
	asl $00                                                  ; $acbf : $06, $00
	asl a                                                  ; $acc1 : $0a
	.db $a7                                                  ; $acc2 : $a7
	.db $03                                                  ; $acc3 : $03
	ora ($cd, x)                                                  ; $acc4 : $01, $cd
	.db $ff                                                  ; $acc6 : $ff
	asl a                                                  ; $acc7 : $0a
	.db $a7                                                  ; $acc8 : $a7
	.db $03                                                  ; $acc9 : $03
	ora ($9a, x)                                                  ; $acca : $01, $9a
	.db $00                                                  ; $accc : $00
	asl a                                                  ; $accd : $0a
	.db $a7                                                  ; $acce : $a7
	.db $03                                                  ; $accf : $03
	ora ($cd, x)                                                  ; $acd0 : $01, $cd
	.db $ff                                                  ; $acd2 : $ff
	asl a                                                  ; $acd3 : $0a
	.db $a7                                                  ; $acd4 : $a7
	.db $03                                                  ; $acd5 : $03
	.db $02                                                  ; $acd6 : $02
	asl $00                                                  ; $acd7 : $06, $00
	asl a                                                  ; $acd9 : $0a
	.db $a7                                                  ; $acda : $a7
	.db $03                                                  ; $acdb : $03
	ora ($9a, x)                                                  ; $acdc : $01, $9a
	.db $ff                                                  ; $acde : $ff
	asl a                                                  ; $acdf : $0a
	.db $a7                                                  ; $ace0 : $a7
	.db $03                                                  ; $ace1 : $03
	ora ($59, x)                                                  ; $ace2 : $01, $59
	.db $00                                                  ; $ace4 : $00
	asl a                                                  ; $ace5 : $0a
	.db $a7                                                  ; $ace6 : $a7
	.db $03                                                  ; $ace7 : $03
	.db $02                                                  ; $ace8 : $02
	.db $b3                                                  ; $ace9 : $b3
	.db $ff                                                  ; $acea : $ff
	asl a                                                  ; $aceb : $0a
	.db $a7                                                  ; $acec : $a7
	.db $03                                                  ; $aced : $03
	.db $02                                                  ; $acee : $02
	pla                                                  ; $acef : $68
	.db $00                                                  ; $acf0 : $00
	asl a                                                  ; $acf1 : $0a
	.db $a7                                                  ; $acf2 : $a7
	.db $03                                                  ; $acf3 : $03
	.db $02                                                  ; $acf4 : $02
	asl $ff                                                  ; $acf5 : $06, $ff
	asl a                                                  ; $acf7 : $0a
	.db $a7                                                  ; $acf8 : $a7
	.db $03                                                  ; $acf9 : $03
	ora ($59, x)                                                  ; $acfa : $01, $59
	.db $00                                                  ; $acfc : $00
	asl a                                                  ; $acfd : $0a
	.db $a7                                                  ; $acfe : $a7
	.db $03                                                  ; $acff : $03
	ora ($9a, x)                                                  ; $ad00 : $01, $9a
	.db $ff                                                  ; $ad02 : $ff
	asl a                                                  ; $ad03 : $0a
	.db $a7                                                  ; $ad04 : $a7
	.db $03                                                  ; $ad05 : $03
	ora ($59, x)                                                  ; $ad06 : $01, $59
	.db $00                                                  ; $ad08 : $00
	asl a                                                  ; $ad09 : $0a
	.db $a7                                                  ; $ad0a : $a7
	.db $03                                                  ; $ad0b : $03
	ora ($34, x)                                                  ; $ad0c : $01, $34
	.db $ff                                                  ; $ad0e : $ff
	asl a                                                  ; $ad0f : $0a
	.db $a7                                                  ; $ad10 : $a7
	.db $03                                                  ; $ad11 : $03
	ora ($59, x)                                                  ; $ad12 : $01, $59
	.db $00                                                  ; $ad14 : $00
	asl a                                                  ; $ad15 : $0a
	.db $a7                                                  ; $ad16 : $a7
	.db $03                                                  ; $ad17 : $03
	ora ($cd, x)                                                  ; $ad18 : $01, $cd
	.db $ff                                                  ; $ad1a : $ff
	asl a                                                  ; $ad1b : $0a
	.db $a7                                                  ; $ad1c : $a7
	.db $03                                                  ; $ad1d : $03
	ora ($9a, x)                                                  ; $ad1e : $01, $9a
	.db $00                                                  ; $ad20 : $00
	asl a                                                  ; $ad21 : $0a
	.db $a7                                                  ; $ad22 : $a7
	.db $03                                                  ; $ad23 : $03
	ora ($cd, x)                                                  ; $ad24 : $01, $cd
	.db $ff                                                  ; $ad26 : $ff
	asl a                                                  ; $ad27 : $0a
	.db $a7                                                  ; $ad28 : $a7
	.db $03                                                  ; $ad29 : $03
	ora ($9a, x)                                                  ; $ad2a : $01, $9a
	.db $00                                                  ; $ad2c : $00
	asl a                                                  ; $ad2d : $0a
	.db $a7                                                  ; $ad2e : $a7
	.db $03                                                  ; $ad2f : $03
	.db $02                                                  ; $ad30 : $02
	.db $b3                                                  ; $ad31 : $b3
	.db $ff                                                  ; $ad32 : $ff
	asl a                                                  ; $ad33 : $0a
	.db $a7                                                  ; $ad34 : $a7
	.db $03                                                  ; $ad35 : $03
	.db $02                                                  ; $ad36 : $02
	pla                                                  ; $ad37 : $68
	.db $00                                                  ; $ad38 : $00
	asl a                                                  ; $ad39 : $0a
	.db $a7                                                  ; $ad3a : $a7
	.db $03                                                  ; $ad3b : $03
	ora ($cd, x)                                                  ; $ad3c : $01, $cd
	.db $ff                                                  ; $ad3e : $ff
	asl a                                                  ; $ad3f : $0a
	.db $a7                                                  ; $ad40 : $a7
	.db $03                                                  ; $ad41 : $03
	.db $02                                                  ; $ad42 : $02
	asl $00                                                  ; $ad43 : $06, $00
	asl a                                                  ; $ad45 : $0a
	.db $a7                                                  ; $ad46 : $a7
	.db $03                                                  ; $ad47 : $03
	ora ($cd, x)                                                  ; $ad48 : $01, $cd
	.db $ff                                                  ; $ad4a : $ff
	asl a                                                  ; $ad4b : $0a
	.db $a7                                                  ; $ad4c : $a7
	.db $03                                                  ; $ad4d : $03
	.db $02                                                  ; $ad4e : $02
	pla                                                  ; $ad4f : $68
	.db $00                                                  ; $ad50 : $00
	asl a                                                  ; $ad51 : $0a
	.db $a7                                                  ; $ad52 : $a7
	.db $03                                                  ; $ad53 : $03
	.db $02                                                  ; $ad54 : $02
	.db $b3                                                  ; $ad55 : $b3
	.db $ff                                                  ; $ad56 : $ff
	asl a                                                  ; $ad57 : $0a
	.db $a7                                                  ; $ad58 : $a7
	.db $03                                                  ; $ad59 : $03
	.db $03                                                  ; $ad5a : $03
	.db $9b                                                  ; $ad5b : $9b
	.db $00                                                  ; $ad5c : $00
	asl a                                                  ; $ad5d : $0a
	.db $a7                                                  ; $ad5e : $a7
	.db $03                                                  ; $ad5f : $03
	.db $02                                                  ; $ad60 : $02
	.db $b3                                                  ; $ad61 : $b3
	.db $ff                                                  ; $ad62 : $ff
	asl a                                                  ; $ad63 : $0a
	.db $a7                                                  ; $ad64 : $a7
	.db $03                                                  ; $ad65 : $03
	.db $02                                                  ; $ad66 : $02
	pla                                                  ; $ad67 : $68
	.db $00                                                  ; $ad68 : $00
	asl a                                                  ; $ad69 : $0a
	.db $a7                                                  ; $ad6a : $a7
	.db $03                                                  ; $ad6b : $03
	.db $02                                                  ; $ad6c : $02
	asl $ff                                                  ; $ad6d : $06, $ff
	asl a                                                  ; $ad6f : $0a
	.db $a7                                                  ; $ad70 : $a7
	.db $03                                                  ; $ad71 : $03
	ora ($cd, x)                                                  ; $ad72 : $01, $cd
	.db $00                                                  ; $ad74 : $00
	asl a                                                  ; $ad75 : $0a
	.db $a7                                                  ; $ad76 : $a7
	.db $03                                                  ; $ad77 : $03
	.db $02                                                  ; $ad78 : $02
	asl $ff                                                  ; $ad79 : $06, $ff
	asl a                                                  ; $ad7b : $0a
	.db $a7                                                  ; $ad7c : $a7
	.db $03                                                  ; $ad7d : $03
	ora ($cd, x)                                                  ; $ad7e : $01, $cd
	.db $00                                                  ; $ad80 : $00
	asl a                                                  ; $ad81 : $0a
	.db $a7                                                  ; $ad82 : $a7
	.db $03                                                  ; $ad83 : $03
	ora ($9a, x)                                                  ; $ad84 : $01, $9a
	.db $ff                                                  ; $ad86 : $ff
	.db $14                                                  ; $ad87 : $14
	.db $a7                                                  ; $ad88 : $a7
	.db $03                                                  ; $ad89 : $03
	.db $02                                                  ; $ad8a : $02
	asl $00                                                  ; $ad8b : $06, $00
	.db $14                                                  ; $ad8d : $14
	.db $a7                                                  ; $ad8e : $a7
	.db $03                                                  ; $ad8f : $03
	.db $02                                                  ; $ad90 : $02
	pla                                                  ; $ad91 : $68
	.db $00                                                  ; $ad92 : $00
	asl a                                                  ; $ad93 : $0a
	.db $a7                                                  ; $ad94 : $a7
	.db $03                                                  ; $ad95 : $03
	.db $03                                                  ; $ad96 : $03
	.db $9b                                                  ; $ad97 : $9b
	.db $00                                                  ; $ad98 : $00
	asl a                                                  ; $ad99 : $0a
	.db $a7                                                  ; $ad9a : $a7
	.db $03                                                  ; $ad9b : $03
	.db $02                                                  ; $ad9c : $02
	.db $b3                                                  ; $ad9d : $b3
	.db $ff                                                  ; $ad9e : $ff
	asl a                                                  ; $ad9f : $0a
	.db $a7                                                  ; $ada0 : $a7
	.db $03                                                  ; $ada1 : $03
	.db $02                                                  ; $ada2 : $02
	pla                                                  ; $ada3 : $68
	.db $00                                                  ; $ada4 : $00
	asl a                                                  ; $ada5 : $0a
	.db $a7                                                  ; $ada6 : $a7
	.db $03                                                  ; $ada7 : $03
	.db $02                                                  ; $ada8 : $02
	asl $ff                                                  ; $ada9 : $06, $ff
	.db $14                                                  ; $adab : $14
	.db $a7                                                  ; $adac : $a7
	.db $03                                                  ; $adad : $03
	.db $02                                                  ; $adae : $02
	.db $b3                                                  ; $adaf : $b3
	.db $00                                                  ; $adb0 : $00
	.db $14                                                  ; $adb1 : $14
	.db $a7                                                  ; $adb2 : $a7
	.db $03                                                  ; $adb3 : $03
	.db $02                                                  ; $adb4 : $02
	pla                                                  ; $adb5 : $68
	.db $00                                                  ; $adb6 : $00
	.db $14                                                  ; $adb7 : $14
	.db $a7                                                  ; $adb8 : $a7
	.db $03                                                  ; $adb9 : $03
	.db $02                                                  ; $adba : $02
	.db $b3                                                  ; $adbb : $b3
	.db $00                                                  ; $adbc : $00
	.db $3c                                                  ; $adbd : $3c
	.db $a7                                                  ; $adbe : $a7
	.db $03                                                  ; $adbf : $03
	.db $00                                                  ; $adc0 : $00
	ora ($ff, x)                                                  ; $adc1 : $01, $ff
	.db $ff                                                  ; $adc3 : $ff
	plp                                                  ; $adc4 : $28
	.db $bb                                                  ; $adc5 : $bb
	.db $43                                                  ; $adc6 : $43
	ora ($59, x)                                                  ; $adc7 : $01, $59
	.db $ff                                                  ; $adc9 : $ff
	.db $3c                                                  ; $adca : $3c
	.db $bb                                                  ; $adcb : $bb
	.db $43                                                  ; $adcc : $43
	ora ($03, x)                                                  ; $adcd : $01, $03
	.db $ff                                                  ; $adcf : $ff
	.db $14                                                  ; $add0 : $14
	.db $bb                                                  ; $add1 : $bb
	.db $43                                                  ; $add2 : $43
	ora ($03, x)                                                  ; $add3 : $01, $03
	.db $ff                                                  ; $add5 : $ff
	plp                                                  ; $add6 : $28
	.db $bb                                                  ; $add7 : $bb
	.db $43                                                  ; $add8 : $43
	ora ($03, x)                                                  ; $add9 : $01, $03
	.db $ff                                                  ; $addb : $ff
	plp                                                  ; $addc : $28
	.db $bb                                                  ; $addd : $bb
	.db $43                                                  ; $adde : $43
	.db $00                                                  ; $addf : $00
	cmp $3cff                                                  ; $ade0 : $cd, $ff, $3c
	.db $bb                                                  ; $ade3 : $bb
	.db $43                                                  ; $ade4 : $43
	.db $00                                                  ; $ade5 : $00
	inc $ff                                                  ; $ade6 : $e6, $ff
	.db $14                                                  ; $ade8 : $14
	.db $bb                                                  ; $ade9 : $bb
	.db $43                                                  ; $adea : $43
	ora ($03, x)                                                  ; $adeb : $01, $03
	.db $ff                                                  ; $aded : $ff
	plp                                                  ; $adee : $28
	.db $bb                                                  ; $adef : $bb
	.db $43                                                  ; $adf0 : $43
	.db $00                                                  ; $adf1 : $00
	inc $ff                                                  ; $adf2 : $e6, $ff
	plp                                                  ; $adf4 : $28
	.db $bb                                                  ; $adf5 : $bb
	.db $43                                                  ; $adf6 : $43
	.db $00                                                  ; $adf7 : $00
	cmp $3cff                                                  ; $adf8 : $cd, $ff, $3c
	.db $bb                                                  ; $adfb : $bb
	.db $43                                                  ; $adfc : $43
	ora ($03, x)                                                  ; $adfd : $01, $03
	.db $ff                                                  ; $adff : $ff
	.db $14                                                  ; $ae00 : $14
	.db $bb                                                  ; $ae01 : $bb
	.db $43                                                  ; $ae02 : $43
	ora ($03, x)                                                  ; $ae03 : $01, $03
	.db $ff                                                  ; $ae05 : $ff
	plp                                                  ; $ae06 : $28
	.db $bb                                                  ; $ae07 : $bb
	.db $43                                                  ; $ae08 : $43
	.db $00                                                  ; $ae09 : $00
	cmp $28ff                                                  ; $ae0a : $cd, $ff, $28
	.db $bb                                                  ; $ae0d : $bb
	.db $43                                                  ; $ae0e : $43
	.db $00                                                  ; $ae0f : $00
	ldy $78ff                                                  ; $ae10 : $ac, $ff, $78
	.db $bb                                                  ; $ae13 : $bb
	.db $43                                                  ; $ae14 : $43
	.db $00                                                  ; $ae15 : $00
	sta $28ff, y                                                  ; $ae16 : $99, $ff, $28
	.db $bb                                                  ; $ae19 : $bb
	.db $43                                                  ; $ae1a : $43
	.db $00                                                  ; $ae1b : $00
	sta $3cff, y                                                  ; $ae1c : $99, $ff, $3c
	.db $bb                                                  ; $ae1f : $bb
	.db $43                                                  ; $ae20 : $43
	.db $00                                                  ; $ae21 : $00
	ldy $14ff                                                  ; $ae22 : $ac, $ff, $14
	.db $bb                                                  ; $ae25 : $bb
	.db $43                                                  ; $ae26 : $43
	.db $00                                                  ; $ae27 : $00
	cmp $28ff                                                  ; $ae28 : $cd, $ff, $28
	.db $bb                                                  ; $ae2b : $bb
	.db $43                                                  ; $ae2c : $43
	.db $00                                                  ; $ae2d : $00
	cmp $28ff                                                  ; $ae2e : $cd, $ff, $28
	.db $bb                                                  ; $ae31 : $bb
	.db $43                                                  ; $ae32 : $43
	ora ($03, x)                                                  ; $ae33 : $01, $03
	.db $ff                                                  ; $ae35 : $ff
	.db $3c                                                  ; $ae36 : $3c
	.db $bb                                                  ; $ae37 : $bb
	.db $43                                                  ; $ae38 : $43
	.db $00                                                  ; $ae39 : $00
	inc $ff                                                  ; $ae3a : $e6, $ff
	.db $14                                                  ; $ae3c : $14
	.db $bb                                                  ; $ae3d : $bb
	.db $43                                                  ; $ae3e : $43
	ora ($03, x)                                                  ; $ae3f : $01, $03
	.db $ff                                                  ; $ae41 : $ff
	plp                                                  ; $ae42 : $28
	.db $bb                                                  ; $ae43 : $bb
	.db $43                                                  ; $ae44 : $43
	.db $00                                                  ; $ae45 : $00
	inc $ff                                                  ; $ae46 : $e6, $ff
	.db $14                                                  ; $ae48 : $14
	.db $bb                                                  ; $ae49 : $bb
	.db $43                                                  ; $ae4a : $43
	.db $00                                                  ; $ae4b : $00
	cmp $14ff                                                  ; $ae4c : $cd, $ff, $14
	.db $bb                                                  ; $ae4f : $bb
	.db $43                                                  ; $ae50 : $43
	.db $00                                                  ; $ae51 : $00
	inc $ff                                                  ; $ae52 : $e6, $ff
	.db $3c                                                  ; $ae54 : $3c
	.db $bb                                                  ; $ae55 : $bb
	.db $43                                                  ; $ae56 : $43
	ora ($03, x)                                                  ; $ae57 : $01, $03
	.db $ff                                                  ; $ae59 : $ff
	.db $14                                                  ; $ae5a : $14
	.db $bb                                                  ; $ae5b : $bb
	.db $43                                                  ; $ae5c : $43
	ora ($34, x)                                                  ; $ae5d : $01, $34
	.db $ff                                                  ; $ae5f : $ff
	plp                                                  ; $ae60 : $28
	.db $bb                                                  ; $ae61 : $bb
	.db $43                                                  ; $ae62 : $43
	ora ($34, x)                                                  ; $ae63 : $01, $34
	.db $ff                                                  ; $ae65 : $ff
	plp                                                  ; $ae66 : $28
	.db $bb                                                  ; $ae67 : $bb
	.db $43                                                  ; $ae68 : $43
	ora ($59, x)                                                  ; $ae69 : $01, $59
	.db $ff                                                  ; $ae6b : $ff
	sei                                                  ; $ae6c : $78
	.db $bb                                                  ; $ae6d : $bb
	.db $43                                                  ; $ae6e : $43
	ora ($03, x)                                                  ; $ae6f : $01, $03
	.db $ff                                                  ; $ae71 : $ff
	plp                                                  ; $ae72 : $28
	.db $bb                                                  ; $ae73 : $bb
	.db $43                                                  ; $ae74 : $43
	.db $00                                                  ; $ae75 : $00
	sta $3cff, y                                                  ; $ae76 : $99, $ff, $3c
	.db $bb                                                  ; $ae79 : $bb
	.db $43                                                  ; $ae7a : $43
	.db $00                                                  ; $ae7b : $00
	ldy $14ff                                                  ; $ae7c : $ac, $ff, $14
	.db $bb                                                  ; $ae7f : $bb
	.db $43                                                  ; $ae80 : $43
	.db $00                                                  ; $ae81 : $00
	cmp $28ff                                                  ; $ae82 : $cd, $ff, $28
	.db $bb                                                  ; $ae85 : $bb
	.db $43                                                  ; $ae86 : $43
	.db $00                                                  ; $ae87 : $00
	cmp $28ff                                                  ; $ae88 : $cd, $ff, $28
	.db $bb                                                  ; $ae8b : $bb
	.db $43                                                  ; $ae8c : $43
	ora ($03, x)                                                  ; $ae8d : $01, $03
	.db $ff                                                  ; $ae8f : $ff
	.db $3c                                                  ; $ae90 : $3c
	.db $bb                                                  ; $ae91 : $bb
	.db $43                                                  ; $ae92 : $43
	.db $00                                                  ; $ae93 : $00
	inc $ff                                                  ; $ae94 : $e6, $ff
	.db $14                                                  ; $ae96 : $14
	.db $bb                                                  ; $ae97 : $bb
	.db $43                                                  ; $ae98 : $43
	ora ($03, x)                                                  ; $ae99 : $01, $03
	.db $ff                                                  ; $ae9b : $ff
	plp                                                  ; $ae9c : $28
	.db $bb                                                  ; $ae9d : $bb
	.db $43                                                  ; $ae9e : $43
	.db $00                                                  ; $ae9f : $00
	inc $ff                                                  ; $aea0 : $e6, $ff
	plp                                                  ; $aea2 : $28
	.db $bb                                                  ; $aea3 : $bb
	.db $43                                                  ; $aea4 : $43
	.db $00                                                  ; $aea5 : $00
	sta $3cff, y                                                  ; $aea6 : $99, $ff, $3c
	.db $bb                                                  ; $aea9 : $bb
	.db $43                                                  ; $aeaa : $43
	.db $00                                                  ; $aeab : $00
	ldy $14ff                                                  ; $aeac : $ac, $ff, $14
	.db $bb                                                  ; $aeaf : $bb
	.db $43                                                  ; $aeb0 : $43
	.db $00                                                  ; $aeb1 : $00
	cmp $28ff                                                  ; $aeb2 : $cd, $ff, $28
	.db $bb                                                  ; $aeb5 : $bb
	.db $43                                                  ; $aeb6 : $43
	.db $00                                                  ; $aeb7 : $00
	cmp $28ff                                                  ; $aeb8 : $cd, $ff, $28
	.db $bb                                                  ; $aebb : $bb
	.db $43                                                  ; $aebc : $43
	.db $00                                                  ; $aebd : $00
	ldy $78ff                                                  ; $aebe : $ac, $ff, $78
	tsx                                                  ; $aec1 : $ba
	.db $43                                                  ; $aec2 : $43
	.db $00                                                  ; $aec3 : $00
	sta $28ff, y                                                  ; $aec4 : $99, $ff, $28
	tsx                                                  ; $aec7 : $ba
	.db $43                                                  ; $aec8 : $43
	.db $00                                                  ; $aec9 : $00
	sta ($ff, x)                                                  ; $aeca : $81, $ff
	.db $3c                                                  ; $aecc : $3c
	tsx                                                  ; $aecd : $ba
	.db $43                                                  ; $aece : $43
	.db $00                                                  ; $aecf : $00
	ldy $14ff                                                  ; $aed0 : $ac, $ff, $14
	tsx                                                  ; $aed3 : $ba
	.db $43                                                  ; $aed4 : $43
	.db $00                                                  ; $aed5 : $00
	cmp $28ff                                                  ; $aed6 : $cd, $ff, $28
	tsx                                                  ; $aed9 : $ba
	.db $43                                                  ; $aeda : $43
	.db $00                                                  ; $aedb : $00
	cmp $28ff                                                  ; $aedc : $cd, $ff, $28
	tsx                                                  ; $aedf : $ba
	.db $43                                                  ; $aee0 : $43
	ora ($03, x)                                                  ; $aee1 : $01, $03
	.db $ff                                                  ; $aee3 : $ff
	.db $3c                                                  ; $aee4 : $3c
	tsx                                                  ; $aee5 : $ba
	.db $43                                                  ; $aee6 : $43
	.db $00                                                  ; $aee7 : $00
	inc $ff                                                  ; $aee8 : $e6, $ff
	.db $14                                                  ; $aeea : $14
	tsx                                                  ; $aeeb : $ba
	.db $43                                                  ; $aeec : $43
	ora ($03, x)                                                  ; $aeed : $01, $03
	.db $ff                                                  ; $aeef : $ff
	plp                                                  ; $aef0 : $28
	tsx                                                  ; $aef1 : $ba
	.db $43                                                  ; $aef2 : $43
	.db $00                                                  ; $aef3 : $00
	inc $ff                                                  ; $aef4 : $e6, $ff
	plp                                                  ; $aef6 : $28
	tsx                                                  ; $aef7 : $ba
	.db $43                                                  ; $aef8 : $43
	.db $00                                                  ; $aef9 : $00
	cmp $3cff                                                  ; $aefa : $cd, $ff, $3c
	tsx                                                  ; $aefd : $ba
	.db $43                                                  ; $aefe : $43
	ora ($03, x)                                                  ; $aeff : $01, $03
	.db $ff                                                  ; $af01 : $ff
	.db $14                                                  ; $af02 : $14
	tsx                                                  ; $af03 : $ba
	.db $43                                                  ; $af04 : $43
	ora ($34, x)                                                  ; $af05 : $01, $34
	.db $ff                                                  ; $af07 : $ff
	plp                                                  ; $af08 : $28
	tsx                                                  ; $af09 : $ba
	.db $43                                                  ; $af0a : $43
	ora ($34, x)                                                  ; $af0b : $01, $34
	.db $ff                                                  ; $af0d : $ff
	plp                                                  ; $af0e : $28
	tsx                                                  ; $af0f : $ba
	.db $43                                                  ; $af10 : $43
	ora ($59, x)                                                  ; $af11 : $01, $59
	.db $ff                                                  ; $af13 : $ff
	sei                                                  ; $af14 : $78
	tsx                                                  ; $af15 : $ba
	.db $43                                                  ; $af16 : $43
	ora ($03, x)                                                  ; $af17 : $01, $03
	.db $ff                                                  ; $af19 : $ff
	plp                                                  ; $af1a : $28
	.db $bb                                                  ; $af1b : $bb
	.db $43                                                  ; $af1c : $43
	.db $00                                                  ; $af1d : $00
	sta $3cff, y                                                  ; $af1e : $99, $ff, $3c
	.db $bb                                                  ; $af21 : $bb
	.db $43                                                  ; $af22 : $43
	.db $00                                                  ; $af23 : $00
	ldy $14ff                                                  ; $af24 : $ac, $ff, $14
	.db $bb                                                  ; $af27 : $bb
	.db $43                                                  ; $af28 : $43
	.db $00                                                  ; $af29 : $00
	cmp $28ff                                                  ; $af2a : $cd, $ff, $28
	.db $bb                                                  ; $af2d : $bb
	.db $43                                                  ; $af2e : $43
	.db $00                                                  ; $af2f : $00
	cmp $28ff                                                  ; $af30 : $cd, $ff, $28
	.db $bb                                                  ; $af33 : $bb
	.db $43                                                  ; $af34 : $43
	ora ($03, x)                                                  ; $af35 : $01, $03
	.db $ff                                                  ; $af37 : $ff
	.db $3c                                                  ; $af38 : $3c
	.db $bb                                                  ; $af39 : $bb
	.db $43                                                  ; $af3a : $43
	.db $00                                                  ; $af3b : $00
	inc $ff                                                  ; $af3c : $e6, $ff
	.db $14                                                  ; $af3e : $14
	.db $bb                                                  ; $af3f : $bb
	.db $43                                                  ; $af40 : $43
	ora ($03, x)                                                  ; $af41 : $01, $03
	.db $ff                                                  ; $af43 : $ff
	plp                                                  ; $af44 : $28
	.db $bb                                                  ; $af45 : $bb
	.db $43                                                  ; $af46 : $43
	.db $00                                                  ; $af47 : $00
	inc $ff                                                  ; $af48 : $e6, $ff
	plp                                                  ; $af4a : $28
	.db $bb                                                  ; $af4b : $bb
	.db $43                                                  ; $af4c : $43
	.db $00                                                  ; $af4d : $00
	sta $3cff, y                                                  ; $af4e : $99, $ff, $3c
	.db $bb                                                  ; $af51 : $bb
	.db $43                                                  ; $af52 : $43
	.db $00                                                  ; $af53 : $00
	ldy $14ff                                                  ; $af54 : $ac, $ff, $14
	.db $bb                                                  ; $af57 : $bb
	.db $43                                                  ; $af58 : $43
	.db $00                                                  ; $af59 : $00
	cmp $28ff                                                  ; $af5a : $cd, $ff, $28
	.db $bb                                                  ; $af5d : $bb
	.db $43                                                  ; $af5e : $43
	.db $00                                                  ; $af5f : $00
	cmp $28ff                                                  ; $af60 : $cd, $ff, $28
	.db $bb                                                  ; $af63 : $bb
	.db $43                                                  ; $af64 : $43
	.db $00                                                  ; $af65 : $00
	ldy $78ff                                                  ; $af66 : $ac, $ff, $78
	tsx                                                  ; $af69 : $ba
	.db $43                                                  ; $af6a : $43
	.db $00                                                  ; $af6b : $00
	sta $28ff, y                                                  ; $af6c : $99, $ff, $28
	tsx                                                  ; $af6f : $ba
	.db $43                                                  ; $af70 : $43
	.db $00                                                  ; $af71 : $00
	sta ($ff, x)                                                  ; $af72 : $81, $ff
	.db $3c                                                  ; $af74 : $3c
	tsx                                                  ; $af75 : $ba
	.db $43                                                  ; $af76 : $43
	.db $00                                                  ; $af77 : $00
	ldy $14ff                                                  ; $af78 : $ac, $ff, $14
	tsx                                                  ; $af7b : $ba
	.db $43                                                  ; $af7c : $43
	.db $00                                                  ; $af7d : $00
	cmp $28ff                                                  ; $af7e : $cd, $ff, $28
	tsx                                                  ; $af81 : $ba
	.db $43                                                  ; $af82 : $43
	.db $00                                                  ; $af83 : $00
	cmp $28ff                                                  ; $af84 : $cd, $ff, $28
	tsx                                                  ; $af87 : $ba
	.db $43                                                  ; $af88 : $43
	ora ($03, x)                                                  ; $af89 : $01, $03
	.db $ff                                                  ; $af8b : $ff
	.db $3c                                                  ; $af8c : $3c
	tsx                                                  ; $af8d : $ba
	.db $43                                                  ; $af8e : $43
	.db $00                                                  ; $af8f : $00
	inc $ff                                                  ; $af90 : $e6, $ff
	.db $14                                                  ; $af92 : $14
	tsx                                                  ; $af93 : $ba
	.db $43                                                  ; $af94 : $43
	ora ($03, x)                                                  ; $af95 : $01, $03
	.db $ff                                                  ; $af97 : $ff
	plp                                                  ; $af98 : $28
	tsx                                                  ; $af99 : $ba
	.db $43                                                  ; $af9a : $43
	.db $00                                                  ; $af9b : $00
	inc $ff                                                  ; $af9c : $e6, $ff
	plp                                                  ; $af9e : $28
	tsx                                                  ; $af9f : $ba
	.db $43                                                  ; $afa0 : $43
	.db $00                                                  ; $afa1 : $00
	cmp $3cff                                                  ; $afa2 : $cd, $ff, $3c
	tsx                                                  ; $afa5 : $ba
	.db $43                                                  ; $afa6 : $43
	ora ($03, x)                                                  ; $afa7 : $01, $03
	.db $ff                                                  ; $afa9 : $ff
	.db $14                                                  ; $afaa : $14
	tsx                                                  ; $afab : $ba
	.db $43                                                  ; $afac : $43
	ora ($34, x)                                                  ; $afad : $01, $34
	.db $ff                                                  ; $afaf : $ff
	plp                                                  ; $afb0 : $28
	tsx                                                  ; $afb1 : $ba
	.db $43                                                  ; $afb2 : $43
	ora ($34, x)                                                  ; $afb3 : $01, $34
	.db $ff                                                  ; $afb5 : $ff
	plp                                                  ; $afb6 : $28
	tsx                                                  ; $afb7 : $ba
	.db $43                                                  ; $afb8 : $43
	ora ($59, x)                                                  ; $afb9 : $01, $59
	.db $ff                                                  ; $afbb : $ff
	sei                                                  ; $afbc : $78
	tsx                                                  ; $afbd : $ba
	.db $43                                                  ; $afbe : $43
	ora ($03, x)                                                  ; $afbf : $01, $03
	.db $ff                                                  ; $afc1 : $ff
	.db $ff                                                  ; $afc2 : $ff
	plp                                                  ; $afc3 : $28
	.db $67                                                  ; $afc4 : $67
	.db $13                                                  ; $afc5 : $13
	.db $00                                                  ; $afc6 : $00
	ora ($00, x)                                                  ; $afc7 : $01, $00
	.db $14                                                  ; $afc9 : $14
	.db $67                                                  ; $afca : $67
	.db $13                                                  ; $afcb : $13
	.db $04                                                  ; $afcc : $04
	.db $0c                                                  ; $afcd : $0c
	.db $00                                                  ; $afce : $00
	.db $14                                                  ; $afcf : $14
	lda $0113, y                                                  ; $afd0 : $b9, $13, $01
	eor $1402, y                                                  ; $afd3 : $59, $02, $14
	.db $67                                                  ; $afd6 : $67
	.db $13                                                  ; $afd7 : $13
	ora ($03, x)                                                  ; $afd8 : $01, $03
	.db $00                                                  ; $afda : $00
	.db $14                                                  ; $afdb : $14
	lda $13.w, y                                                  ; $afdc : $b9, $13, $00
	cmp $1402                                                  ; $afdf : $cd, $02, $14
	.db $67                                                  ; $afe2 : $67
	.db $13                                                  ; $afe3 : $13
	.db $02                                                  ; $afe4 : $02
	.db $b3                                                  ; $afe5 : $b3
	.db $00                                                  ; $afe6 : $00
	.db $14                                                  ; $afe7 : $14
	lda $0113, y                                                  ; $afe8 : $b9, $13, $01
	eor $1402, y                                                  ; $afeb : $59, $02, $14
	.db $67                                                  ; $afee : $67
	.db $13                                                  ; $afef : $13
	ora ($03, x)                                                  ; $aff0 : $01, $03
	.db $00                                                  ; $aff2 : $00
	.db $14                                                  ; $aff3 : $14
	lda $13.w, y                                                  ; $aff4 : $b9, $13, $00
	cmp $1402                                                  ; $aff7 : $cd, $02, $14
	.db $67                                                  ; $affa : $67
	.db $13                                                  ; $affb : $13
	.db $03                                                  ; $affc : $03
	.db $9b                                                  ; $affd : $9b
	.db $00                                                  ; $affe : $00
	.db $14                                                  ; $afff : $14
	lda $0113, y                                                  ; $b000 : $b9, $13, $01
	eor $1402, y                                                  ; $b003 : $59, $02, $14
	lda $0113, y                                                  ; $b006 : $b9, $13, $01
	.db $12                                                  ; $b009 : $12
	.db $00                                                  ; $b00a : $00
	.db $14                                                  ; $b00b : $14
	lda $13.w, y                                                  ; $b00c : $b9, $13, $00
	inc $02                                                  ; $b00f : $e6, $02
	.db $14                                                  ; $b011 : $14
	.db $67                                                  ; $b012 : $67
	.db $13                                                  ; $b013 : $13
	ora ($12, x)                                                  ; $b014 : $01, $12
	.db $00                                                  ; $b016 : $00
	.db $14                                                  ; $b017 : $14
	lda $0113, y                                                  ; $b018 : $b9, $13, $01
	eor $1402, y                                                  ; $b01b : $59, $02, $14
	lda $13.w, y                                                  ; $b01e : $b9, $13, $00
	inc $00                                                  ; $b021 : $e6, $00
	.db $14                                                  ; $b023 : $14
	lda $0113, y                                                  ; $b024 : $b9, $13, $01
	.db $12                                                  ; $b027 : $12
	.db $02                                                  ; $b028 : $02
	.db $14                                                  ; $b029 : $14
	.db $67                                                  ; $b02a : $67
	.db $13                                                  ; $b02b : $13
	.db $04                                                  ; $b02c : $04
	.db $0c                                                  ; $b02d : $0c
	.db $00                                                  ; $b02e : $00
	.db $14                                                  ; $b02f : $14
	lda $0113, y                                                  ; $b030 : $b9, $13, $01
	eor $1402, y                                                  ; $b033 : $59, $02, $14
	lda $0113, y                                                  ; $b036 : $b9, $13, $01
	.db $03                                                  ; $b039 : $03
	.db $00                                                  ; $b03a : $00
	.db $14                                                  ; $b03b : $14
	lda $13.w, y                                                  ; $b03c : $b9, $13, $00
	cmp $1402                                                  ; $b03f : $cd, $02, $14
	.db $67                                                  ; $b042 : $67
	.db $13                                                  ; $b043 : $13
	.db $03                                                  ; $b044 : $03
	rol $00, x                                                  ; $b045 : $36, $00
	.db $14                                                  ; $b047 : $14
	lda $0113, y                                                  ; $b048 : $b9, $13, $01
	eor $1402, y                                                  ; $b04b : $59, $02, $14
	lda $0113, y                                                  ; $b04e : $b9, $13, $01
	.db $03                                                  ; $b051 : $03
	.db $00                                                  ; $b052 : $00
	.db $14                                                  ; $b053 : $14
	lda $13.w, y                                                  ; $b054 : $b9, $13, $00
	cmp $1402                                                  ; $b057 : $cd, $02, $14
	.db $67                                                  ; $b05a : $67
	.db $13                                                  ; $b05b : $13
	.db $04                                                  ; $b05c : $04
	bne br_00_b05f                                                  ; $b05d : $d0, $00

br_00_b05f:
	.db $14                                                  ; $b05f : $14
	lda $0113, y                                                  ; $b060 : $b9, $13, $01
	.db $03                                                  ; $b063 : $03
	.db $02                                                  ; $b064 : $02
	.db $14                                                  ; $b065 : $14
	.db $67                                                  ; $b066 : $67
	.db $13                                                  ; $b067 : $13
	.db $00                                                  ; $b068 : $00
	.db $c2                                                  ; $b069 : $c2
	.db $00                                                  ; $b06a : $00
	.db $14                                                  ; $b06b : $14
	lda $0113, y                                                  ; $b06c : $b9, $13, $01
	.db $03                                                  ; $b06f : $03
	.db $02                                                  ; $b070 : $02
	.db $14                                                  ; $b071 : $14
	.db $67                                                  ; $b072 : $67
	.db $13                                                  ; $b073 : $13
	.db $02                                                  ; $b074 : $02
	pla                                                  ; $b075 : $68
	.db $00                                                  ; $b076 : $00
	.db $14                                                  ; $b077 : $14
	lda $0113, y                                                  ; $b078 : $b9, $13, $01
	.db $03                                                  ; $b07b : $03
	.db $02                                                  ; $b07c : $02
	.db $14                                                  ; $b07d : $14
	.db $67                                                  ; $b07e : $67
	.db $13                                                  ; $b07f : $13
	.db $00                                                  ; $b080 : $00
	.db $c2                                                  ; $b081 : $c2
	.db $00                                                  ; $b082 : $00
	.db $14                                                  ; $b083 : $14
	lda $0113, y                                                  ; $b084 : $b9, $13, $01
	.db $34                                                  ; $b087 : $34
	.db $02                                                  ; $b088 : $02
	.db $14                                                  ; $b089 : $14
	.db $67                                                  ; $b08a : $67
	.db $13                                                  ; $b08b : $13
	.db $04                                                  ; $b08c : $04
	.db $0c                                                  ; $b08d : $0c
	.db $00                                                  ; $b08e : $00
	.db $14                                                  ; $b08f : $14
	lda $0113, y                                                  ; $b090 : $b9, $13, $01
	eor $1402, y                                                  ; $b093 : $59, $02, $14
	lda $0113, y                                                  ; $b096 : $b9, $13, $01
	.db $03                                                  ; $b099 : $03
	.db $00                                                  ; $b09a : $00
	.db $14                                                  ; $b09b : $14
	lda $13.w, y                                                  ; $b09c : $b9, $13, $00
	cmp $1402                                                  ; $b09f : $cd, $02, $14
	.db $67                                                  ; $b0a2 : $67
	.db $13                                                  ; $b0a3 : $13
	.db $02                                                  ; $b0a4 : $02
	.db $b3                                                  ; $b0a5 : $b3
	.db $00                                                  ; $b0a6 : $00
	.db $14                                                  ; $b0a7 : $14
	lda $0113, y                                                  ; $b0a8 : $b9, $13, $01
	eor $1402, y                                                  ; $b0ab : $59, $02, $14
	.db $67                                                  ; $b0ae : $67
	.db $13                                                  ; $b0af : $13
	ora ($03, x)                                                  ; $b0b0 : $01, $03
	.db $00                                                  ; $b0b2 : $00
	.db $14                                                  ; $b0b3 : $14
	lda $13.w, y                                                  ; $b0b4 : $b9, $13, $00
	cmp $1402                                                  ; $b0b7 : $cd, $02, $14
	lda $0313, y                                                  ; $b0ba : $b9, $13, $03
	.db $9b                                                  ; $b0bd : $9b
	.db $00                                                  ; $b0be : $00
	.db $14                                                  ; $b0bf : $14
	.db $b7                                                  ; $b0c0 : $b7
	.db $13                                                  ; $b0c1 : $13
	ora ($59, x)                                                  ; $b0c2 : $01, $59
	.db $02                                                  ; $b0c4 : $02
	.db $14                                                  ; $b0c5 : $14
	.db $b7                                                  ; $b0c6 : $b7
	.db $13                                                  ; $b0c7 : $13
	ora ($12, x)                                                  ; $b0c8 : $01, $12
	.db $00                                                  ; $b0ca : $00
	.db $14                                                  ; $b0cb : $14
	.db $b7                                                  ; $b0cc : $b7
	.db $13                                                  ; $b0cd : $13
	.db $00                                                  ; $b0ce : $00
	inc $02                                                  ; $b0cf : $e6, $02
	.db $14                                                  ; $b0d1 : $14
	.db $67                                                  ; $b0d2 : $67
	.db $13                                                  ; $b0d3 : $13
	ora ($12, x)                                                  ; $b0d4 : $01, $12
	.db $00                                                  ; $b0d6 : $00
	.db $14                                                  ; $b0d7 : $14
	.db $67                                                  ; $b0d8 : $67
	.db $13                                                  ; $b0d9 : $13
	ora ($59, x)                                                  ; $b0da : $01, $59
	.db $02                                                  ; $b0dc : $02
	.db $14                                                  ; $b0dd : $14
	.db $67                                                  ; $b0de : $67
	.db $13                                                  ; $b0df : $13
	ora ($9a, x)                                                  ; $b0e0 : $01, $9a
	.db $00                                                  ; $b0e2 : $00
	.db $14                                                  ; $b0e3 : $14
	.db $67                                                  ; $b0e4 : $67
	.db $13                                                  ; $b0e5 : $13
	ora ($cd, x)                                                  ; $b0e6 : $01, $cd
	.db $02                                                  ; $b0e8 : $02
	.db $14                                                  ; $b0e9 : $14
	.db $b7                                                  ; $b0ea : $b7
	.db $13                                                  ; $b0eb : $13
	.db $04                                                  ; $b0ec : $04
	bne br_00_b0ef                                                  ; $b0ed : $d0, $00

br_00_b0ef:
	.db $14                                                  ; $b0ef : $14
	.db $b7                                                  ; $b0f0 : $b7
	.db $13                                                  ; $b0f1 : $13
	ora ($34, x)                                                  ; $b0f2 : $01, $34
	.db $02                                                  ; $b0f4 : $02
	.db $14                                                  ; $b0f5 : $14
	.db $b7                                                  ; $b0f6 : $b7
	.db $13                                                  ; $b0f7 : $13
	ora ($03, x)                                                  ; $b0f8 : $01, $03
	.db $00                                                  ; $b0fa : $00
	.db $14                                                  ; $b0fb : $14
	.db $b7                                                  ; $b0fc : $b7
	.db $13                                                  ; $b0fd : $13
	ora ($34, x)                                                  ; $b0fe : $01, $34
	.db $02                                                  ; $b100 : $02
	.db $14                                                  ; $b101 : $14
	.db $67                                                  ; $b102 : $67
	.db $13                                                  ; $b103 : $13
	.db $02                                                  ; $b104 : $02
	pla                                                  ; $b105 : $68
	.db $00                                                  ; $b106 : $00
	.db $14                                                  ; $b107 : $14
	.db $b7                                                  ; $b108 : $b7
	.db $13                                                  ; $b109 : $13
	ora ($03, x)                                                  ; $b10a : $01, $03
	.db $02                                                  ; $b10c : $02
	.db $14                                                  ; $b10d : $14
	.db $b7                                                  ; $b10e : $b7
	.db $13                                                  ; $b10f : $13
	.db $00                                                  ; $b110 : $00
	cmp $1400                                                  ; $b111 : $cd, $00, $14
	.db $b7                                                  ; $b114 : $b7
	.db $13                                                  ; $b115 : $13
	ora ($03, x)                                                  ; $b116 : $01, $03
	.db $02                                                  ; $b118 : $02
	.db $14                                                  ; $b119 : $14
	.db $67                                                  ; $b11a : $67
	.db $13                                                  ; $b11b : $13
	.db $04                                                  ; $b11c : $04
	.db $0c                                                  ; $b11d : $0c
	.db $00                                                  ; $b11e : $00
	.db $14                                                  ; $b11f : $14
	.db $b7                                                  ; $b120 : $b7
	.db $13                                                  ; $b121 : $13
	ora ($59, x)                                                  ; $b122 : $01, $59
	.db $02                                                  ; $b124 : $02
	.db $14                                                  ; $b125 : $14
	.db $67                                                  ; $b126 : $67
	.db $13                                                  ; $b127 : $13
	ora ($03, x)                                                  ; $b128 : $01, $03
	.db $00                                                  ; $b12a : $00
	.db $14                                                  ; $b12b : $14
	.db $b7                                                  ; $b12c : $b7
	.db $13                                                  ; $b12d : $13
	.db $00                                                  ; $b12e : $00
	cmp $1402                                                  ; $b12f : $cd, $02, $14
	.db $67                                                  ; $b132 : $67
	.db $13                                                  ; $b133 : $13
	ora ($03, x)                                                  ; $b134 : $01, $03
	.db $00                                                  ; $b136 : $00
	.db $14                                                  ; $b137 : $14
	.db $b7                                                  ; $b138 : $b7
	.db $13                                                  ; $b139 : $13
	.db $00                                                  ; $b13a : $00
	ora ($02, x)                                                  ; $b13b : $01, $02
	.db $14                                                  ; $b13d : $14
	.db $b7                                                  ; $b13e : $b7
	.db $13                                                  ; $b13f : $13
	.db $00                                                  ; $b140 : $00
	ora ($ff, x)                                                  ; $b141 : $01, $ff
	.db $14                                                  ; $b143 : $14
	.db $b7                                                  ; $b144 : $b7
	.db $13                                                  ; $b145 : $13
	.db $00                                                  ; $b146 : $00
	ora ($ff, x)                                                  ; $b147 : $01, $ff
	.db $14                                                  ; $b149 : $14
	.db $67                                                  ; $b14a : $67
	.db $13                                                  ; $b14b : $13
	ora $67                                                  ; $b14c : $05, $67
	.db $00                                                  ; $b14e : $00
	.db $14                                                  ; $b14f : $14
	.db $67                                                  ; $b150 : $67
	.db $13                                                  ; $b151 : $13
	ora ($59, x)                                                  ; $b152 : $01, $59
	.db $02                                                  ; $b154 : $02
	.db $14                                                  ; $b155 : $14
	.db $67                                                  ; $b156 : $67
	.db $13                                                  ; $b157 : $13
	ora ($03, x)                                                  ; $b158 : $01, $03
	.db $00                                                  ; $b15a : $00
	.db $14                                                  ; $b15b : $14
	.db $67                                                  ; $b15c : $67
	.db $13                                                  ; $b15d : $13
	.db $00                                                  ; $b15e : $00
	cmp $1402                                                  ; $b15f : $cd, $02, $14
	.db $67                                                  ; $b162 : $67
	.db $13                                                  ; $b163 : $13
	ora ($03, x)                                                  ; $b164 : $01, $03
	.db $00                                                  ; $b166 : $00
	.db $14                                                  ; $b167 : $14
	.db $67                                                  ; $b168 : $67
	.db $13                                                  ; $b169 : $13
	ora ($59, x)                                                  ; $b16a : $01, $59
	.db $02                                                  ; $b16c : $02
	.db $14                                                  ; $b16d : $14
	.db $67                                                  ; $b16e : $67
	.db $13                                                  ; $b16f : $13
	ora ($03, x)                                                  ; $b170 : $01, $03
	.db $00                                                  ; $b172 : $00
	.db $14                                                  ; $b173 : $14
	.db $67                                                  ; $b174 : $67
	.db $13                                                  ; $b175 : $13
	.db $00                                                  ; $b176 : $00
	cmp $1402                                                  ; $b177 : $cd, $02, $14
	.db $67                                                  ; $b17a : $67
	.db $13                                                  ; $b17b : $13
	.db $03                                                  ; $b17c : $03
	.db $9b                                                  ; $b17d : $9b
	.db $00                                                  ; $b17e : $00
	.db $14                                                  ; $b17f : $14
	.db $67                                                  ; $b180 : $67
	.db $13                                                  ; $b181 : $13
	ora ($59, x)                                                  ; $b182 : $01, $59
	.db $02                                                  ; $b184 : $02
	.db $14                                                  ; $b185 : $14
	.db $67                                                  ; $b186 : $67
	.db $13                                                  ; $b187 : $13
	ora ($12, x)                                                  ; $b188 : $01, $12
	.db $00                                                  ; $b18a : $00
	.db $14                                                  ; $b18b : $14
	.db $67                                                  ; $b18c : $67
	.db $13                                                  ; $b18d : $13
	.db $00                                                  ; $b18e : $00
	inc $02                                                  ; $b18f : $e6, $02
	.db $14                                                  ; $b191 : $14
	.db $67                                                  ; $b192 : $67
	.db $13                                                  ; $b193 : $13
	ora ($cd, x)                                                  ; $b194 : $01, $cd
	.db $00                                                  ; $b196 : $00
	.db $14                                                  ; $b197 : $14
	.db $67                                                  ; $b198 : $67
	.db $13                                                  ; $b199 : $13
	ora ($84, x)                                                  ; $b19a : $01, $84
	.db $02                                                  ; $b19c : $02
	.db $14                                                  ; $b19d : $14
	.db $67                                                  ; $b19e : $67
	.db $13                                                  ; $b19f : $13
	ora ($03, x)                                                  ; $b1a0 : $01, $03
	.db $00                                                  ; $b1a2 : $00
	.db $14                                                  ; $b1a3 : $14
	.db $67                                                  ; $b1a4 : $67
	.db $13                                                  ; $b1a5 : $13
	ora ($34, x)                                                  ; $b1a6 : $01, $34
	.db $02                                                  ; $b1a8 : $02
	.db $14                                                  ; $b1a9 : $14
	.db $67                                                  ; $b1aa : $67
	.db $13                                                  ; $b1ab : $13
	ora $67                                                  ; $b1ac : $05, $67
	.db $00                                                  ; $b1ae : $00
	.db $14                                                  ; $b1af : $14
	.db $67                                                  ; $b1b0 : $67
	.db $13                                                  ; $b1b1 : $13
	ora ($59, x)                                                  ; $b1b2 : $01, $59
	.db $02                                                  ; $b1b4 : $02
	.db $14                                                  ; $b1b5 : $14
	.db $67                                                  ; $b1b6 : $67
	.db $13                                                  ; $b1b7 : $13
	ora ($03, x)                                                  ; $b1b8 : $01, $03
	.db $00                                                  ; $b1ba : $00
	.db $14                                                  ; $b1bb : $14
	.db $67                                                  ; $b1bc : $67
	.db $13                                                  ; $b1bd : $13
	.db $00                                                  ; $b1be : $00
	cmp $1402                                                  ; $b1bf : $cd, $02, $14
	.db $67                                                  ; $b1c2 : $67
	.db $13                                                  ; $b1c3 : $13
	ora ($03, x)                                                  ; $b1c4 : $01, $03
	.db $00                                                  ; $b1c6 : $00
	.db $14                                                  ; $b1c7 : $14
	.db $67                                                  ; $b1c8 : $67
	.db $13                                                  ; $b1c9 : $13
	ora ($59, x)                                                  ; $b1ca : $01, $59
	.db $02                                                  ; $b1cc : $02
	.db $14                                                  ; $b1cd : $14
	.db $67                                                  ; $b1ce : $67
	.db $13                                                  ; $b1cf : $13
	ora ($03, x)                                                  ; $b1d0 : $01, $03
	.db $00                                                  ; $b1d2 : $00
	.db $14                                                  ; $b1d3 : $14
	.db $67                                                  ; $b1d4 : $67
	.db $13                                                  ; $b1d5 : $13
	.db $00                                                  ; $b1d6 : $00
	cmp $1402                                                  ; $b1d7 : $cd, $02, $14
	.db $67                                                  ; $b1da : $67
	.db $13                                                  ; $b1db : $13
	.db $04                                                  ; $b1dc : $04
	bne br_00_b1df                                                  ; $b1dd : $d0, $00

br_00_b1df:
	.db $14                                                  ; $b1df : $14
	.db $67                                                  ; $b1e0 : $67
	.db $13                                                  ; $b1e1 : $13
	ora ($03, x)                                                  ; $b1e2 : $01, $03
	.db $02                                                  ; $b1e4 : $02
	.db $14                                                  ; $b1e5 : $14
	.db $67                                                  ; $b1e6 : $67
	.db $13                                                  ; $b1e7 : $13
	.db $00                                                  ; $b1e8 : $00
	.db $c2                                                  ; $b1e9 : $c2
	.db $00                                                  ; $b1ea : $00
	.db $14                                                  ; $b1eb : $14
	.db $67                                                  ; $b1ec : $67
	.db $13                                                  ; $b1ed : $13
	ora ($03, x)                                                  ; $b1ee : $01, $03
	.db $02                                                  ; $b1f0 : $02
	.db $14                                                  ; $b1f1 : $14
	.db $67                                                  ; $b1f2 : $67
	.db $13                                                  ; $b1f3 : $13
	ora ($34, x)                                                  ; $b1f4 : $01, $34
	.db $00                                                  ; $b1f6 : $00
	.db $14                                                  ; $b1f7 : $14
	.db $67                                                  ; $b1f8 : $67
	.db $13                                                  ; $b1f9 : $13
	ora ($03, x)                                                  ; $b1fa : $01, $03
	.db $02                                                  ; $b1fc : $02
	.db $14                                                  ; $b1fd : $14
	.db $67                                                  ; $b1fe : $67
	.db $13                                                  ; $b1ff : $13
	.db $00                                                  ; $b200 : $00
	.db $c2                                                  ; $b201 : $c2
	.db $00                                                  ; $b202 : $00
	.db $14                                                  ; $b203 : $14
	.db $67                                                  ; $b204 : $67
	.db $13                                                  ; $b205 : $13
	ora ($03, x)                                                  ; $b206 : $01, $03
	.db $02                                                  ; $b208 : $02
	.db $14                                                  ; $b209 : $14
	.db $67                                                  ; $b20a : $67
	.db $13                                                  ; $b20b : $13
	ora $67                                                  ; $b20c : $05, $67
	.db $00                                                  ; $b20e : $00
	.db $14                                                  ; $b20f : $14
	.db $67                                                  ; $b210 : $67
	.db $13                                                  ; $b211 : $13
	ora ($59, x)                                                  ; $b212 : $01, $59
	.db $02                                                  ; $b214 : $02
	.db $14                                                  ; $b215 : $14
	.db $67                                                  ; $b216 : $67
	.db $13                                                  ; $b217 : $13
	ora ($03, x)                                                  ; $b218 : $01, $03
	.db $00                                                  ; $b21a : $00
	.db $14                                                  ; $b21b : $14
	.db $67                                                  ; $b21c : $67
	.db $13                                                  ; $b21d : $13
	.db $00                                                  ; $b21e : $00
	cmp $1402                                                  ; $b21f : $cd, $02, $14
	.db $67                                                  ; $b222 : $67
	.db $13                                                  ; $b223 : $13
	ora ($03, x)                                                  ; $b224 : $01, $03
	.db $00                                                  ; $b226 : $00
	.db $14                                                  ; $b227 : $14
	.db $67                                                  ; $b228 : $67
	.db $13                                                  ; $b229 : $13
	ora ($59, x)                                                  ; $b22a : $01, $59
	.db $02                                                  ; $b22c : $02
	.db $14                                                  ; $b22d : $14
	.db $67                                                  ; $b22e : $67
	.db $13                                                  ; $b22f : $13
	ora ($03, x)                                                  ; $b230 : $01, $03
	.db $00                                                  ; $b232 : $00
	.db $14                                                  ; $b233 : $14
	.db $67                                                  ; $b234 : $67
	.db $13                                                  ; $b235 : $13
	.db $00                                                  ; $b236 : $00
	cmp $1402                                                  ; $b237 : $cd, $02, $14
	.db $67                                                  ; $b23a : $67
	.db $13                                                  ; $b23b : $13
	.db $03                                                  ; $b23c : $03
	.db $9b                                                  ; $b23d : $9b
	.db $00                                                  ; $b23e : $00
	.db $14                                                  ; $b23f : $14
	.db $67                                                  ; $b240 : $67
	.db $13                                                  ; $b241 : $13
	ora ($59, x)                                                  ; $b242 : $01, $59
	.db $02                                                  ; $b244 : $02
	.db $14                                                  ; $b245 : $14
	.db $67                                                  ; $b246 : $67
	.db $13                                                  ; $b247 : $13
	ora ($12, x)                                                  ; $b248 : $01, $12
	.db $00                                                  ; $b24a : $00
	.db $14                                                  ; $b24b : $14
	.db $67                                                  ; $b24c : $67
	.db $13                                                  ; $b24d : $13
	.db $00                                                  ; $b24e : $00
	inc $02                                                  ; $b24f : $e6, $02
	.db $14                                                  ; $b251 : $14
	.db $67                                                  ; $b252 : $67
	.db $13                                                  ; $b253 : $13
	.db $02                                                  ; $b254 : $02
	bit $00                                                  ; $b255 : $24, $00
	.db $14                                                  ; $b257 : $14
	.db $67                                                  ; $b258 : $67
	.db $13                                                  ; $b259 : $13
	.db $02                                                  ; $b25a : $02
	.db $b3                                                  ; $b25b : $b3
	.db $02                                                  ; $b25c : $02
	.db $14                                                  ; $b25d : $14
	.db $67                                                  ; $b25e : $67
	.db $13                                                  ; $b25f : $13
	.db $02                                                  ; $b260 : $02
	bit $00                                                  ; $b261 : $24, $00
	.db $14                                                  ; $b263 : $14
	.db $67                                                  ; $b264 : $67
	.db $13                                                  ; $b265 : $13
	ora ($cd, x)                                                  ; $b266 : $01, $cd
	.db $02                                                  ; $b268 : $02
	.db $14                                                  ; $b269 : $14
	.db $67                                                  ; $b26a : $67
	.db $13                                                  ; $b26b : $13
	.db $04                                                  ; $b26c : $04
	.db $0c                                                  ; $b26d : $0c
	.db $00                                                  ; $b26e : $00
	.db $14                                                  ; $b26f : $14
	.db $67                                                  ; $b270 : $67
	.db $13                                                  ; $b271 : $13
	ora ($34, x)                                                  ; $b272 : $01, $34
	.db $02                                                  ; $b274 : $02
	.db $14                                                  ; $b275 : $14
	.db $67                                                  ; $b276 : $67
	.db $13                                                  ; $b277 : $13
	ora ($03, x)                                                  ; $b278 : $01, $03
	.db $00                                                  ; $b27a : $00
	.db $14                                                  ; $b27b : $14
	.db $67                                                  ; $b27c : $67
	.db $13                                                  ; $b27d : $13
	.db $00                                                  ; $b27e : $00
	.db $c2                                                  ; $b27f : $c2
	.db $02                                                  ; $b280 : $02
	.db $14                                                  ; $b281 : $14
	.db $67                                                  ; $b282 : $67
	.db $13                                                  ; $b283 : $13
	.db $03                                                  ; $b284 : $03
	.db $9b                                                  ; $b285 : $9b
	.db $00                                                  ; $b286 : $00
	.db $14                                                  ; $b287 : $14
	.db $67                                                  ; $b288 : $67
	.db $13                                                  ; $b289 : $13
	ora ($59, x)                                                  ; $b28a : $01, $59
	.db $02                                                  ; $b28c : $02
	.db $14                                                  ; $b28d : $14
	.db $67                                                  ; $b28e : $67
	.db $13                                                  ; $b28f : $13
	ora ($12, x)                                                  ; $b290 : $01, $12
	.db $00                                                  ; $b292 : $00
	.db $14                                                  ; $b293 : $14
	.db $67                                                  ; $b294 : $67
	.db $13                                                  ; $b295 : $13
	.db $00                                                  ; $b296 : $00
	inc $02                                                  ; $b297 : $e6, $02
	.db $14                                                  ; $b299 : $14
	.db $67                                                  ; $b29a : $67
	.db $13                                                  ; $b29b : $13
	.db $04                                                  ; $b29c : $04
	.db $0c                                                  ; $b29d : $0c
	.db $00                                                  ; $b29e : $00
	.db $14                                                  ; $b29f : $14
	.db $67                                                  ; $b2a0 : $67
	.db $13                                                  ; $b2a1 : $13
	ora ($59, x)                                                  ; $b2a2 : $01, $59
	.db $02                                                  ; $b2a4 : $02
	.db $14                                                  ; $b2a5 : $14
	.db $67                                                  ; $b2a6 : $67
	.db $13                                                  ; $b2a7 : $13
	ora ($03, x)                                                  ; $b2a8 : $01, $03
	.db $00                                                  ; $b2aa : $00
	.db $14                                                  ; $b2ab : $14
	.db $67                                                  ; $b2ac : $67
	.db $13                                                  ; $b2ad : $13
	.db $00                                                  ; $b2ae : $00
	cmp $1402                                                  ; $b2af : $cd, $02, $14
	.db $67                                                  ; $b2b2 : $67
	.db $13                                                  ; $b2b3 : $13
	ora ($03, x)                                                  ; $b2b4 : $01, $03
	.db $00                                                  ; $b2b6 : $00
	.db $14                                                  ; $b2b7 : $14
	.db $67                                                  ; $b2b8 : $67
	.db $13                                                  ; $b2b9 : $13
	.db $00                                                  ; $b2ba : $00
	ora ($ff, x)                                                  ; $b2bb : $01, $ff
	plp                                                  ; $b2bd : $28
	.db $67                                                  ; $b2be : $67
	.db $13                                                  ; $b2bf : $13
	.db $00                                                  ; $b2c0 : $00
	ora ($ff, x)                                                  ; $b2c1 : $01, $ff
	asl a                                                  ; $b2c3 : $0a
	.db $67                                                  ; $b2c4 : $67
	.db $13                                                  ; $b2c5 : $13
	ora $67                                                  ; $b2c6 : $05, $67
	.db $00                                                  ; $b2c8 : $00
	asl a                                                  ; $b2c9 : $0a
	.db $67                                                  ; $b2ca : $67
	.db $13                                                  ; $b2cb : $13
	ora ($59, x)                                                  ; $b2cc : $01, $59
	.db $ff                                                  ; $b2ce : $ff
	asl a                                                  ; $b2cf : $0a
	.db $67                                                  ; $b2d0 : $67
	.db $13                                                  ; $b2d1 : $13
	ora ($03, x)                                                  ; $b2d2 : $01, $03
	.db $02                                                  ; $b2d4 : $02
	asl a                                                  ; $b2d5 : $0a
	.db $67                                                  ; $b2d6 : $67
	.db $13                                                  ; $b2d7 : $13
	.db $00                                                  ; $b2d8 : $00
	cmp $0aff                                                  ; $b2d9 : $cd, $ff, $0a
	.db $67                                                  ; $b2dc : $67
	.db $13                                                  ; $b2dd : $13
	.db $00                                                  ; $b2de : $00
	ldy $0a00                                                  ; $b2df : $ac, $00, $0a
	.db $67                                                  ; $b2e2 : $67
	.db $13                                                  ; $b2e3 : $13
	.db $00                                                  ; $b2e4 : $00
	cmp $0aff                                                  ; $b2e5 : $cd, $ff, $0a
	.db $67                                                  ; $b2e8 : $67
	.db $13                                                  ; $b2e9 : $13
	ora ($03, x)                                                  ; $b2ea : $01, $03
	.db $02                                                  ; $b2ec : $02
	asl a                                                  ; $b2ed : $0a
	.db $67                                                  ; $b2ee : $67
	.db $13                                                  ; $b2ef : $13
	ora ($59, x)                                                  ; $b2f0 : $01, $59
	.db $ff                                                  ; $b2f2 : $ff
	asl a                                                  ; $b2f3 : $0a
	.db $67                                                  ; $b2f4 : $67
	.db $13                                                  ; $b2f5 : $13
	ora $67                                                  ; $b2f6 : $05, $67
	.db $00                                                  ; $b2f8 : $00
	asl a                                                  ; $b2f9 : $0a
	.db $67                                                  ; $b2fa : $67
	.db $13                                                  ; $b2fb : $13
	ora ($59, x)                                                  ; $b2fc : $01, $59
	.db $ff                                                  ; $b2fe : $ff
	asl a                                                  ; $b2ff : $0a
	.db $67                                                  ; $b300 : $67
	.db $13                                                  ; $b301 : $13
	ora ($03, x)                                                  ; $b302 : $01, $03
	.db $02                                                  ; $b304 : $02
	asl a                                                  ; $b305 : $0a
	.db $67                                                  ; $b306 : $67
	.db $13                                                  ; $b307 : $13
	.db $00                                                  ; $b308 : $00
	cmp $0aff                                                  ; $b309 : $cd, $ff, $0a
	.db $67                                                  ; $b30c : $67
	.db $13                                                  ; $b30d : $13
	.db $00                                                  ; $b30e : $00
	ldy $0a00                                                  ; $b30f : $ac, $00, $0a
	.db $67                                                  ; $b312 : $67
	.db $13                                                  ; $b313 : $13
	.db $00                                                  ; $b314 : $00
	cmp $0aff                                                  ; $b315 : $cd, $ff, $0a
	.db $67                                                  ; $b318 : $67
	.db $13                                                  ; $b319 : $13
	ora ($03, x)                                                  ; $b31a : $01, $03
	.db $02                                                  ; $b31c : $02
	asl a                                                  ; $b31d : $0a
	.db $67                                                  ; $b31e : $67
	.db $13                                                  ; $b31f : $13
	ora ($59, x)                                                  ; $b320 : $01, $59
	.db $ff                                                  ; $b322 : $ff
	asl a                                                  ; $b323 : $0a
	.db $67                                                  ; $b324 : $67
	.db $13                                                  ; $b325 : $13
	.db $03                                                  ; $b326 : $03
	.db $9b                                                  ; $b327 : $9b
	.db $00                                                  ; $b328 : $00
	asl a                                                  ; $b329 : $0a
	.db $67                                                  ; $b32a : $67
	.db $13                                                  ; $b32b : $13
	ora ($59, x)                                                  ; $b32c : $01, $59
	.db $ff                                                  ; $b32e : $ff
	asl a                                                  ; $b32f : $0a
	.db $67                                                  ; $b330 : $67
	.db $13                                                  ; $b331 : $13
	ora ($12, x)                                                  ; $b332 : $01, $12
	.db $02                                                  ; $b334 : $02
	asl a                                                  ; $b335 : $0a
	.db $67                                                  ; $b336 : $67
	.db $13                                                  ; $b337 : $13
	.db $00                                                  ; $b338 : $00
	inc $ff                                                  ; $b339 : $e6, $ff
	asl a                                                  ; $b33b : $0a
	.db $67                                                  ; $b33c : $67
	.db $13                                                  ; $b33d : $13
	.db $00                                                  ; $b33e : $00
	ldy $0a00                                                  ; $b33f : $ac, $00, $0a
	.db $67                                                  ; $b342 : $67
	.db $13                                                  ; $b343 : $13
	.db $00                                                  ; $b344 : $00
	inc $ff                                                  ; $b345 : $e6, $ff
	asl a                                                  ; $b347 : $0a
	.db $67                                                  ; $b348 : $67
	.db $13                                                  ; $b349 : $13
	ora ($12, x)                                                  ; $b34a : $01, $12
	.db $02                                                  ; $b34c : $02
	asl a                                                  ; $b34d : $0a
	.db $67                                                  ; $b34e : $67
	.db $13                                                  ; $b34f : $13
	ora ($59, x)                                                  ; $b350 : $01, $59
	.db $ff                                                  ; $b352 : $ff
	asl a                                                  ; $b353 : $0a
	.db $67                                                  ; $b354 : $67
	.db $13                                                  ; $b355 : $13
	.db $03                                                  ; $b356 : $03
	.db $9b                                                  ; $b357 : $9b
	.db $00                                                  ; $b358 : $00
	asl a                                                  ; $b359 : $0a
	.db $67                                                  ; $b35a : $67
	.db $13                                                  ; $b35b : $13
	ora ($59, x)                                                  ; $b35c : $01, $59
	.db $ff                                                  ; $b35e : $ff
	asl a                                                  ; $b35f : $0a
	.db $67                                                  ; $b360 : $67
	.db $13                                                  ; $b361 : $13
	ora ($12, x)                                                  ; $b362 : $01, $12
	.db $02                                                  ; $b364 : $02
	asl a                                                  ; $b365 : $0a
	.db $67                                                  ; $b366 : $67
	.db $13                                                  ; $b367 : $13
	.db $00                                                  ; $b368 : $00
	inc $ff                                                  ; $b369 : $e6, $ff
	asl a                                                  ; $b36b : $0a
	.db $67                                                  ; $b36c : $67
	.db $13                                                  ; $b36d : $13
	.db $00                                                  ; $b36e : $00
	ldy $0a00                                                  ; $b36f : $ac, $00, $0a
	.db $67                                                  ; $b372 : $67
	.db $13                                                  ; $b373 : $13
	.db $00                                                  ; $b374 : $00
	inc $ff                                                  ; $b375 : $e6, $ff
	asl a                                                  ; $b377 : $0a
	.db $67                                                  ; $b378 : $67
	.db $13                                                  ; $b379 : $13
	ora ($12, x)                                                  ; $b37a : $01, $12
	.db $02                                                  ; $b37c : $02
	asl a                                                  ; $b37d : $0a
	.db $67                                                  ; $b37e : $67
	.db $13                                                  ; $b37f : $13
	ora ($59, x)                                                  ; $b380 : $01, $59
	.db $ff                                                  ; $b382 : $ff
	asl a                                                  ; $b383 : $0a
	.db $67                                                  ; $b384 : $67
	.db $13                                                  ; $b385 : $13
	ora $67                                                  ; $b386 : $05, $67
	.db $00                                                  ; $b388 : $00
	asl a                                                  ; $b389 : $0a
	.db $67                                                  ; $b38a : $67
	.db $13                                                  ; $b38b : $13
	ora ($59, x)                                                  ; $b38c : $01, $59
	.db $ff                                                  ; $b38e : $ff
	asl a                                                  ; $b38f : $0a
	.db $67                                                  ; $b390 : $67
	.db $13                                                  ; $b391 : $13
	ora ($03, x)                                                  ; $b392 : $01, $03
	.db $02                                                  ; $b394 : $02
	asl a                                                  ; $b395 : $0a
	.db $67                                                  ; $b396 : $67
	.db $13                                                  ; $b397 : $13
	.db $00                                                  ; $b398 : $00
	cmp $0aff                                                  ; $b399 : $cd, $ff, $0a
	.db $67                                                  ; $b39c : $67
	.db $13                                                  ; $b39d : $13
	.db $00                                                  ; $b39e : $00
	ldy $0a00                                                  ; $b39f : $ac, $00, $0a
	.db $67                                                  ; $b3a2 : $67
	.db $13                                                  ; $b3a3 : $13
	.db $00                                                  ; $b3a4 : $00
	cmp $0aff                                                  ; $b3a5 : $cd, $ff, $0a
	.db $67                                                  ; $b3a8 : $67
	.db $13                                                  ; $b3a9 : $13
	ora ($03, x)                                                  ; $b3aa : $01, $03
	.db $02                                                  ; $b3ac : $02
	asl a                                                  ; $b3ad : $0a
	.db $67                                                  ; $b3ae : $67
	.db $13                                                  ; $b3af : $13
	ora ($59, x)                                                  ; $b3b0 : $01, $59
	.db $ff                                                  ; $b3b2 : $ff
	asl a                                                  ; $b3b3 : $0a
	.db $67                                                  ; $b3b4 : $67
	.db $13                                                  ; $b3b5 : $13
	ora $67                                                  ; $b3b6 : $05, $67
	.db $00                                                  ; $b3b8 : $00
	asl a                                                  ; $b3b9 : $0a
	.db $67                                                  ; $b3ba : $67
	.db $13                                                  ; $b3bb : $13
	ora ($59, x)                                                  ; $b3bc : $01, $59
	.db $ff                                                  ; $b3be : $ff
	asl a                                                  ; $b3bf : $0a
	.db $67                                                  ; $b3c0 : $67
	.db $13                                                  ; $b3c1 : $13
	ora ($03, x)                                                  ; $b3c2 : $01, $03
	.db $02                                                  ; $b3c4 : $02
	asl a                                                  ; $b3c5 : $0a
	.db $67                                                  ; $b3c6 : $67
	.db $13                                                  ; $b3c7 : $13
	.db $00                                                  ; $b3c8 : $00
	cmp $0aff                                                  ; $b3c9 : $cd, $ff, $0a
	.db $67                                                  ; $b3cc : $67
	.db $13                                                  ; $b3cd : $13
	.db $00                                                  ; $b3ce : $00
	ldy $0a00                                                  ; $b3cf : $ac, $00, $0a
	.db $67                                                  ; $b3d2 : $67
	.db $13                                                  ; $b3d3 : $13
	.db $00                                                  ; $b3d4 : $00
	cmp $0aff                                                  ; $b3d5 : $cd, $ff, $0a
	.db $67                                                  ; $b3d8 : $67
	.db $13                                                  ; $b3d9 : $13
	ora ($03, x)                                                  ; $b3da : $01, $03
	.db $02                                                  ; $b3dc : $02
	asl a                                                  ; $b3dd : $0a
	.db $67                                                  ; $b3de : $67
	.db $13                                                  ; $b3df : $13
	ora ($59, x)                                                  ; $b3e0 : $01, $59
	.db $ff                                                  ; $b3e2 : $ff
	asl a                                                  ; $b3e3 : $0a
	.db $67                                                  ; $b3e4 : $67
	.db $13                                                  ; $b3e5 : $13
	asl $10                                                  ; $b3e6 : $06, $10
	.db $00                                                  ; $b3e8 : $00
	asl a                                                  ; $b3e9 : $0a
	.db $67                                                  ; $b3ea : $67
	.db $13                                                  ; $b3eb : $13
	ora ($34, x)                                                  ; $b3ec : $01, $34
	.db $ff                                                  ; $b3ee : $ff
	asl a                                                  ; $b3ef : $0a
	.db $67                                                  ; $b3f0 : $67
	.db $13                                                  ; $b3f1 : $13
	ora ($03, x)                                                  ; $b3f2 : $01, $03
	.db $02                                                  ; $b3f4 : $02
	asl a                                                  ; $b3f5 : $0a
	.db $67                                                  ; $b3f6 : $67
	.db $13                                                  ; $b3f7 : $13
	.db $00                                                  ; $b3f8 : $00
	.db $c2                                                  ; $b3f9 : $c2
	.db $ff                                                  ; $b3fa : $ff
	asl a                                                  ; $b3fb : $0a
	.db $67                                                  ; $b3fc : $67
	.db $13                                                  ; $b3fd : $13
	.db $00                                                  ; $b3fe : $00
	.db $c2                                                  ; $b3ff : $c2
	.db $00                                                  ; $b400 : $00
	asl a                                                  ; $b401 : $0a
	.db $67                                                  ; $b402 : $67
	.db $13                                                  ; $b403 : $13
	ora ($03, x)                                                  ; $b404 : $01, $03
	.db $ff                                                  ; $b406 : $ff
	asl a                                                  ; $b407 : $0a
	.db $67                                                  ; $b408 : $67
	.db $13                                                  ; $b409 : $13
	ora ($34, x)                                                  ; $b40a : $01, $34
	.db $02                                                  ; $b40c : $02
	asl a                                                  ; $b40d : $0a
	.db $67                                                  ; $b40e : $67
	.db $13                                                  ; $b40f : $13
	ora ($84, x)                                                  ; $b410 : $01, $84
	.db $ff                                                  ; $b412 : $ff
	asl a                                                  ; $b413 : $0a
	.db $67                                                  ; $b414 : $67
	.db $13                                                  ; $b415 : $13
	asl $10                                                  ; $b416 : $06, $10
	.db $00                                                  ; $b418 : $00
	asl a                                                  ; $b419 : $0a
	.db $67                                                  ; $b41a : $67
	.db $13                                                  ; $b41b : $13
	ora ($34, x)                                                  ; $b41c : $01, $34
	.db $ff                                                  ; $b41e : $ff
	asl a                                                  ; $b41f : $0a
	.db $67                                                  ; $b420 : $67
	.db $13                                                  ; $b421 : $13
	ora ($03, x)                                                  ; $b422 : $01, $03
	.db $02                                                  ; $b424 : $02
	asl a                                                  ; $b425 : $0a
	.db $67                                                  ; $b426 : $67
	.db $13                                                  ; $b427 : $13
	.db $00                                                  ; $b428 : $00
	.db $c2                                                  ; $b429 : $c2
	.db $ff                                                  ; $b42a : $ff
	asl a                                                  ; $b42b : $0a
	.db $67                                                  ; $b42c : $67
	.db $13                                                  ; $b42d : $13
	.db $00                                                  ; $b42e : $00
	.db $c2                                                  ; $b42f : $c2
	.db $00                                                  ; $b430 : $00
	asl a                                                  ; $b431 : $0a
	.db $67                                                  ; $b432 : $67
	.db $13                                                  ; $b433 : $13
	ora ($03, x)                                                  ; $b434 : $01, $03
	.db $ff                                                  ; $b436 : $ff
	asl a                                                  ; $b437 : $0a
	.db $67                                                  ; $b438 : $67
	.db $13                                                  ; $b439 : $13
	ora ($34, x)                                                  ; $b43a : $01, $34
	.db $02                                                  ; $b43c : $02
	asl a                                                  ; $b43d : $0a
	.db $67                                                  ; $b43e : $67
	.db $13                                                  ; $b43f : $13
	ora ($84, x)                                                  ; $b440 : $01, $84
	.db $ff                                                  ; $b442 : $ff
	asl a                                                  ; $b443 : $0a
	.db $67                                                  ; $b444 : $67
	.db $13                                                  ; $b445 : $13
	ora $67                                                  ; $b446 : $05, $67
	.db $00                                                  ; $b448 : $00
	asl a                                                  ; $b449 : $0a
	.db $67                                                  ; $b44a : $67
	.db $13                                                  ; $b44b : $13
	ora ($59, x)                                                  ; $b44c : $01, $59
	.db $ff                                                  ; $b44e : $ff
	asl a                                                  ; $b44f : $0a
	.db $67                                                  ; $b450 : $67
	.db $13                                                  ; $b451 : $13
	ora ($03, x)                                                  ; $b452 : $01, $03
	.db $02                                                  ; $b454 : $02
	asl a                                                  ; $b455 : $0a
	.db $67                                                  ; $b456 : $67
	.db $13                                                  ; $b457 : $13
	.db $00                                                  ; $b458 : $00
	cmp $0aff                                                  ; $b459 : $cd, $ff, $0a
	.db $67                                                  ; $b45c : $67
	.db $13                                                  ; $b45d : $13
	.db $00                                                  ; $b45e : $00
	ldy $0a00                                                  ; $b45f : $ac, $00, $0a
	.db $67                                                  ; $b462 : $67
	.db $13                                                  ; $b463 : $13
	.db $00                                                  ; $b464 : $00
	cmp $0aff                                                  ; $b465 : $cd, $ff, $0a
	.db $67                                                  ; $b468 : $67
	.db $13                                                  ; $b469 : $13
	ora ($03, x)                                                  ; $b46a : $01, $03
	.db $02                                                  ; $b46c : $02
	asl a                                                  ; $b46d : $0a
	.db $67                                                  ; $b46e : $67
	.db $13                                                  ; $b46f : $13
	ora ($59, x)                                                  ; $b470 : $01, $59
	.db $ff                                                  ; $b472 : $ff
	asl a                                                  ; $b473 : $0a
	.db $67                                                  ; $b474 : $67
	.db $13                                                  ; $b475 : $13
	ora $67                                                  ; $b476 : $05, $67
	.db $00                                                  ; $b478 : $00
	asl a                                                  ; $b479 : $0a
	.db $67                                                  ; $b47a : $67
	.db $13                                                  ; $b47b : $13
	ora ($59, x)                                                  ; $b47c : $01, $59
	.db $ff                                                  ; $b47e : $ff
	asl a                                                  ; $b47f : $0a
	.db $67                                                  ; $b480 : $67
	.db $13                                                  ; $b481 : $13
	ora ($03, x)                                                  ; $b482 : $01, $03
	.db $02                                                  ; $b484 : $02
	asl a                                                  ; $b485 : $0a
	.db $67                                                  ; $b486 : $67
	.db $13                                                  ; $b487 : $13
	.db $00                                                  ; $b488 : $00
	cmp $0aff                                                  ; $b489 : $cd, $ff, $0a
	.db $67                                                  ; $b48c : $67
	.db $13                                                  ; $b48d : $13
	.db $00                                                  ; $b48e : $00
	ldy $0a00                                                  ; $b48f : $ac, $00, $0a
	.db $67                                                  ; $b492 : $67
	.db $13                                                  ; $b493 : $13
	.db $00                                                  ; $b494 : $00
	cmp $0aff                                                  ; $b495 : $cd, $ff, $0a
	.db $67                                                  ; $b498 : $67
	.db $13                                                  ; $b499 : $13
	ora ($03, x)                                                  ; $b49a : $01, $03
	.db $02                                                  ; $b49c : $02
	asl a                                                  ; $b49d : $0a
	.db $67                                                  ; $b49e : $67
	.db $13                                                  ; $b49f : $13
	ora ($59, x)                                                  ; $b4a0 : $01, $59
	.db $ff                                                  ; $b4a2 : $ff
	asl a                                                  ; $b4a3 : $0a
	.db $67                                                  ; $b4a4 : $67
	.db $13                                                  ; $b4a5 : $13
	.db $03                                                  ; $b4a6 : $03
	.db $9b                                                  ; $b4a7 : $9b
	.db $00                                                  ; $b4a8 : $00
	asl a                                                  ; $b4a9 : $0a
	.db $67                                                  ; $b4aa : $67
	.db $13                                                  ; $b4ab : $13
	ora ($59, x)                                                  ; $b4ac : $01, $59
	.db $ff                                                  ; $b4ae : $ff
	asl a                                                  ; $b4af : $0a
	.db $67                                                  ; $b4b0 : $67
	.db $13                                                  ; $b4b1 : $13
	ora ($12, x)                                                  ; $b4b2 : $01, $12
	.db $02                                                  ; $b4b4 : $02
	asl a                                                  ; $b4b5 : $0a
	.db $67                                                  ; $b4b6 : $67
	.db $13                                                  ; $b4b7 : $13
	.db $00                                                  ; $b4b8 : $00
	inc $ff                                                  ; $b4b9 : $e6, $ff
	asl a                                                  ; $b4bb : $0a
	.db $67                                                  ; $b4bc : $67
	.db $13                                                  ; $b4bd : $13
	.db $00                                                  ; $b4be : $00
	ldy $0a00                                                  ; $b4bf : $ac, $00, $0a
	.db $67                                                  ; $b4c2 : $67
	.db $13                                                  ; $b4c3 : $13
	.db $00                                                  ; $b4c4 : $00
	inc $ff                                                  ; $b4c5 : $e6, $ff
	asl a                                                  ; $b4c7 : $0a
	.db $67                                                  ; $b4c8 : $67
	.db $13                                                  ; $b4c9 : $13
	ora ($12, x)                                                  ; $b4ca : $01, $12
	.db $02                                                  ; $b4cc : $02
	asl a                                                  ; $b4cd : $0a
	.db $67                                                  ; $b4ce : $67
	.db $13                                                  ; $b4cf : $13
	ora ($59, x)                                                  ; $b4d0 : $01, $59
	.db $ff                                                  ; $b4d2 : $ff
	asl a                                                  ; $b4d3 : $0a
	.db $67                                                  ; $b4d4 : $67
	.db $13                                                  ; $b4d5 : $13
	.db $03                                                  ; $b4d6 : $03
	.db $9b                                                  ; $b4d7 : $9b
	.db $00                                                  ; $b4d8 : $00
	asl a                                                  ; $b4d9 : $0a
	.db $67                                                  ; $b4da : $67
	.db $13                                                  ; $b4db : $13
	ora ($59, x)                                                  ; $b4dc : $01, $59
	.db $ff                                                  ; $b4de : $ff
	asl a                                                  ; $b4df : $0a
	.db $67                                                  ; $b4e0 : $67
	.db $13                                                  ; $b4e1 : $13
	ora ($12, x)                                                  ; $b4e2 : $01, $12
	.db $02                                                  ; $b4e4 : $02
	asl a                                                  ; $b4e5 : $0a
	.db $67                                                  ; $b4e6 : $67
	.db $13                                                  ; $b4e7 : $13
	.db $00                                                  ; $b4e8 : $00
	inc $ff                                                  ; $b4e9 : $e6, $ff
	asl a                                                  ; $b4eb : $0a
	.db $67                                                  ; $b4ec : $67
	.db $13                                                  ; $b4ed : $13
	.db $00                                                  ; $b4ee : $00
	ldy $0a00                                                  ; $b4ef : $ac, $00, $0a
	.db $67                                                  ; $b4f2 : $67
	.db $13                                                  ; $b4f3 : $13
	.db $00                                                  ; $b4f4 : $00
	inc $ff                                                  ; $b4f5 : $e6, $ff
	asl a                                                  ; $b4f7 : $0a
	.db $67                                                  ; $b4f8 : $67
	.db $13                                                  ; $b4f9 : $13
	ora ($12, x)                                                  ; $b4fa : $01, $12
	.db $02                                                  ; $b4fc : $02
	asl a                                                  ; $b4fd : $0a
	.db $67                                                  ; $b4fe : $67
	.db $13                                                  ; $b4ff : $13
	ora ($59, x)                                                  ; $b500 : $01, $59
	.db $ff                                                  ; $b502 : $ff
	asl a                                                  ; $b503 : $0a
	.db $67                                                  ; $b504 : $67
	.db $13                                                  ; $b505 : $13
	asl $10                                                  ; $b506 : $06, $10
	.db $00                                                  ; $b508 : $00
	asl a                                                  ; $b509 : $0a
	.db $67                                                  ; $b50a : $67
	.db $13                                                  ; $b50b : $13
	ora ($34, x)                                                  ; $b50c : $01, $34
	.db $ff                                                  ; $b50e : $ff
	asl a                                                  ; $b50f : $0a
	.db $67                                                  ; $b510 : $67
	.db $13                                                  ; $b511 : $13
	ora ($03, x)                                                  ; $b512 : $01, $03
	.db $02                                                  ; $b514 : $02
	asl a                                                  ; $b515 : $0a
	.db $67                                                  ; $b516 : $67
	.db $13                                                  ; $b517 : $13
	.db $00                                                  ; $b518 : $00
	.db $c2                                                  ; $b519 : $c2
	.db $ff                                                  ; $b51a : $ff
	asl a                                                  ; $b51b : $0a
	.db $67                                                  ; $b51c : $67
	.db $13                                                  ; $b51d : $13
	.db $00                                                  ; $b51e : $00
	.db $c2                                                  ; $b51f : $c2
	.db $00                                                  ; $b520 : $00
	asl a                                                  ; $b521 : $0a
	.db $67                                                  ; $b522 : $67
	.db $13                                                  ; $b523 : $13
	ora ($03, x)                                                  ; $b524 : $01, $03
	.db $ff                                                  ; $b526 : $ff
	asl a                                                  ; $b527 : $0a
	.db $67                                                  ; $b528 : $67
	.db $13                                                  ; $b529 : $13
	ora ($34, x)                                                  ; $b52a : $01, $34
	.db $02                                                  ; $b52c : $02
	asl a                                                  ; $b52d : $0a
	.db $67                                                  ; $b52e : $67
	.db $13                                                  ; $b52f : $13
	ora ($84, x)                                                  ; $b530 : $01, $84
	.db $ff                                                  ; $b532 : $ff
	asl a                                                  ; $b533 : $0a
	.db $67                                                  ; $b534 : $67
	.db $13                                                  ; $b535 : $13
	.db $04                                                  ; $b536 : $04
	.db $0c                                                  ; $b537 : $0c
	.db $00                                                  ; $b538 : $00
	asl a                                                  ; $b539 : $0a
	.db $67                                                  ; $b53a : $67
	.db $13                                                  ; $b53b : $13
	ora ($59, x)                                                  ; $b53c : $01, $59
	.db $ff                                                  ; $b53e : $ff
	asl a                                                  ; $b53f : $0a
	.db $67                                                  ; $b540 : $67
	.db $13                                                  ; $b541 : $13
	ora ($03, x)                                                  ; $b542 : $01, $03
	.db $02                                                  ; $b544 : $02
	asl a                                                  ; $b545 : $0a
	.db $67                                                  ; $b546 : $67
	.db $13                                                  ; $b547 : $13
	.db $00                                                  ; $b548 : $00
	cmp $0aff                                                  ; $b549 : $cd, $ff, $0a
	.db $67                                                  ; $b54c : $67
	.db $13                                                  ; $b54d : $13
	.db $00                                                  ; $b54e : $00
	ldy $0a00                                                  ; $b54f : $ac, $00, $0a
	.db $67                                                  ; $b552 : $67
	.db $13                                                  ; $b553 : $13
	.db $00                                                  ; $b554 : $00
	cmp $0aff                                                  ; $b555 : $cd, $ff, $0a
	.db $67                                                  ; $b558 : $67
	.db $13                                                  ; $b559 : $13
	ora ($03, x)                                                  ; $b55a : $01, $03
	.db $02                                                  ; $b55c : $02
	asl a                                                  ; $b55d : $0a
	.db $67                                                  ; $b55e : $67
	.db $13                                                  ; $b55f : $13
	ora ($34, x)                                                  ; $b560 : $01, $34
	.db $ff                                                  ; $b562 : $ff
	.db $14                                                  ; $b563 : $14
	.db $67                                                  ; $b564 : $67
	.db $13                                                  ; $b565 : $13
	.db $04                                                  ; $b566 : $04
	.db $0c                                                  ; $b567 : $0c
	.db $00                                                  ; $b568 : $00
	.db $14                                                  ; $b569 : $14
	.db $67                                                  ; $b56a : $67
	.db $13                                                  ; $b56b : $13
	ora ($59, x)                                                  ; $b56c : $01, $59
	.db $02                                                  ; $b56e : $02
	.db $14                                                  ; $b56f : $14
	.db $67                                                  ; $b570 : $67
	.db $13                                                  ; $b571 : $13
	ora ($03, x)                                                  ; $b572 : $01, $03
	.db $00                                                  ; $b574 : $00
	.db $14                                                  ; $b575 : $14
	.db $67                                                  ; $b576 : $67

br_00_b577:
	.db $13                                                  ; $b577 : $13
	.db $00                                                  ; $b578 : $00
	cmp $1402                                                  ; $b579 : $cd, $02, $14
	.db $67                                                  ; $b57c : $67
	.db $13                                                  ; $b57d : $13
	ora ($03, x)                                                  ; $b57e : $01, $03
	.db $00                                                  ; $b580 : $00
	.db $14                                                  ; $b581 : $14
	.db $67                                                  ; $b582 : $67
	.db $13                                                  ; $b583 : $13
	.db $00                                                  ; $b584 : $00
	ora ($ff, x)                                                  ; $b585 : $01, $ff
	.db $ff                                                  ; $b587 : $ff
	.db $14                                                  ; $b588 : $14
	.db $b7                                                  ; $b589 : $b7
	and ($01, x)                                                  ; $b58a : $21, $01
	.db $34                                                  ; $b58c : $34
	.db $ff                                                  ; $b58d : $ff
	.db $14                                                  ; $b58e : $14
	.db $b7                                                  ; $b58f : $b7
	and ($01, x)                                                  ; $b590 : $21, $01
	.db $03                                                  ; $b592 : $03
	.db $ff                                                  ; $b593 : $ff
	.db $14                                                  ; $b594 : $14
	.db $b7                                                  ; $b595 : $b7
	and ($00, x)                                                  ; $b596 : $21, $00
	cmp $14ff                                                  ; $b598 : $cd, $ff, $14
	.db $b7                                                  ; $b59b : $b7
	and ($01, x)                                                  ; $b59c : $21, $01
	.db $03                                                  ; $b59e : $03
	.db $ff                                                  ; $b59f : $ff
	plp                                                  ; $b5a0 : $28
	.db $b7                                                  ; $b5a1 : $b7
	and ($00, x)                                                  ; $b5a2 : $21, $00
	inc $ff                                                  ; $b5a4 : $e6, $ff
	.db $14                                                  ; $b5a6 : $14

br_00_b5a7:
	.db $b7                                                  ; $b5a7 : $b7
	and ($01, x)                                                  ; $b5a8 : $21, $01
	.db $03                                                  ; $b5aa : $03
	.db $ff                                                  ; $b5ab : $ff
	.db $14                                                  ; $b5ac : $14
	.db $b7                                                  ; $b5ad : $b7
	and ($01, x)                                                  ; $b5ae : $21, $01
	.db $12                                                  ; $b5b0 : $12
	.db $ff                                                  ; $b5b1 : $ff
	plp                                                  ; $b5b2 : $28
	.db $b7                                                  ; $b5b3 : $b7
	and ($00, x)                                                  ; $b5b4 : $21, $00
	cmp $28ff                                                  ; $b5b6 : $cd, $ff, $28
	.db $b7                                                  ; $b5b9 : $b7
	and ($00, x)                                                  ; $b5ba : $21, $00
	inc $ff                                                  ; $b5bc : $e6, $ff
	bvc br_00_b577                                                  ; $b5be : $50, $b7

	and ($01, x)                                                  ; $b5c0 : $21, $01
	.db $34                                                  ; $b5c2 : $34
	.db $ff                                                  ; $b5c3 : $ff
	.db $14                                                  ; $b5c4 : $14
	.db $b7                                                  ; $b5c5 : $b7
	and ($01, x)                                                  ; $b5c6 : $21, $01
	.db $03                                                  ; $b5c8 : $03
	.db $ff                                                  ; $b5c9 : $ff
	.db $14                                                  ; $b5ca : $14
	.db $b7                                                  ; $b5cb : $b7
	and ($00, x)                                                  ; $b5cc : $21, $00
	cmp $14ff                                                  ; $b5ce : $cd, $ff, $14
	.db $b7                                                  ; $b5d1 : $b7
	and ($00, x)                                                  ; $b5d2 : $21, $00
	ldy $14ff                                                  ; $b5d4 : $ac, $ff, $14
	.db $b7                                                  ; $b5d7 : $b7
	and ($00, x)                                                  ; $b5d8 : $21, $00
	ldy $28ff                                                  ; $b5da : $ac, $ff, $28
	.db $b7                                                  ; $b5dd : $b7
	and ($00, x)                                                  ; $b5de : $21, $00
	sta $14ff, y                                                  ; $b5e0 : $99, $ff, $14
	.db $b7                                                  ; $b5e3 : $b7
	and ($00, x)                                                  ; $b5e4 : $21, $00
	ldy $14ff                                                  ; $b5e6 : $ac, $ff, $14
	.db $b7                                                  ; $b5e9 : $b7
	and ($00, x)                                                  ; $b5ea : $21, $00
	.db $c2                                                  ; $b5ec : $c2
	.db $ff                                                  ; $b5ed : $ff
	bvc br_00_b5a7                                                  ; $b5ee : $50, $b7

	and ($00, x)                                                  ; $b5f0 : $21, $00
	cmp $28ff                                                  ; $b5f2 : $cd, $ff, $28
	tsx                                                  ; $b5f5 : $ba
	.db $03                                                  ; $b5f6 : $03
	.db $00                                                  ; $b5f7 : $00
	.db $b7                                                  ; $b5f8 : $b7
	.db $ff                                                  ; $b5f9 : $ff
	plp                                                  ; $b5fa : $28
	tsx                                                  ; $b5fb : $ba
	.db $03                                                  ; $b5fc : $03
	.db $00                                                  ; $b5fd : $00
	.db $a3                                                  ; $b5fe : $a3
	.db $ff                                                  ; $b5ff : $ff
	.db $14                                                  ; $b600 : $14
	.db $b7                                                  ; $b601 : $b7
	and ($00, x)                                                  ; $b602 : $21, $00
	.db $89                                                  ; $b604 : $89
	.db $ff                                                  ; $b605 : $ff
	.db $14                                                  ; $b606 : $14
	.db $b7                                                  ; $b607 : $b7
	and ($00, x)                                                  ; $b608 : $21, $00
	sta $3cff, y                                                  ; $b60a : $99, $ff, $3c
	.db $b7                                                  ; $b60d : $b7
	and ($00, x)                                                  ; $b60e : $21, $00
	cmp $28ff                                                  ; $b610 : $cd, $ff, $28
	.db $b7                                                  ; $b613 : $b7
	and ($01, x)                                                  ; $b614 : $21, $01
	.db $03                                                  ; $b616 : $03
	.db $ff                                                  ; $b617 : $ff
	.db $14                                                  ; $b618 : $14

br_00_b619:
	.db $b7                                                  ; $b619 : $b7
	and ($01, x)                                                  ; $b61a : $21, $01
	.db $34                                                  ; $b61c : $34
	.db $ff                                                  ; $b61d : $ff
	.db $14                                                  ; $b61e : $14
	.db $b7                                                  ; $b61f : $b7
	and ($00, x)                                                  ; $b620 : $21, $00
	cmp $14ff                                                  ; $b622 : $cd, $ff, $14
	.db $b7                                                  ; $b625 : $b7
	and ($00, x)                                                  ; $b626 : $21, $00
	inc $ff                                                  ; $b628 : $e6, $ff
	.db $3c                                                  ; $b62a : $3c
	.db $b7                                                  ; $b62b : $b7
	and ($00, x)                                                  ; $b62c : $21, $00
	.db $c2                                                  ; $b62e : $c2
	.db $ff                                                  ; $b62f : $ff
	.db $14                                                  ; $b630 : $14
	.db $b7                                                  ; $b631 : $b7
	and ($00, x)                                                  ; $b632 : $21, $00
	ora ($ff, x)                                                  ; $b634 : $01, $ff
	.db $14                                                  ; $b636 : $14
	.db $b7                                                  ; $b637 : $b7
	and ($00, x)                                                  ; $b638 : $21, $00
	ldy $14ff                                                  ; $b63a : $ac, $ff, $14
	.db $b7                                                  ; $b63d : $b7
	and ($00, x)                                                  ; $b63e : $21, $00
	.db $c2                                                  ; $b640 : $c2
	.db $ff                                                  ; $b641 : $ff
	plp                                                  ; $b642 : $28
	.db $b7                                                  ; $b643 : $b7
	and ($00, x)                                                  ; $b644 : $21, $00
	cmp $14ff                                                  ; $b646 : $cd, $ff, $14
	.db $b7                                                  ; $b649 : $b7
	and ($00, x)                                                  ; $b64a : $21, $00
	inc $ff                                                  ; $b64c : $e6, $ff
	.db $14                                                  ; $b64e : $14
	.db $b7                                                  ; $b64f : $b7
	and ($01, x)                                                  ; $b650 : $21, $01
	.db $03                                                  ; $b652 : $03
	.db $ff                                                  ; $b653 : $ff
	plp                                                  ; $b654 : $28
	.db $b7                                                  ; $b655 : $b7
	and ($00, x)                                                  ; $b656 : $21, $00
	cmp $28ff                                                  ; $b658 : $cd, $ff, $28
	.db $b7                                                  ; $b65b : $b7
	and ($00, x)                                                  ; $b65c : $21, $00
	inc $ff                                                  ; $b65e : $e6, $ff
	bvc br_00_b619                                                  ; $b660 : $50, $b7

	and ($01, x)                                                  ; $b662 : $21, $01
	.db $34                                                  ; $b664 : $34
	.db $ff                                                  ; $b665 : $ff
	plp                                                  ; $b666 : $28
	tsx                                                  ; $b667 : $ba
	.db $03                                                  ; $b668 : $03
	.db $00                                                  ; $b669 : $00
	.db $b7                                                  ; $b66a : $b7
	.db $ff                                                  ; $b66b : $ff
	plp                                                  ; $b66c : $28
	tsx                                                  ; $b66d : $ba
	.db $03                                                  ; $b66e : $03
	.db $00                                                  ; $b66f : $00
	.db $a3                                                  ; $b670 : $a3
	.db $ff                                                  ; $b671 : $ff
	.db $14                                                  ; $b672 : $14
	.db $b7                                                  ; $b673 : $b7
	and ($00, x)                                                  ; $b674 : $21, $00
	.db $89                                                  ; $b676 : $89
	.db $ff                                                  ; $b677 : $ff
	.db $14                                                  ; $b678 : $14
	.db $b7                                                  ; $b679 : $b7
	and ($00, x)                                                  ; $b67a : $21, $00
	sta $3cff, y                                                  ; $b67c : $99, $ff, $3c
	.db $b7                                                  ; $b67f : $b7
	and ($00, x)                                                  ; $b680 : $21, $00
	cmp $28ff                                                  ; $b682 : $cd, $ff, $28
	.db $b7                                                  ; $b685 : $b7
	and ($01, x)                                                  ; $b686 : $21, $01
	.db $03                                                  ; $b688 : $03
	.db $ff                                                  ; $b689 : $ff
	.db $14                                                  ; $b68a : $14

br_00_b68b:
	.db $b7                                                  ; $b68b : $b7
	and ($01, x)                                                  ; $b68c : $21, $01
	.db $34                                                  ; $b68e : $34
	.db $ff                                                  ; $b68f : $ff
	.db $14                                                  ; $b690 : $14
	.db $b7                                                  ; $b691 : $b7
	and ($00, x)                                                  ; $b692 : $21, $00
	cmp $14ff                                                  ; $b694 : $cd, $ff, $14
	.db $b7                                                  ; $b697 : $b7
	and ($00, x)                                                  ; $b698 : $21, $00
	inc $ff                                                  ; $b69a : $e6, $ff
	.db $3c                                                  ; $b69c : $3c
	.db $b7                                                  ; $b69d : $b7
	and ($00, x)                                                  ; $b69e : $21, $00
	.db $c2                                                  ; $b6a0 : $c2
	.db $ff                                                  ; $b6a1 : $ff
	.db $14                                                  ; $b6a2 : $14
	.db $b7                                                  ; $b6a3 : $b7
	and ($00, x)                                                  ; $b6a4 : $21, $00
	ora ($ff, x)                                                  ; $b6a6 : $01, $ff
	.db $14                                                  ; $b6a8 : $14
	.db $b7                                                  ; $b6a9 : $b7
	and ($00, x)                                                  ; $b6aa : $21, $00
	ldy $14ff                                                  ; $b6ac : $ac, $ff, $14
	.db $b7                                                  ; $b6af : $b7
	and ($00, x)                                                  ; $b6b0 : $21, $00
	.db $c2                                                  ; $b6b2 : $c2
	.db $ff                                                  ; $b6b3 : $ff
	plp                                                  ; $b6b4 : $28
	.db $b7                                                  ; $b6b5 : $b7
	and ($00, x)                                                  ; $b6b6 : $21, $00
	cmp $14ff                                                  ; $b6b8 : $cd, $ff, $14
	.db $b7                                                  ; $b6bb : $b7
	and ($00, x)                                                  ; $b6bc : $21, $00
	inc $ff                                                  ; $b6be : $e6, $ff
	.db $14                                                  ; $b6c0 : $14
	.db $b7                                                  ; $b6c1 : $b7
	and ($01, x)                                                  ; $b6c2 : $21, $01
	.db $03                                                  ; $b6c4 : $03
	.db $ff                                                  ; $b6c5 : $ff
	plp                                                  ; $b6c6 : $28
	.db $b7                                                  ; $b6c7 : $b7
	and ($00, x)                                                  ; $b6c8 : $21, $00
	cmp $28ff                                                  ; $b6ca : $cd, $ff, $28
	.db $b7                                                  ; $b6cd : $b7
	and ($00, x)                                                  ; $b6ce : $21, $00
	inc $ff                                                  ; $b6d0 : $e6, $ff
	bvc br_00_b68b                                                  ; $b6d2 : $50, $b7

	and ($01, x)                                                  ; $b6d4 : $21, $01
	.db $34                                                  ; $b6d6 : $34
	.db $ff                                                  ; $b6d7 : $ff
	.db $14                                                  ; $b6d8 : $14
	.db $67                                                  ; $b6d9 : $67
	.db $03                                                  ; $b6da : $03
	ora ($34, x)                                                  ; $b6db : $01, $34
	.db $ff                                                  ; $b6dd : $ff
	.db $14                                                  ; $b6de : $14
	.db $67                                                  ; $b6df : $67
	.db $03                                                  ; $b6e0 : $03
	ora ($03, x)                                                  ; $b6e1 : $01, $03
	.db $ff                                                  ; $b6e3 : $ff
	.db $14                                                  ; $b6e4 : $14
	.db $67                                                  ; $b6e5 : $67
	.db $03                                                  ; $b6e6 : $03
	.db $00                                                  ; $b6e7 : $00
	cmp $14ff                                                  ; $b6e8 : $cd, $ff, $14
	.db $67                                                  ; $b6eb : $67
	.db $03                                                  ; $b6ec : $03
	ora ($03, x)                                                  ; $b6ed : $01, $03
	.db $ff                                                  ; $b6ef : $ff
	clc                                                  ; $b6f0 : $18
	.db $67                                                  ; $b6f1 : $67
	.db $03                                                  ; $b6f2 : $03
	.db $00                                                  ; $b6f3 : $00
	inc $ff                                                  ; $b6f4 : $e6, $ff
	bpl br_00_b75f                                                  ; $b6f6 : $10, $67

	.db $03                                                  ; $b6f8 : $03
	.db $00                                                  ; $b6f9 : $00
	ora ($ff, x)                                                  ; $b6fa : $01, $ff
	.db $14                                                  ; $b6fc : $14
	.db $67                                                  ; $b6fd : $67
	.db $03                                                  ; $b6fe : $03
	ora ($03, x)                                                  ; $b6ff : $01, $03
	.db $ff                                                  ; $b701 : $ff
	.db $14                                                  ; $b702 : $14
	.db $67                                                  ; $b703 : $67
	.db $03                                                  ; $b704 : $03
	ora ($12, x)                                                  ; $b705 : $01, $12
	.db $ff                                                  ; $b707 : $ff
	clc                                                  ; $b708 : $18
	.db $67                                                  ; $b709 : $67
	.db $03                                                  ; $b70a : $03
	.db $00                                                  ; $b70b : $00
	cmp $10ff                                                  ; $b70c : $cd, $ff, $10
	.db $67                                                  ; $b70f : $67
	.db $03                                                  ; $b710 : $03
	.db $00                                                  ; $b711 : $00
	ora ($ff, x)                                                  ; $b712 : $01, $ff
	clc                                                  ; $b714 : $18
	.db $67                                                  ; $b715 : $67
	.db $03                                                  ; $b716 : $03

br_00_b717:
	.db $00                                                  ; $b717 : $00
	inc $ff                                                  ; $b718 : $e6, $ff
	bpl br_00_b783                                                  ; $b71a : $10, $67

	.db $03                                                  ; $b71c : $03
	.db $00                                                  ; $b71d : $00
	ora ($ff, x)                                                  ; $b71e : $01, $ff
	clc                                                  ; $b720 : $18
	.db $67                                                  ; $b721 : $67
	.db $03                                                  ; $b722 : $03

br_00_b723:
	ora ($34, x)                                                  ; $b723 : $01, $34
	.db $ff                                                  ; $b725 : $ff
	sec                                                  ; $b726 : $38
	.db $67                                                  ; $b727 : $67
	.db $03                                                  ; $b728 : $03
	.db $00                                                  ; $b729 : $00
	ora ($ff, x)                                                  ; $b72a : $01, $ff
	.db $14                                                  ; $b72c : $14
	.db $67                                                  ; $b72d : $67
	.db $03                                                  ; $b72e : $03
	ora ($03, x)                                                  ; $b72f : $01, $03
	.db $ff                                                  ; $b731 : $ff
	.db $14                                                  ; $b732 : $14
	.db $67                                                  ; $b733 : $67
	.db $03                                                  ; $b734 : $03
	.db $00                                                  ; $b735 : $00
	cmp $14ff                                                  ; $b736 : $cd, $ff, $14
	.db $67                                                  ; $b739 : $67
	.db $03                                                  ; $b73a : $03
	.db $00                                                  ; $b73b : $00
	ldy $14ff                                                  ; $b73c : $ac, $ff, $14
	.db $67                                                  ; $b73f : $67
	.db $03                                                  ; $b740 : $03
	.db $00                                                  ; $b741 : $00
	ldy $18ff                                                  ; $b742 : $ac, $ff, $18
	.db $67                                                  ; $b745 : $67
	.db $03                                                  ; $b746 : $03
	.db $00                                                  ; $b747 : $00
	sta $10ff, y                                                  ; $b748 : $99, $ff, $10
	.db $67                                                  ; $b74b : $67
	.db $03                                                  ; $b74c : $03
	.db $00                                                  ; $b74d : $00
	ora ($ff, x)                                                  ; $b74e : $01, $ff
	.db $14                                                  ; $b750 : $14
	.db $67                                                  ; $b751 : $67
	.db $03                                                  ; $b752 : $03
	.db $00                                                  ; $b753 : $00
	ldy $14ff                                                  ; $b754 : $ac, $ff, $14
	.db $67                                                  ; $b757 : $67
	.db $03                                                  ; $b758 : $03
	.db $00                                                  ; $b759 : $00
	.db $c2                                                  ; $b75a : $c2
	.db $ff                                                  ; $b75b : $ff
	clc                                                  ; $b75c : $18
	.db $67                                                  ; $b75d : $67
	.db $03                                                  ; $b75e : $03

br_00_b75f:
	.db $00                                                  ; $b75f : $00
	cmp $38ff                                                  ; $b760 : $cd, $ff, $38
	.db $67                                                  ; $b763 : $67
	.db $03                                                  ; $b764 : $03
	.db $00                                                  ; $b765 : $00
	ora ($ff, x)                                                  ; $b766 : $01, $ff
	clc                                                  ; $b768 : $18
	.db $a7                                                  ; $b769 : $a7
	.db $03                                                  ; $b76a : $03
	.db $00                                                  ; $b76b : $00
	.db $b7                                                  ; $b76c : $b7
	.db $ff                                                  ; $b76d : $ff
	bpl br_00_b717                                                  ; $b76e : $10, $a7

	.db $03                                                  ; $b770 : $03
	.db $00                                                  ; $b771 : $00
	ora ($ff, x)                                                  ; $b772 : $01, $ff
	clc                                                  ; $b774 : $18
	.db $a7                                                  ; $b775 : $a7
	.db $03                                                  ; $b776 : $03
	.db $00                                                  ; $b777 : $00
	.db $a3                                                  ; $b778 : $a3
	.db $ff                                                  ; $b779 : $ff
	bpl br_00_b723                                                  ; $b77a : $10, $a7

	.db $03                                                  ; $b77c : $03
	.db $00                                                  ; $b77d : $00
	ora ($ff, x)                                                  ; $b77e : $01, $ff
	.db $14                                                  ; $b780 : $14
	.db $67                                                  ; $b781 : $67
	.db $03                                                  ; $b782 : $03

br_00_b783:
	.db $00                                                  ; $b783 : $00
	.db $89                                                  ; $b784 : $89
	.db $ff                                                  ; $b785 : $ff
	.db $14                                                  ; $b786 : $14
	.db $67                                                  ; $b787 : $67
	.db $03                                                  ; $b788 : $03
	.db $00                                                  ; $b789 : $00
	sta $18ff, y                                                  ; $b78a : $99, $ff, $18
	.db $67                                                  ; $b78d : $67
	.db $03                                                  ; $b78e : $03
	.db $00                                                  ; $b78f : $00
	cmp $24ff                                                  ; $b790 : $cd, $ff, $24
	.db $67                                                  ; $b793 : $67
	.db $03                                                  ; $b794 : $03
	.db $00                                                  ; $b795 : $00
	ora ($ff, x)                                                  ; $b796 : $01, $ff
	clc                                                  ; $b798 : $18
	.db $67                                                  ; $b799 : $67
	.db $03                                                  ; $b79a : $03
	ora ($03, x)                                                  ; $b79b : $01, $03
	.db $ff                                                  ; $b79d : $ff
	bpl br_00_b807                                                  ; $b79e : $10, $67

	.db $03                                                  ; $b7a0 : $03
	.db $00                                                  ; $b7a1 : $00
	ora ($ff, x)                                                  ; $b7a2 : $01, $ff
	.db $14                                                  ; $b7a4 : $14
	.db $67                                                  ; $b7a5 : $67
	.db $03                                                  ; $b7a6 : $03
	ora ($34, x)                                                  ; $b7a7 : $01, $34
	.db $ff                                                  ; $b7a9 : $ff
	.db $14                                                  ; $b7aa : $14
	.db $67                                                  ; $b7ab : $67
	.db $03                                                  ; $b7ac : $03
	.db $00                                                  ; $b7ad : $00
	cmp $14ff                                                  ; $b7ae : $cd, $ff, $14
	.db $67                                                  ; $b7b1 : $67
	.db $03                                                  ; $b7b2 : $03
	.db $00                                                  ; $b7b3 : $00
	inc $ff                                                  ; $b7b4 : $e6, $ff
	clc                                                  ; $b7b6 : $18
	.db $67                                                  ; $b7b7 : $67
	.db $03                                                  ; $b7b8 : $03
	.db $00                                                  ; $b7b9 : $00
	.db $c2                                                  ; $b7ba : $c2
	.db $ff                                                  ; $b7bb : $ff
	bit $67                                                  ; $b7bc : $24, $67
	.db $03                                                  ; $b7be : $03

br_00_b7bf:
	.db $00                                                  ; $b7bf : $00
	ora ($ff, x)                                                  ; $b7c0 : $01, $ff
	.db $14                                                  ; $b7c2 : $14
	.db $67                                                  ; $b7c3 : $67
	.db $03                                                  ; $b7c4 : $03
	.db $00                                                  ; $b7c5 : $00
	ora ($ff, x)                                                  ; $b7c6 : $01, $ff
	.db $14                                                  ; $b7c8 : $14
	.db $67                                                  ; $b7c9 : $67
	.db $03                                                  ; $b7ca : $03

br_00_b7cb:
	.db $00                                                  ; $b7cb : $00
	ldy $14ff                                                  ; $b7cc : $ac, $ff, $14
	.db $67                                                  ; $b7cf : $67
	.db $03                                                  ; $b7d0 : $03
	.db $00                                                  ; $b7d1 : $00
	.db $c2                                                  ; $b7d2 : $c2
	.db $ff                                                  ; $b7d3 : $ff
	clc                                                  ; $b7d4 : $18
	.db $67                                                  ; $b7d5 : $67
	.db $03                                                  ; $b7d6 : $03
	.db $00                                                  ; $b7d7 : $00
	cmp $10ff                                                  ; $b7d8 : $cd, $ff, $10
	.db $67                                                  ; $b7db : $67
	.db $03                                                  ; $b7dc : $03
	.db $00                                                  ; $b7dd : $00
	ora ($ff, x)                                                  ; $b7de : $01, $ff
	.db $14                                                  ; $b7e0 : $14
	.db $67                                                  ; $b7e1 : $67
	.db $03                                                  ; $b7e2 : $03
	.db $00                                                  ; $b7e3 : $00
	inc $ff                                                  ; $b7e4 : $e6, $ff
	.db $14                                                  ; $b7e6 : $14
	.db $67                                                  ; $b7e7 : $67
	.db $03                                                  ; $b7e8 : $03
	ora ($03, x)                                                  ; $b7e9 : $01, $03
	.db $ff                                                  ; $b7eb : $ff
	clc                                                  ; $b7ec : $18
	.db $67                                                  ; $b7ed : $67
	.db $03                                                  ; $b7ee : $03
	.db $00                                                  ; $b7ef : $00
	cmp $10ff                                                  ; $b7f0 : $cd, $ff, $10
	.db $67                                                  ; $b7f3 : $67
	.db $03                                                  ; $b7f4 : $03
	.db $00                                                  ; $b7f5 : $00
	ora ($ff, x)                                                  ; $b7f6 : $01, $ff
	clc                                                  ; $b7f8 : $18
	.db $67                                                  ; $b7f9 : $67
	.db $03                                                  ; $b7fa : $03
	.db $00                                                  ; $b7fb : $00
	inc $ff                                                  ; $b7fc : $e6, $ff
	bpl $67                                                  ; $b7fe : $10, $67

	.db $03                                                  ; $b800 : $03
	.db $00                                                  ; $b801 : $00
	ora ($ff, x)                                                  ; $b802 : $01, $ff
	clc                                                  ; $b804 : $18
	.db $67                                                  ; $b805 : $67
	.db $03                                                  ; $b806 : $03

br_00_b807:
	ora ($34, x)                                                  ; $b807 : $01, $34
	.db $ff                                                  ; $b809 : $ff
	sec                                                  ; $b80a : $38
	.db $67                                                  ; $b80b : $67
	.db $03                                                  ; $b80c : $03
	.db $00                                                  ; $b80d : $00
	ora ($ff, x)                                                  ; $b80e : $01, $ff
	clc                                                  ; $b810 : $18
	.db $a7                                                  ; $b811 : $a7
	.db $03                                                  ; $b812 : $03
	.db $00                                                  ; $b813 : $00
	.db $b7                                                  ; $b814 : $b7
	.db $ff                                                  ; $b815 : $ff
	bpl br_00_b7bf                                                  ; $b816 : $10, $a7

	.db $03                                                  ; $b818 : $03
	.db $00                                                  ; $b819 : $00
	ora ($ff, x)                                                  ; $b81a : $01, $ff
	clc                                                  ; $b81c : $18
	.db $a7                                                  ; $b81d : $a7
	.db $03                                                  ; $b81e : $03
	.db $00                                                  ; $b81f : $00
	.db $a3                                                  ; $b820 : $a3
	.db $ff                                                  ; $b821 : $ff
	bpl br_00_b7cb                                                  ; $b822 : $10, $a7

	.db $03                                                  ; $b824 : $03
	.db $00                                                  ; $b825 : $00
	ora ($ff, x)                                                  ; $b826 : $01, $ff
	.db $14                                                  ; $b828 : $14
	.db $b7                                                  ; $b829 : $b7
	and ($00, x)                                                  ; $b82a : $21, $00
	.db $89                                                  ; $b82c : $89
	.db $ff                                                  ; $b82d : $ff
	.db $14                                                  ; $b82e : $14
	.db $b7                                                  ; $b82f : $b7
	and ($00, x)                                                  ; $b830 : $21, $00
	sta $3cff, y                                                  ; $b832 : $99, $ff, $3c
	.db $b7                                                  ; $b835 : $b7
	and ($00, x)                                                  ; $b836 : $21, $00
	cmp $28ff                                                  ; $b838 : $cd, $ff, $28
	.db $b7                                                  ; $b83b : $b7
	and ($01, x)                                                  ; $b83c : $21, $01
	.db $03                                                  ; $b83e : $03
	.db $ff                                                  ; $b83f : $ff
	.db $14                                                  ; $b840 : $14
	.db $b7                                                  ; $b841 : $b7
	and ($01, x)                                                  ; $b842 : $21, $01
	.db $34                                                  ; $b844 : $34
	.db $ff                                                  ; $b845 : $ff
	.db $14                                                  ; $b846 : $14
	.db $b7                                                  ; $b847 : $b7
	and ($00, x)                                                  ; $b848 : $21, $00
	cmp $14ff                                                  ; $b84a : $cd, $ff, $14
	.db $b7                                                  ; $b84d : $b7
	and ($00, x)                                                  ; $b84e : $21, $00
	inc $ff                                                  ; $b850 : $e6, $ff
	.db $3c                                                  ; $b852 : $3c
	.db $b7                                                  ; $b853 : $b7
	and ($00, x)                                                  ; $b854 : $21, $00
	.db $c2                                                  ; $b856 : $c2
	.db $ff                                                  ; $b857 : $ff
	.db $14                                                  ; $b858 : $14
	.db $b7                                                  ; $b859 : $b7
	and ($00, x)                                                  ; $b85a : $21, $00
	ora ($ff, x)                                                  ; $b85c : $01, $ff
	.db $14                                                  ; $b85e : $14
	.db $b7                                                  ; $b85f : $b7
	and ($00, x)                                                  ; $b860 : $21, $00
	ldy $14ff                                                  ; $b862 : $ac, $ff, $14
	.db $b7                                                  ; $b865 : $b7
	and ($00, x)                                                  ; $b866 : $21, $00
	.db $c2                                                  ; $b868 : $c2
	.db $ff                                                  ; $b869 : $ff
	plp                                                  ; $b86a : $28
	.db $b7                                                  ; $b86b : $b7
	and ($00, x)                                                  ; $b86c : $21, $00
	cmp $14ff                                                  ; $b86e : $cd, $ff, $14
	.db $b7                                                  ; $b871 : $b7
	and ($00, x)                                                  ; $b872 : $21, $00
	inc $ff                                                  ; $b874 : $e6, $ff
	.db $14                                                  ; $b876 : $14
	.db $b7                                                  ; $b877 : $b7
	and ($01, x)                                                  ; $b878 : $21, $01
	.db $03                                                  ; $b87a : $03
	.db $ff                                                  ; $b87b : $ff
	plp                                                  ; $b87c : $28
	.db $b7                                                  ; $b87d : $b7
	and ($00, x)                                                  ; $b87e : $21, $00
	cmp $28ff                                                  ; $b880 : $cd, $ff, $28
	.db $b7                                                  ; $b883 : $b7
	and ($00, x)                                                  ; $b884 : $21, $00
	inc $ff                                                  ; $b886 : $e6, $ff
	sei                                                  ; $b888 : $78
	.db $b7                                                  ; $b889 : $b7
	and ($01, x)                                                  ; $b88a : $21, $01
	.db $34                                                  ; $b88c : $34
	.db $ff                                                  ; $b88d : $ff
	plp                                                  ; $b88e : $28
	.db $b7                                                  ; $b88f : $b7
	and ($00, x)                                                  ; $b890 : $21, $00
	ora ($ff, x)                                                  ; $b892 : $01, $ff
	.db $ff                                                  ; $b894 : $ff
	.db $14                                                  ; $b895 : $14
	.db $a7                                                  ; $b896 : $a7
	.db $03                                                  ; $b897 : $03
	.db $04                                                  ; $b898 : $04
	bne br_00_b89b                                                  ; $b899 : $d0, $00

br_00_b89b:
	.db $14                                                  ; $b89b : $14
	lda $03                                                  ; $b89c : $a5, $03
	ora ($34, x)                                                  ; $b89e : $01, $34
	.db $ff                                                  ; $b8a0 : $ff
	.db $14                                                  ; $b8a1 : $14
	.db $a7                                                  ; $b8a2 : $a7
	.db $03                                                  ; $b8a3 : $03
	ora ($03, x)                                                  ; $b8a4 : $01, $03
	.db $02                                                  ; $b8a6 : $02
	.db $14                                                  ; $b8a7 : $14
	lda $03                                                  ; $b8a8 : $a5, $03
	ora ($34, x)                                                  ; $b8aa : $01, $34
	.db $02                                                  ; $b8ac : $02
	.db $14                                                  ; $b8ad : $14
	.db $a7                                                  ; $b8ae : $a7
	.db $03                                                  ; $b8af : $03
	.db $03                                                  ; $b8b0 : $03
	.db $9b                                                  ; $b8b1 : $9b
	.db $00                                                  ; $b8b2 : $00
	.db $14                                                  ; $b8b3 : $14
	lda $03                                                  ; $b8b4 : $a5, $03
	ora ($59, x)                                                  ; $b8b6 : $01, $59
	.db $02                                                  ; $b8b8 : $02
	.db $14                                                  ; $b8b9 : $14
	.db $a7                                                  ; $b8ba : $a7
	.db $03                                                  ; $b8bb : $03
	ora ($12, x)                                                  ; $b8bc : $01, $12
	.db $00                                                  ; $b8be : $00
	.db $14                                                  ; $b8bf : $14
	lda $03                                                  ; $b8c0 : $a5, $03
	ora ($59, x)                                                  ; $b8c2 : $01, $59
	.db $02                                                  ; $b8c4 : $02
	.db $14                                                  ; $b8c5 : $14
	.db $a7                                                  ; $b8c6 : $a7
	.db $03                                                  ; $b8c7 : $03
	.db $03                                                  ; $b8c8 : $03
	rol $00, x                                                  ; $b8c9 : $36, $00
	.db $14                                                  ; $b8cb : $14
	lda $03                                                  ; $b8cc : $a5, $03
	ora ($34, x)                                                  ; $b8ce : $01, $34
	.db $ff                                                  ; $b8d0 : $ff
	.db $14                                                  ; $b8d1 : $14
	.db $a7                                                  ; $b8d2 : $a7
	.db $03                                                  ; $b8d3 : $03
	ora ($03, x)                                                  ; $b8d4 : $01, $03
	.db $02                                                  ; $b8d6 : $02
	.db $14                                                  ; $b8d7 : $14
	lda $03                                                  ; $b8d8 : $a5, $03
	ora ($34, x)                                                  ; $b8da : $01, $34
	.db $02                                                  ; $b8dc : $02
	.db $14                                                  ; $b8dd : $14
	.db $a7                                                  ; $b8de : $a7
	.db $03                                                  ; $b8df : $03
	.db $04                                                  ; $b8e0 : $04
	bne br_00_b8e3                                                  ; $b8e1 : $d0, $00

br_00_b8e3:
	.db $14                                                  ; $b8e3 : $14
	lda $03                                                  ; $b8e4 : $a5, $03
	ora ($34, x)                                                  ; $b8e6 : $01, $34
	.db $02                                                  ; $b8e8 : $02
	.db $14                                                  ; $b8e9 : $14
	.db $a7                                                  ; $b8ea : $a7
	.db $03                                                  ; $b8eb : $03
	ora ($03, x)                                                  ; $b8ec : $01, $03
	.db $00                                                  ; $b8ee : $00
	.db $14                                                  ; $b8ef : $14
	lda $03                                                  ; $b8f0 : $a5, $03
	ora ($34, x)                                                  ; $b8f2 : $01, $34
	.db $02                                                  ; $b8f4 : $02
	.db $14                                                  ; $b8f5 : $14
	.db $a7                                                  ; $b8f6 : $a7
	.db $03                                                  ; $b8f7 : $03
	.db $04                                                  ; $b8f8 : $04
	.db $0c                                                  ; $b8f9 : $0c
	.db $00                                                  ; $b8fa : $00
	.db $14                                                  ; $b8fb : $14
	lda $03                                                  ; $b8fc : $a5, $03
	ora ($59, x)                                                  ; $b8fe : $01, $59
	.db $ff                                                  ; $b900 : $ff
	.db $14                                                  ; $b901 : $14
	.db $a7                                                  ; $b902 : $a7
	.db $03                                                  ; $b903 : $03
	.db $00                                                  ; $b904 : $00
	cmp $1402                                                  ; $b905 : $cd, $02, $14
	lda $03                                                  ; $b908 : $a5, $03
	ora ($59, x)                                                  ; $b90a : $01, $59
	.db $02                                                  ; $b90c : $02
	.db $14                                                  ; $b90d : $14
	.db $a7                                                  ; $b90e : $a7
	.db $03                                                  ; $b90f : $03
	.db $03                                                  ; $b910 : $03
	.db $9b                                                  ; $b911 : $9b
	.db $00                                                  ; $b912 : $00
	.db $14                                                  ; $b913 : $14
	lda $03                                                  ; $b914 : $a5, $03
	ora ($34, x)                                                  ; $b916 : $01, $34
	.db $02                                                  ; $b918 : $02
	.db $14                                                  ; $b919 : $14
	.db $a7                                                  ; $b91a : $a7
	.db $23                                                  ; $b91b : $23
	ora ($84, x)                                                  ; $b91c : $01, $84
	.db $00                                                  ; $b91e : $00
	.db $14                                                  ; $b91f : $14
	lda $21                                                  ; $b920 : $a5, $21
	ora ($34, x)                                                  ; $b922 : $01, $34
	.db $02                                                  ; $b924 : $02
	.db $14                                                  ; $b925 : $14
	.db $a7                                                  ; $b926 : $a7
	and ($03, x)                                                  ; $b927 : $21, $03
	rol $00, x                                                  ; $b929 : $36, $00
	.db $14                                                  ; $b92b : $14
	lda $21                                                  ; $b92c : $a5, $21
	ora ($59, x)                                                  ; $b92e : $01, $59
	.db $ff                                                  ; $b930 : $ff
	.db $14                                                  ; $b931 : $14
	.db $a7                                                  ; $b932 : $a7
	and ($01, x)                                                  ; $b933 : $21, $01
	.db $03                                                  ; $b935 : $03
	.db $02                                                  ; $b936 : $02
	.db $14                                                  ; $b937 : $14
	lda $21                                                  ; $b938 : $a5, $21
	.db $00                                                  ; $b93a : $00
	cmp $2802                                                  ; $b93b : $cd, $02, $28
	.db $b7                                                  ; $b93e : $b7
	.db $03                                                  ; $b93f : $03
	.db $02                                                  ; $b940 : $02
	.db $dc                                                  ; $b941 : $dc
	.db $ff                                                  ; $b942 : $ff
	plp                                                  ; $b943 : $28
	.db $b7                                                  ; $b944 : $b7
	.db $03                                                  ; $b945 : $03
	.db $02                                                  ; $b946 : $02
	sty $14ff                                                  ; $b947 : $8c, $ff, $14
	.db $a7                                                  ; $b94a : $a7
	and ($02, x)                                                  ; $b94b : $21, $02
	bit $00                                                  ; $b94d : $24, $00
	.db $14                                                  ; $b94f : $14
	lda $21                                                  ; $b950 : $a5, $21
	.db $02                                                  ; $b952 : $02
	pla                                                  ; $b953 : $68
	.db $ff                                                  ; $b954 : $ff
	.db $14                                                  ; $b955 : $14
	.db $a7                                                  ; $b956 : $a7
	and ($03, x)                                                  ; $b957 : $21, $03
	rol $02, x                                                  ; $b959 : $36, $02
	.db $14                                                  ; $b95b : $14
	lda $21                                                  ; $b95c : $a5, $21
	.db $02                                                  ; $b95e : $02
	pla                                                  ; $b95f : $68
	.db $02                                                  ; $b960 : $02
	.db $14                                                  ; $b961 : $14
	.db $a7                                                  ; $b962 : $a7
	and ($04, x)                                                  ; $b963 : $21, $04
	bne br_00_b967                                                  ; $b965 : $d0, $00

br_00_b967:
	.db $14                                                  ; $b967 : $14
	lda $21                                                  ; $b968 : $a5, $21
	ora ($34, x)                                                  ; $b96a : $01, $34
	.db $02                                                  ; $b96c : $02
	.db $14                                                  ; $b96d : $14
	.db $a7                                                  ; $b96e : $a7
	and ($01, x)                                                  ; $b96f : $21, $01
	.db $03                                                  ; $b971 : $03
	.db $00                                                  ; $b972 : $00
	.db $14                                                  ; $b973 : $14
	lda $21                                                  ; $b974 : $a5, $21
	ora ($34, x)                                                  ; $b976 : $01, $34
	.db $02                                                  ; $b978 : $02
	.db $14                                                  ; $b979 : $14
	.db $a7                                                  ; $b97a : $a7
	and ($03, x)                                                  ; $b97b : $21, $03
	.db $9b                                                  ; $b97d : $9b
	.db $00                                                  ; $b97e : $00
	.db $14                                                  ; $b97f : $14
	lda $21                                                  ; $b980 : $a5, $21
	ora ($34, x)                                                  ; $b982 : $01, $34
	.db $ff                                                  ; $b984 : $ff
	.db $14                                                  ; $b985 : $14
	.db $a7                                                  ; $b986 : $a7
	and ($01, x)                                                  ; $b987 : $21, $01
	sty $02                                                  ; $b989 : $84, $02
	.db $14                                                  ; $b98b : $14
	lda $21                                                  ; $b98c : $a5, $21
	ora ($34, x)                                                  ; $b98e : $01, $34
	.db $02                                                  ; $b990 : $02
	.db $14                                                  ; $b991 : $14
	.db $a7                                                  ; $b992 : $a7
	and ($06, x)                                                  ; $b993 : $21, $06
	bpl br_00_b997                                                  ; $b995 : $10, $00

br_00_b997:
	.db $14                                                  ; $b997 : $14
	lda $21                                                  ; $b998 : $a5, $21
	.db $02                                                  ; $b99a : $02
	pla                                                  ; $b99b : $68
	.db $02                                                  ; $b99c : $02
	.db $14                                                  ; $b99d : $14
	.db $a7                                                  ; $b99e : $a7
	and ($03, x)                                                  ; $b99f : $21, $03
	.db $9b                                                  ; $b9a1 : $9b
	.db $00                                                  ; $b9a2 : $00
	.db $14                                                  ; $b9a3 : $14
	lda $21                                                  ; $b9a4 : $a5, $21
	ora ($84, x)                                                  ; $b9a6 : $01, $84
	.db $02                                                  ; $b9a8 : $02
	.db $14                                                  ; $b9a9 : $14
	.db $a7                                                  ; $b9aa : $a7
	and ($04, x)                                                  ; $b9ab : $21, $04
	bne br_00_b9af                                                  ; $b9ad : $d0, $00

br_00_b9af:
	.db $14                                                  ; $b9af : $14
	lda $21                                                  ; $b9b0 : $a5, $21
	ora ($34, x)                                                  ; $b9b2 : $01, $34
	.db $ff                                                  ; $b9b4 : $ff
	.db $14                                                  ; $b9b5 : $14
	.db $a7                                                  ; $b9b6 : $a7
	and ($01, x)                                                  ; $b9b7 : $21, $01
	.db $03                                                  ; $b9b9 : $03
	.db $02                                                  ; $b9ba : $02
	.db $14                                                  ; $b9bb : $14
	lda $21                                                  ; $b9bc : $a5, $21
	ora ($34, x)                                                  ; $b9be : $01, $34
	.db $02                                                  ; $b9c0 : $02
	.db $14                                                  ; $b9c1 : $14
	.db $a7                                                  ; $b9c2 : $a7
	and ($03, x)                                                  ; $b9c3 : $21, $03
	rol $00, x                                                  ; $b9c5 : $36, $00
	.db $14                                                  ; $b9c7 : $14
	lda $21                                                  ; $b9c8 : $a5, $21
	ora ($34, x)                                                  ; $b9ca : $01, $34
	.db $02                                                  ; $b9cc : $02
	.db $14                                                  ; $b9cd : $14
	.db $a7                                                  ; $b9ce : $a7
	and ($03, x)                                                  ; $b9cf : $21, $03
	.db $9b                                                  ; $b9d1 : $9b
	.db $00                                                  ; $b9d2 : $00
	.db $14                                                  ; $b9d3 : $14
	lda $21                                                  ; $b9d4 : $a5, $21
	ora ($34, x)                                                  ; $b9d6 : $01, $34
	.db $02                                                  ; $b9d8 : $02
	.db $14                                                  ; $b9d9 : $14
	.db $a7                                                  ; $b9da : $a7
	and ($04, x)                                                  ; $b9db : $21, $04
	bne br_00_b9df                                                  ; $b9dd : $d0, $00

br_00_b9df:
	.db $14                                                  ; $b9df : $14
	lda $21                                                  ; $b9e0 : $a5, $21
	ora ($34, x)                                                  ; $b9e2 : $01, $34
	.db $ff                                                  ; $b9e4 : $ff
	.db $14                                                  ; $b9e5 : $14
	.db $a7                                                  ; $b9e6 : $a7
	and ($01, x)                                                  ; $b9e7 : $21, $01
	.db $03                                                  ; $b9e9 : $03
	.db $02                                                  ; $b9ea : $02
	.db $14                                                  ; $b9eb : $14
	lda $21                                                  ; $b9ec : $a5, $21
	ora ($34, x)                                                  ; $b9ee : $01, $34
	.db $02                                                  ; $b9f0 : $02
	plp                                                  ; $b9f1 : $28
	.db $b7                                                  ; $b9f2 : $b7
	.db $03                                                  ; $b9f3 : $03
	ora ($6e, x)                                                  ; $b9f4 : $01, $6e
	.db $ff                                                  ; $b9f6 : $ff
	plp                                                  ; $b9f7 : $28
	lda $03, x                                                  ; $b9f8 : $b5, $03
	ora ($46, x)                                                  ; $b9fa : $01, $46
	.db $ff                                                  ; $b9fc : $ff
	.db $14                                                  ; $b9fd : $14
	.db $a7                                                  ; $b9fe : $a7
	and ($02, x)                                                  ; $b9ff : $21, $02
	bit $00                                                  ; $ba01 : $24, $00
	.db $14                                                  ; $ba03 : $14
	lda $21                                                  ; $ba04 : $a5, $21
	.db $02                                                  ; $ba06 : $02
	pla                                                  ; $ba07 : $68
	.db $ff                                                  ; $ba08 : $ff
	.db $14                                                  ; $ba09 : $14
	.db $a7                                                  ; $ba0a : $a7
	and ($03, x)                                                  ; $ba0b : $21, $03
	rol $02, x                                                  ; $ba0d : $36, $02
	.db $14                                                  ; $ba0f : $14
	lda $21                                                  ; $ba10 : $a5, $21
	.db $02                                                  ; $ba12 : $02
	pla                                                  ; $ba13 : $68
	.db $02                                                  ; $ba14 : $02
	.db $14                                                  ; $ba15 : $14
	.db $a7                                                  ; $ba16 : $a7
	and ($04, x)                                                  ; $ba17 : $21, $04
	bne br_00_ba1b                                                  ; $ba19 : $d0, $00

br_00_ba1b:
	.db $14                                                  ; $ba1b : $14
	lda $21                                                  ; $ba1c : $a5, $21
	ora ($34, x)                                                  ; $ba1e : $01, $34
	.db $02                                                  ; $ba20 : $02
	.db $14                                                  ; $ba21 : $14
	.db $a7                                                  ; $ba22 : $a7
	and ($01, x)                                                  ; $ba23 : $21, $01
	.db $03                                                  ; $ba25 : $03
	.db $00                                                  ; $ba26 : $00
	.db $14                                                  ; $ba27 : $14
	.db $a7                                                  ; $ba28 : $a7
	and ($01, x)                                                  ; $ba29 : $21, $01
	.db $34                                                  ; $ba2b : $34
	.db $02                                                  ; $ba2c : $02
	.db $14                                                  ; $ba2d : $14
	lda $21                                                  ; $ba2e : $a5, $21
	.db $03                                                  ; $ba30 : $03
	.db $9b                                                  ; $ba31 : $9b
	.db $00                                                  ; $ba32 : $00
	.db $14                                                  ; $ba33 : $14
	.db $a7                                                  ; $ba34 : $a7
	and ($01, x)                                                  ; $ba35 : $21, $01
	.db $34                                                  ; $ba37 : $34
	.db $ff                                                  ; $ba38 : $ff
	.db $14                                                  ; $ba39 : $14
	lda $21                                                  ; $ba3a : $a5, $21
	ora ($84, x)                                                  ; $ba3c : $01, $84
	.db $02                                                  ; $ba3e : $02
	.db $14                                                  ; $ba3f : $14
	.db $a7                                                  ; $ba40 : $a7
	and ($01, x)                                                  ; $ba41 : $21, $01
	.db $34                                                  ; $ba43 : $34
	.db $02                                                  ; $ba44 : $02
	.db $14                                                  ; $ba45 : $14
	lda $21                                                  ; $ba46 : $a5, $21
	asl $10                                                  ; $ba48 : $06, $10
	.db $00                                                  ; $ba4a : $00
	.db $14                                                  ; $ba4b : $14
	.db $a7                                                  ; $ba4c : $a7
	and ($02, x)                                                  ; $ba4d : $21, $02
	pla                                                  ; $ba4f : $68
	.db $02                                                  ; $ba50 : $02
	.db $14                                                  ; $ba51 : $14
	lda $21                                                  ; $ba52 : $a5, $21
	.db $03                                                  ; $ba54 : $03
	.db $9b                                                  ; $ba55 : $9b
	.db $00                                                  ; $ba56 : $00
	.db $14                                                  ; $ba57 : $14
	.db $a7                                                  ; $ba58 : $a7
	and ($01, x)                                                  ; $ba59 : $21, $01
	sty $02                                                  ; $ba5b : $84, $02
	.db $14                                                  ; $ba5d : $14
	lda $21                                                  ; $ba5e : $a5, $21
	.db $04                                                  ; $ba60 : $04
	bne br_00_ba63                                                  ; $ba61 : $d0, $00

br_00_ba63:
	.db $14                                                  ; $ba63 : $14
	.db $a7                                                  ; $ba64 : $a7
	and ($01, x)                                                  ; $ba65 : $21, $01
	.db $34                                                  ; $ba67 : $34
	.db $ff                                                  ; $ba68 : $ff
	.db $14                                                  ; $ba69 : $14
	lda $21                                                  ; $ba6a : $a5, $21
	ora ($03, x)                                                  ; $ba6c : $01, $03
	.db $02                                                  ; $ba6e : $02
	.db $14                                                  ; $ba6f : $14
	.db $a7                                                  ; $ba70 : $a7
	and ($01, x)                                                  ; $ba71 : $21, $01
	.db $34                                                  ; $ba73 : $34
	.db $02                                                  ; $ba74 : $02
	.db $14                                                  ; $ba75 : $14
	lda $21                                                  ; $ba76 : $a5, $21
	.db $03                                                  ; $ba78 : $03
	rol $00, x                                                  ; $ba79 : $36, $00
	.db $14                                                  ; $ba7b : $14
	.db $a7                                                  ; $ba7c : $a7
	and ($01, x)                                                  ; $ba7d : $21, $01
	.db $34                                                  ; $ba7f : $34
	.db $02                                                  ; $ba80 : $02
	.db $14                                                  ; $ba81 : $14
	lda $21                                                  ; $ba82 : $a5, $21
	.db $03                                                  ; $ba84 : $03
	.db $9b                                                  ; $ba85 : $9b
	.db $00                                                  ; $ba86 : $00
	.db $14                                                  ; $ba87 : $14
	.db $a7                                                  ; $ba88 : $a7
	and ($01, x)                                                  ; $ba89 : $21, $01
	.db $34                                                  ; $ba8b : $34
	.db $02                                                  ; $ba8c : $02
	.db $14                                                  ; $ba8d : $14
	lda $21                                                  ; $ba8e : $a5, $21
	.db $04                                                  ; $ba90 : $04
	bne br_00_ba93                                                  ; $ba91 : $d0, $00

br_00_ba93:
	.db $14                                                  ; $ba93 : $14
	.db $a7                                                  ; $ba94 : $a7
	and ($01, x)                                                  ; $ba95 : $21, $01
	.db $34                                                  ; $ba97 : $34
	.db $ff                                                  ; $ba98 : $ff
	.db $14                                                  ; $ba99 : $14
	lda $21                                                  ; $ba9a : $a5, $21
	ora ($03, x)                                                  ; $ba9c : $01, $03
	.db $02                                                  ; $ba9e : $02
	.db $14                                                  ; $ba9f : $14
	.db $a7                                                  ; $baa0 : $a7
	and ($01, x)                                                  ; $baa1 : $21, $01
	.db $34                                                  ; $baa3 : $34
	.db $02                                                  ; $baa4 : $02
	.db $14                                                  ; $baa5 : $14
	lda $21, x                                                  ; $baa6 : $b5, $21
	.db $04                                                  ; $baa8 : $04
	bne br_00_baab                                                  ; $baa9 : $d0, $00

br_00_baab:
	.db $14                                                  ; $baab : $14
	lda $21, x                                                  ; $baac : $b5, $21
	ora ($34, x)                                                  ; $baae : $01, $34
	.db $ff                                                  ; $bab0 : $ff
	.db $14                                                  ; $bab1 : $14
	lda $21, x                                                  ; $bab2 : $b5, $21
	ora ($03, x)                                                  ; $bab4 : $01, $03
	.db $02                                                  ; $bab6 : $02
	.db $14                                                  ; $bab7 : $14
	lda $21, x                                                  ; $bab8 : $b5, $21
	ora ($34, x)                                                  ; $baba : $01, $34
	.db $02                                                  ; $babc : $02
	.db $14                                                  ; $babd : $14
	lda $21, x                                                  ; $babe : $b5, $21
	.db $03                                                  ; $bac0 : $03
	.db $9b                                                  ; $bac1 : $9b
	.db $00                                                  ; $bac2 : $00
	.db $14                                                  ; $bac3 : $14
	lda $21, x                                                  ; $bac4 : $b5, $21
	ora ($59, x)                                                  ; $bac6 : $01, $59
	.db $02                                                  ; $bac8 : $02
	.db $14                                                  ; $bac9 : $14
	lda $21, x                                                  ; $baca : $b5, $21
	ora ($12, x)                                                  ; $bacc : $01, $12
	.db $00                                                  ; $bace : $00
	.db $14                                                  ; $bacf : $14
	lda $21, x                                                  ; $bad0 : $b5, $21
	ora ($59, x)                                                  ; $bad2 : $01, $59
	.db $02                                                  ; $bad4 : $02
	.db $14                                                  ; $bad5 : $14
	lda $21, x                                                  ; $bad6 : $b5, $21
	.db $03                                                  ; $bad8 : $03
	rol $00, x                                                  ; $bad9 : $36, $00
	.db $14                                                  ; $badb : $14
	lda $21, x                                                  ; $badc : $b5, $21
	ora ($34, x)                                                  ; $bade : $01, $34
	.db $ff                                                  ; $bae0 : $ff
	.db $14                                                  ; $bae1 : $14
	lda $21, x                                                  ; $bae2 : $b5, $21
	ora ($03, x)                                                  ; $bae4 : $01, $03
	.db $02                                                  ; $bae6 : $02
	.db $14                                                  ; $bae7 : $14
	lda $21, x                                                  ; $bae8 : $b5, $21
	ora ($34, x)                                                  ; $baea : $01, $34
	.db $02                                                  ; $baec : $02
	.db $14                                                  ; $baed : $14
	lda $21, x                                                  ; $baee : $b5, $21
	.db $04                                                  ; $baf0 : $04
	bne br_00_baf3                                                  ; $baf1 : $d0, $00

br_00_baf3:
	.db $14                                                  ; $baf3 : $14
	lda $21, x                                                  ; $baf4 : $b5, $21
	ora ($34, x)                                                  ; $baf6 : $01, $34
	.db $02                                                  ; $baf8 : $02
	.db $14                                                  ; $baf9 : $14
	lda $21, x                                                  ; $bafa : $b5, $21
	ora ($03, x)                                                  ; $bafc : $01, $03
	.db $00                                                  ; $bafe : $00
	.db $14                                                  ; $baff : $14
	lda $21, x                                                  ; $bb00 : $b5, $21
	ora ($34, x)                                                  ; $bb02 : $01, $34
	.db $02                                                  ; $bb04 : $02
	.db $14                                                  ; $bb05 : $14
	lda $21, x                                                  ; $bb06 : $b5, $21
	.db $04                                                  ; $bb08 : $04
	.db $0c                                                  ; $bb09 : $0c
	.db $00                                                  ; $bb0a : $00
	.db $14                                                  ; $bb0b : $14
	lda $21, x                                                  ; $bb0c : $b5, $21
	ora ($59, x)                                                  ; $bb0e : $01, $59
	.db $ff                                                  ; $bb10 : $ff
	.db $14                                                  ; $bb11 : $14
	lda $21, x                                                  ; $bb12 : $b5, $21
	.db $00                                                  ; $bb14 : $00
	cmp $1402                                                  ; $bb15 : $cd, $02, $14
	lda $21, x                                                  ; $bb18 : $b5, $21
	ora ($59, x)                                                  ; $bb1a : $01, $59
	.db $02                                                  ; $bb1c : $02
	.db $14                                                  ; $bb1d : $14
	lda $21, x                                                  ; $bb1e : $b5, $21
	.db $03                                                  ; $bb20 : $03
	.db $9b                                                  ; $bb21 : $9b
	.db $00                                                  ; $bb22 : $00
	.db $14                                                  ; $bb23 : $14
	lda $21, x                                                  ; $bb24 : $b5, $21
	ora ($34, x)                                                  ; $bb26 : $01, $34
	.db $02                                                  ; $bb28 : $02
	.db $14                                                  ; $bb29 : $14
	lda $21, x                                                  ; $bb2a : $b5, $21
	ora ($84, x)                                                  ; $bb2c : $01, $84
	.db $00                                                  ; $bb2e : $00
	.db $14                                                  ; $bb2f : $14
	lda $21, x                                                  ; $bb30 : $b5, $21
	ora ($34, x)                                                  ; $bb32 : $01, $34
	.db $02                                                  ; $bb34 : $02
	.db $14                                                  ; $bb35 : $14
	clv                                                  ; $bb36 : $b8
	and ($03, x)                                                  ; $bb37 : $21, $03
	rol $00, x                                                  ; $bb39 : $36, $00
	.db $14                                                  ; $bb3b : $14
	clv                                                  ; $bb3c : $b8
	and ($01, x)                                                  ; $bb3d : $21, $01
	eor $14ff, y                                                  ; $bb3f : $59, $ff, $14
	clv                                                  ; $bb42 : $b8
	and ($01, x)                                                  ; $bb43 : $21, $01
	.db $03                                                  ; $bb45 : $03
	.db $02                                                  ; $bb46 : $02
	.db $14                                                  ; $bb47 : $14
	lda $21, x                                                  ; $bb48 : $b5, $21
	.db $00                                                  ; $bb4a : $00
	cmp $2802                                                  ; $bb4b : $cd, $02, $28
	lda $03, x                                                  ; $bb4e : $b5, $03
	.db $02                                                  ; $bb50 : $02
	.db $dc                                                  ; $bb51 : $dc
	.db $ff                                                  ; $bb52 : $ff
	plp                                                  ; $bb53 : $28
	lda $03, x                                                  ; $bb54 : $b5, $03
	.db $02                                                  ; $bb56 : $02
	sty $14ff                                                  ; $bb57 : $8c, $ff, $14
	lda $21, x                                                  ; $bb5a : $b5, $21
	.db $02                                                  ; $bb5c : $02
	bit $00                                                  ; $bb5d : $24, $00
	.db $14                                                  ; $bb5f : $14
	lda $21, x                                                  ; $bb60 : $b5, $21
	.db $02                                                  ; $bb62 : $02
	pla                                                  ; $bb63 : $68
	.db $ff                                                  ; $bb64 : $ff
	.db $14                                                  ; $bb65 : $14
	lda $21, x                                                  ; $bb66 : $b5, $21
	.db $03                                                  ; $bb68 : $03
	rol $02, x                                                  ; $bb69 : $36, $02
	.db $14                                                  ; $bb6b : $14
	lda $21, x                                                  ; $bb6c : $b5, $21
	.db $02                                                  ; $bb6e : $02
	pla                                                  ; $bb6f : $68
	.db $02                                                  ; $bb70 : $02
	.db $14                                                  ; $bb71 : $14
	lda $21, x                                                  ; $bb72 : $b5, $21
	.db $04                                                  ; $bb74 : $04
	bne br_00_bb77                                                  ; $bb75 : $d0, $00

br_00_bb77:
	.db $14                                                  ; $bb77 : $14
	lda $21, x                                                  ; $bb78 : $b5, $21
	ora ($34, x)                                                  ; $bb7a : $01, $34
	.db $02                                                  ; $bb7c : $02
	.db $14                                                  ; $bb7d : $14
	lda $21, x                                                  ; $bb7e : $b5, $21
	ora ($03, x)                                                  ; $bb80 : $01, $03
	.db $00                                                  ; $bb82 : $00
	.db $14                                                  ; $bb83 : $14
	lda $21, x                                                  ; $bb84 : $b5, $21
	ora ($34, x)                                                  ; $bb86 : $01, $34
	.db $02                                                  ; $bb88 : $02
	.db $14                                                  ; $bb89 : $14
	lda $21, x                                                  ; $bb8a : $b5, $21
	ora ($cd, x)                                                  ; $bb8c : $01, $cd
	.db $00                                                  ; $bb8e : $00
	.db $14                                                  ; $bb8f : $14
	lda $21, x                                                  ; $bb90 : $b5, $21
	.db $02                                                  ; $bb92 : $02
	pla                                                  ; $bb93 : $68
	.db $ff                                                  ; $bb94 : $ff
	.db $14                                                  ; $bb95 : $14
	lda $21, x                                                  ; $bb96 : $b5, $21
	.db $02                                                  ; $bb98 : $02
	asl $02                                                  ; $bb99 : $06, $02
	.db $14                                                  ; $bb9b : $14
	lda $21, x                                                  ; $bb9c : $b5, $21
	.db $02                                                  ; $bb9e : $02
	bit $02                                                  ; $bb9f : $24, $02
	.db $14                                                  ; $bba1 : $14
	lda $21, x                                                  ; $bba2 : $b5, $21
	ora ($cd, x)                                                  ; $bba4 : $01, $cd
	.db $00                                                  ; $bba6 : $00
	.db $14                                                  ; $bba7 : $14
	lda $21, x                                                  ; $bba8 : $b5, $21
	ora ($9a, x)                                                  ; $bbaa : $01, $9a
	.db $02                                                  ; $bbac : $02
	.db $14                                                  ; $bbad : $14
	lda $21, x                                                  ; $bbae : $b5, $21
	ora ($59, x)                                                  ; $bbb0 : $01, $59
	.db $00                                                  ; $bbb2 : $00
	.db $14                                                  ; $bbb3 : $14
	lda $21, x                                                  ; $bbb4 : $b5, $21
	ora ($84, x)                                                  ; $bbb6 : $01, $84
	.db $02                                                  ; $bbb8 : $02
	.db $14                                                  ; $bbb9 : $14
	lda $21, x                                                  ; $bbba : $b5, $21
	.db $04                                                  ; $bbbc : $04
	bne br_00_bbbf                                                  ; $bbbd : $d0, $00

br_00_bbbf:
	.db $14                                                  ; $bbbf : $14
	lda $21, x                                                  ; $bbc0 : $b5, $21
	.db $02                                                  ; $bbc2 : $02
	pla                                                  ; $bbc3 : $68
	.db $ff                                                  ; $bbc4 : $ff
	.db $14                                                  ; $bbc5 : $14
	lda $21, x                                                  ; $bbc6 : $b5, $21
	ora ($cd, x)                                                  ; $bbc8 : $01, $cd
	.db $02                                                  ; $bbca : $02
	.db $14                                                  ; $bbcb : $14
	lda $21, x                                                  ; $bbcc : $b5, $21
	.db $02                                                  ; $bbce : $02
	asl $02                                                  ; $bbcf : $06, $02
	.db $14                                                  ; $bbd1 : $14
	lda $21, x                                                  ; $bbd2 : $b5, $21
	.db $04                                                  ; $bbd4 : $04
	bne br_00_bbd7                                                  ; $bbd5 : $d0, $00

br_00_bbd7:
	.db $14                                                  ; $bbd7 : $14
	lda $21, x                                                  ; $bbd8 : $b5, $21
	.db $02                                                  ; $bbda : $02
	bit $02                                                  ; $bbdb : $24, $02
	.db $14                                                  ; $bbdd : $14
	lda $21, x                                                  ; $bbde : $b5, $21
	ora ($cd, x)                                                  ; $bbe0 : $01, $cd
	.db $00                                                  ; $bbe2 : $00
	.db $14                                                  ; $bbe3 : $14
	lda $21, x                                                  ; $bbe4 : $b5, $21
	.db $02                                                  ; $bbe6 : $02
	asl $02                                                  ; $bbe7 : $06, $02
	.db $14                                                  ; $bbe9 : $14
	lda $21, x                                                  ; $bbea : $b5, $21
	.db $04                                                  ; $bbec : $04
	bne br_00_bbef                                                  ; $bbed : $d0, $00

br_00_bbef:
	.db $14                                                  ; $bbef : $14
	lda $21, x                                                  ; $bbf0 : $b5, $21
	.db $02                                                  ; $bbf2 : $02
	pla                                                  ; $bbf3 : $68
	.db $ff                                                  ; $bbf4 : $ff
	.db $14                                                  ; $bbf5 : $14
	lda $21, x                                                  ; $bbf6 : $b5, $21
	ora ($03, x)                                                  ; $bbf8 : $01, $03
	.db $02                                                  ; $bbfa : $02
	.db $14                                                  ; $bbfb : $14
	lda $21, x                                                  ; $bbfc : $b5, $21
	ora ($34, x)                                                  ; $bbfe : $01, $34
	.db $02                                                  ; $bc00 : $02
	plp                                                  ; $bc01 : $28
	.db $b7                                                  ; $bc02 : $b7
	.db $03                                                  ; $bc03 : $03
	.db $02                                                  ; $bc04 : $02
	.db $dc                                                  ; $bc05 : $dc
	.db $ff                                                  ; $bc06 : $ff
	plp                                                  ; $bc07 : $28
	.db $b7                                                  ; $bc08 : $b7
	.db $03                                                  ; $bc09 : $03
	.db $02                                                  ; $bc0a : $02
	sty $14ff                                                  ; $bc0b : $8c, $ff, $14
	.db $a7                                                  ; $bc0e : $a7
	and ($02, x)                                                  ; $bc0f : $21, $02
	bit $00                                                  ; $bc11 : $24, $00
	.db $14                                                  ; $bc13 : $14
	.db $a7                                                  ; $bc14 : $a7
	and ($02, x)                                                  ; $bc15 : $21, $02
	pla                                                  ; $bc17 : $68
	.db $ff                                                  ; $bc18 : $ff
	.db $14                                                  ; $bc19 : $14
	.db $a7                                                  ; $bc1a : $a7
	and ($03, x)                                                  ; $bc1b : $21, $03
	rol $02, x                                                  ; $bc1d : $36, $02
	.db $14                                                  ; $bc1f : $14
	.db $a7                                                  ; $bc20 : $a7
	and ($02, x)                                                  ; $bc21 : $21, $02
	pla                                                  ; $bc23 : $68
	.db $02                                                  ; $bc24 : $02
	.db $14                                                  ; $bc25 : $14
	.db $a7                                                  ; $bc26 : $a7
	and ($04, x)                                                  ; $bc27 : $21, $04
	bne br_00_bc2b                                                  ; $bc29 : $d0, $00

br_00_bc2b:
	.db $14                                                  ; $bc2b : $14
	.db $a7                                                  ; $bc2c : $a7
	and ($01, x)                                                  ; $bc2d : $21, $01
	.db $34                                                  ; $bc2f : $34
	.db $02                                                  ; $bc30 : $02
	.db $14                                                  ; $bc31 : $14
	.db $a7                                                  ; $bc32 : $a7
	and ($01, x)                                                  ; $bc33 : $21, $01
	.db $03                                                  ; $bc35 : $03
	.db $00                                                  ; $bc36 : $00
	.db $14                                                  ; $bc37 : $14
	.db $a7                                                  ; $bc38 : $a7
	and ($01, x)                                                  ; $bc39 : $21, $01
	.db $34                                                  ; $bc3b : $34
	.db $02                                                  ; $bc3c : $02
	.db $14                                                  ; $bc3d : $14
	.db $a7                                                  ; $bc3e : $a7
	and ($03, x)                                                  ; $bc3f : $21, $03
	.db $9b                                                  ; $bc41 : $9b
	.db $00                                                  ; $bc42 : $00
	.db $14                                                  ; $bc43 : $14
	.db $a7                                                  ; $bc44 : $a7
	and ($01, x)                                                  ; $bc45 : $21, $01
	.db $34                                                  ; $bc47 : $34
	.db $ff                                                  ; $bc48 : $ff
	.db $14                                                  ; $bc49 : $14
	.db $a7                                                  ; $bc4a : $a7
	and ($01, x)                                                  ; $bc4b : $21, $01
	sty $02                                                  ; $bc4d : $84, $02
	.db $14                                                  ; $bc4f : $14
	.db $a7                                                  ; $bc50 : $a7
	and ($01, x)                                                  ; $bc51 : $21, $01
	.db $34                                                  ; $bc53 : $34
	.db $02                                                  ; $bc54 : $02
	.db $14                                                  ; $bc55 : $14
	.db $a7                                                  ; $bc56 : $a7
	and ($06, x)                                                  ; $bc57 : $21, $06
	bpl br_00_bc5b                                                  ; $bc59 : $10, $00

br_00_bc5b:
	.db $14                                                  ; $bc5b : $14
	.db $a7                                                  ; $bc5c : $a7
	and ($02, x)                                                  ; $bc5d : $21, $02
	pla                                                  ; $bc5f : $68
	.db $02                                                  ; $bc60 : $02
	.db $14                                                  ; $bc61 : $14
	.db $a7                                                  ; $bc62 : $a7
	and ($03, x)                                                  ; $bc63 : $21, $03
	.db $9b                                                  ; $bc65 : $9b
	.db $00                                                  ; $bc66 : $00
	.db $14                                                  ; $bc67 : $14
	.db $a7                                                  ; $bc68 : $a7
	and ($01, x)                                                  ; $bc69 : $21, $01
	sty $02                                                  ; $bc6b : $84, $02
	.db $14                                                  ; $bc6d : $14
	.db $a7                                                  ; $bc6e : $a7
	and ($04, x)                                                  ; $bc6f : $21, $04
	bne br_00_bc73                                                  ; $bc71 : $d0, $00

br_00_bc73:
	.db $14                                                  ; $bc73 : $14
	.db $a7                                                  ; $bc74 : $a7
	and ($01, x)                                                  ; $bc75 : $21, $01
	.db $34                                                  ; $bc77 : $34
	.db $ff                                                  ; $bc78 : $ff
	.db $14                                                  ; $bc79 : $14
	.db $a7                                                  ; $bc7a : $a7
	and ($01, x)                                                  ; $bc7b : $21, $01
	.db $03                                                  ; $bc7d : $03
	.db $02                                                  ; $bc7e : $02
	.db $14                                                  ; $bc7f : $14
	.db $a7                                                  ; $bc80 : $a7
	and ($01, x)                                                  ; $bc81 : $21, $01
	.db $34                                                  ; $bc83 : $34
	.db $02                                                  ; $bc84 : $02
	.db $14                                                  ; $bc85 : $14
	.db $a7                                                  ; $bc86 : $a7
	and ($03, x)                                                  ; $bc87 : $21, $03
	rol $00, x                                                  ; $bc89 : $36, $00
	.db $14                                                  ; $bc8b : $14
	.db $a7                                                  ; $bc8c : $a7
	and ($01, x)                                                  ; $bc8d : $21, $01
	.db $34                                                  ; $bc8f : $34
	.db $02                                                  ; $bc90 : $02
	.db $14                                                  ; $bc91 : $14
	.db $a7                                                  ; $bc92 : $a7
	and ($03, x)                                                  ; $bc93 : $21, $03
	.db $9b                                                  ; $bc95 : $9b
	.db $00                                                  ; $bc96 : $00
	.db $14                                                  ; $bc97 : $14
	.db $a7                                                  ; $bc98 : $a7
	and ($01, x)                                                  ; $bc99 : $21, $01
	.db $34                                                  ; $bc9b : $34
	.db $02                                                  ; $bc9c : $02
	.db $14                                                  ; $bc9d : $14
	.db $a7                                                  ; $bc9e : $a7
	and ($04, x)                                                  ; $bc9f : $21, $04
	bne br_00_bca3                                                  ; $bca1 : $d0, $00

br_00_bca3:
	.db $14                                                  ; $bca3 : $14
	.db $a7                                                  ; $bca4 : $a7
	and ($01, x)                                                  ; $bca5 : $21, $01
	.db $34                                                  ; $bca7 : $34
	.db $ff                                                  ; $bca8 : $ff
	.db $14                                                  ; $bca9 : $14
	.db $a7                                                  ; $bcaa : $a7
	and ($01, x)                                                  ; $bcab : $21, $01
	.db $03                                                  ; $bcad : $03
	.db $02                                                  ; $bcae : $02
	.db $14                                                  ; $bcaf : $14
	.db $a7                                                  ; $bcb0 : $a7
	and ($01, x)                                                  ; $bcb1 : $21, $01
	.db $12                                                  ; $bcb3 : $12
	.db $02                                                  ; $bcb4 : $02
	clc                                                  ; $bcb5 : $18
	.db $a7                                                  ; $bcb6 : $a7
	and ($01, x)                                                  ; $bcb7 : $21, $01
	.db $34                                                  ; $bcb9 : $34
	.db $02                                                  ; $bcba : $02
	sec                                                  ; $bcbb : $38
	.db $a7                                                  ; $bcbc : $a7
	and ($00, x)                                                  ; $bcbd : $21, $00
	ora ($ff, x)                                                  ; $bcbf : $01, $ff
	.db $ff                                                  ; $bcc1 : $ff
	.db $12                                                  ; $bcc2 : $12
	.db $b7                                                  ; $bcc3 : $b7
	.db $03                                                  ; $bcc4 : $03
	ora ($22, x)                                                  ; $bcc5 : $01, $22
	.db $ff                                                  ; $bcc7 : $ff
	.db $12                                                  ; $bcc8 : $12
	.db $b7                                                  ; $bcc9 : $b7
	.db $03                                                  ; $bcca : $03
	.db $00                                                  ; $bccb : $00
	inc $ff                                                  ; $bccc : $e6, $ff
	.db $12                                                  ; $bcce : $12
	.db $b7                                                  ; $bccf : $b7
	.db $03                                                  ; $bcd0 : $03
	ora ($03, x)                                                  ; $bcd1 : $01, $03
	.db $ff                                                  ; $bcd3 : $ff
	.db $12                                                  ; $bcd4 : $12
	.db $b7                                                  ; $bcd5 : $b7
	.db $03                                                  ; $bcd6 : $03
	.db $00                                                  ; $bcd7 : $00
	ldy $12ff                                                  ; $bcd8 : $ac, $ff, $12
	.db $b7                                                  ; $bcdb : $b7
	.db $03                                                  ; $bcdc : $03
	.db $00                                                  ; $bcdd : $00
	.db $c2                                                  ; $bcde : $c2
	.db $ff                                                  ; $bcdf : $ff
	ldx #$b7                                                  ; $bce0 : $a2, $b7
	.db $03                                                  ; $bce2 : $03
	.db $00                                                  ; $bce3 : $00
	inc $ff                                                  ; $bce4 : $e6, $ff
	bit $b7                                                  ; $bce6 : $24, $b7
	.db $03                                                  ; $bce8 : $03
	.db $00                                                  ; $bce9 : $00
	ora ($ff, x)                                                  ; $bcea : $01, $ff
	jmp ($03b5)                                                  ; $bcec : $6c, $b5, $03


	.db $00                                                  ; $bcef : $00
	.db $c2                                                  ; $bcf0 : $c2
	.db $ff                                                  ; $bcf1 : $ff
	.db $12                                                  ; $bcf2 : $12
	.db $b7                                                  ; $bcf3 : $b7
	.db $03                                                  ; $bcf4 : $03
	.db $00                                                  ; $bcf5 : $00
	ora ($ff, x)                                                  ; $bcf6 : $01, $ff
	ora #$b7                                                  ; $bcf8 : $09, $b7
	.db $03                                                  ; $bcfa : $03
	.db $00                                                  ; $bcfb : $00
	.db $c2                                                  ; $bcfc : $c2
	.db $ff                                                  ; $bcfd : $ff
	ora #$b7                                                  ; $bcfe : $09, $b7
	.db $03                                                  ; $bd00 : $03
	.db $00                                                  ; $bd01 : $00
	ldy $6cff                                                  ; $bd02 : $ac, $ff, $6c
	.db $b7                                                  ; $bd05 : $b7
	.db $03                                                  ; $bd06 : $03
	.db $00                                                  ; $bd07 : $00
	.db $c2                                                  ; $bd08 : $c2
	.db $ff                                                  ; $bd09 : $ff
	.db $02                                                  ; $bd0a : $02
	.db $b7                                                  ; $bd0b : $b7
	.db $03                                                  ; $bd0c : $03
	.db $02                                                  ; $bd0d : $02
	eor $ff                                                  ; $bd0e : $45, $ff
	.db $04                                                  ; $bd10 : $04
	.db $b7                                                  ; $bd11 : $b7
	.db $03                                                  ; $bd12 : $03
	.db $02                                                  ; $bd13 : $02
	.db $b3                                                  ; $bd14 : $b3
	.db $ff                                                  ; $bd15 : $ff
	asl $03b7, x                                                  ; $bd16 : $1e, $b7, $03
	.db $03                                                  ; $bd19 : $03
	php                                                  ; $bd1a : $08
	.db $ff                                                  ; $bd1b : $ff
	rol $b7, x                                                  ; $bd1c : $36, $b7
	.db $03                                                  ; $bd1e : $03
	.db $00                                                  ; $bd1f : $00
	inc $ff                                                  ; $bd20 : $e6, $ff
	.db $12                                                  ; $bd22 : $12
	.db $b7                                                  ; $bd23 : $b7
	.db $03                                                  ; $bd24 : $03
	.db $00                                                  ; $bd25 : $00
	.db $c2                                                  ; $bd26 : $c2
	.db $ff                                                  ; $bd27 : $ff
	.db $12                                                  ; $bd28 : $12
	.db $b7                                                  ; $bd29 : $b7
	.db $03                                                  ; $bd2a : $03
	.db $00                                                  ; $bd2b : $00
	ldy $12ff                                                  ; $bd2c : $ac, $ff, $12
	.db $b7                                                  ; $bd2f : $b7
	.db $03                                                  ; $bd30 : $03
	.db $00                                                  ; $bd31 : $00
	.db $c2                                                  ; $bd32 : $c2
	.db $ff                                                  ; $bd33 : $ff
	.db $12                                                  ; $bd34 : $12
	.db $b7                                                  ; $bd35 : $b7
	.db $03                                                  ; $bd36 : $03
	.db $00                                                  ; $bd37 : $00
	ldy $12ff                                                  ; $bd38 : $ac, $ff, $12
	.db $b7                                                  ; $bd3b : $b7
	.db $03                                                  ; $bd3c : $03
	.db $00                                                  ; $bd3d : $00
	sta ($ff), y                                                  ; $bd3e : $91, $ff
	.db $12                                                  ; $bd40 : $12
	.db $b7                                                  ; $bd41 : $b7
	.db $03                                                  ; $bd42 : $03
	.db $00                                                  ; $bd43 : $00
	ldy $36ff                                                  ; $bd44 : $ac, $ff, $36
	.db $b7                                                  ; $bd47 : $b7
	.db $03                                                  ; $bd48 : $03
	.db $00                                                  ; $bd49 : $00
	.db $c2                                                  ; $bd4a : $c2
	.db $ff                                                  ; $bd4b : $ff
	.db $12                                                  ; $bd4c : $12
	tsx                                                  ; $bd4d : $ba
	.db $13                                                  ; $bd4e : $13
	.db $00                                                  ; $bd4f : $00
	lsr $ff, x                                                  ; $bd50 : $56, $ff
	.db $12                                                  ; $bd52 : $12
	tsx                                                  ; $bd53 : $ba
	.db $13                                                  ; $bd54 : $13
	.db $00                                                  ; $bd55 : $00
	pha                                                  ; $bd56 : $48
	.db $ff                                                  ; $bd57 : $ff
	.db $12                                                  ; $bd58 : $12
	tsx                                                  ; $bd59 : $ba
	.db $13                                                  ; $bd5a : $13
	.db $00                                                  ; $bd5b : $00
	rts                                                  ; $bd5c : $60


	.db $ff                                                  ; $bd5d : $ff
	.db $12                                                  ; $bd5e : $12
	tsx                                                  ; $bd5f : $ba
	.db $13                                                  ; $bd60 : $13
	.db $00                                                  ; $bd61 : $00
	lsr $ff, x                                                  ; $bd62 : $56, $ff
	rol $b7, x                                                  ; $bd64 : $36, $b7
	.db $03                                                  ; $bd66 : $03
	.db $00                                                  ; $bd67 : $00
	.db $c2                                                  ; $bd68 : $c2
	.db $ff                                                  ; $bd69 : $ff
	.db $12                                                  ; $bd6a : $12
	.db $b7                                                  ; $bd6b : $b7
	.db $03                                                  ; $bd6c : $03
	.db $00                                                  ; $bd6d : $00
	ldy $12ff                                                  ; $bd6e : $ac, $ff, $12
	.db $b7                                                  ; $bd71 : $b7
	.db $03                                                  ; $bd72 : $03
	.db $00                                                  ; $bd73 : $00
	inc $ff                                                  ; $bd74 : $e6, $ff
	.db $12                                                  ; $bd76 : $12
	.db $b7                                                  ; $bd77 : $b7
	.db $03                                                  ; $bd78 : $03
	ora ($03, x)                                                  ; $bd79 : $01, $03
	.db $ff                                                  ; $bd7b : $ff
	.db $12                                                  ; $bd7c : $12
	.db $b7                                                  ; $bd7d : $b7
	.db $03                                                  ; $bd7e : $03
	.db $00                                                  ; $bd7f : $00
	inc $ff                                                  ; $bd80 : $e6, $ff
	.db $12                                                  ; $bd82 : $12
	.db $b7                                                  ; $bd83 : $b7
	.db $03                                                  ; $bd84 : $03
	.db $00                                                  ; $bd85 : $00
	.db $c2                                                  ; $bd86 : $c2
	.db $ff                                                  ; $bd87 : $ff
	rol $b7, x                                                  ; $bd88 : $36, $b7
	.db $03                                                  ; $bd8a : $03
	ora ($03, x)                                                  ; $bd8b : $01, $03
	.db $ff                                                  ; $bd8d : $ff
	ora #$ba                                                  ; $bd8e : $09, $ba
	.db $13                                                  ; $bd90 : $13
	.db $00                                                  ; $bd91 : $00
	rts                                                  ; $bd92 : $60


	.db $ff                                                  ; $bd93 : $ff
	ora #$ba                                                  ; $bd94 : $09, $ba
	.db $13                                                  ; $bd96 : $13
	.db $00                                                  ; $bd97 : $00
	lsr $ff, x                                                  ; $bd98 : $56, $ff
	.db $12                                                  ; $bd9a : $12
	tsx                                                  ; $bd9b : $ba
	.db $13                                                  ; $bd9c : $13
	.db $00                                                  ; $bd9d : $00
	.db $73                                                  ; $bd9e : $73
	.db $ff                                                  ; $bd9f : $ff
	.db $12                                                  ; $bda0 : $12
	tsx                                                  ; $bda1 : $ba
	.db $13                                                  ; $bda2 : $13
	.db $00                                                  ; $bda3 : $00
	sta ($ff, x)                                                  ; $bda4 : $81, $ff
	.db $12                                                  ; $bda6 : $12
	tsx                                                  ; $bda7 : $ba
	.db $13                                                  ; $bda8 : $13
	.db $00                                                  ; $bda9 : $00
	.db $73                                                  ; $bdaa : $73
	.db $ff                                                  ; $bdab : $ff
	.db $12                                                  ; $bdac : $12
	tsx                                                  ; $bdad : $ba
	.db $13                                                  ; $bdae : $13
	.db $00                                                  ; $bdaf : $00
	rts                                                  ; $bdb0 : $60


	.db $ff                                                  ; $bdb1 : $ff
	rol $b7, x                                                  ; $bdb2 : $36, $b7
	.db $03                                                  ; $bdb4 : $03
	ora ($03, x)                                                  ; $bdb5 : $01, $03
	.db $ff                                                  ; $bdb7 : $ff
	.db $12                                                  ; $bdb8 : $12
	.db $b7                                                  ; $bdb9 : $b7
	.db $03                                                  ; $bdba : $03
	.db $00                                                  ; $bdbb : $00
	inc $ff                                                  ; $bdbc : $e6, $ff
	bit $b7                                                  ; $bdbe : $24, $b7
	.db $03                                                  ; $bdc0 : $03
	.db $00                                                  ; $bdc1 : $00
	.db $c2                                                  ; $bdc2 : $c2
	.db $ff                                                  ; $bdc3 : $ff
	bit $b7                                                  ; $bdc4 : $24, $b7
	.db $03                                                  ; $bdc6 : $03
	.db $00                                                  ; $bdc7 : $00
	sta ($ff), y                                                  ; $bdc8 : $91, $ff
	bit $b7                                                  ; $bdca : $24, $b7
	.db $03                                                  ; $bdcc : $03
	.db $00                                                  ; $bdcd : $00
	ldy $12ff                                                  ; $bdce : $ac, $ff, $12
	.db $b7                                                  ; $bdd1 : $b7
	.db $03                                                  ; $bdd2 : $03
	.db $00                                                  ; $bdd3 : $00
	ldy $12ff                                                  ; $bdd4 : $ac, $ff, $12
	.db $b7                                                  ; $bdd7 : $b7
	.db $03                                                  ; $bdd8 : $03
	.db $00                                                  ; $bdd9 : $00
	sta ($ff), y                                                  ; $bdda : $91, $ff
	bit $b7                                                  ; $bddc : $24, $b7
	.db $03                                                  ; $bdde : $03
	.db $00                                                  ; $bddf : $00
	ldy $24ff                                                  ; $bde0 : $ac, $ff, $24
	.db $b7                                                  ; $bde3 : $b7
	.db $03                                                  ; $bde4 : $03
	.db $00                                                  ; $bde5 : $00
	.db $c2                                                  ; $bde6 : $c2
	.db $ff                                                  ; $bde7 : $ff
	bit $b7                                                  ; $bde8 : $24, $b7
	.db $03                                                  ; $bdea : $03
	.db $00                                                  ; $bdeb : $00
	.db $c2                                                  ; $bdec : $c2
	.db $ff                                                  ; $bded : $ff
	.db $12                                                  ; $bdee : $12
	.db $b7                                                  ; $bdef : $b7
	.db $03                                                  ; $bdf0 : $03
	.db $00                                                  ; $bdf1 : $00
	.db $c2                                                  ; $bdf2 : $c2
	.db $ff                                                  ; $bdf3 : $ff
	.db $12                                                  ; $bdf4 : $12
	.db $b7                                                  ; $bdf5 : $b7
	.db $03                                                  ; $bdf6 : $03
	ora ($03, x)                                                  ; $bdf7 : $01, $03
	.db $ff                                                  ; $bdf9 : $ff
	bit $b7                                                  ; $bdfa : $24, $b7
	.db $03                                                  ; $bdfc : $03
	.db $00                                                  ; $bdfd : $00
	inc $ff                                                  ; $bdfe : $e6, $ff
	bit $b7                                                  ; $be00 : $24, $b7
	.db $03                                                  ; $be02 : $03
	ora ($03, x)                                                  ; $be03 : $01, $03
	.db $ff                                                  ; $be05 : $ff
	rol $b7, x                                                  ; $be06 : $36, $b7
	.db $03                                                  ; $be08 : $03
	ora ($22, x)                                                  ; $be09 : $01, $22
	.db $ff                                                  ; $be0b : $ff
	.db $12                                                  ; $be0c : $12
	tsx                                                  ; $be0d : $ba
	.db $13                                                  ; $be0e : $13
	.db $00                                                  ; $be0f : $00
	sta ($ff, x)                                                  ; $be10 : $81, $ff
	.db $12                                                  ; $be12 : $12
	tsx                                                  ; $be13 : $ba
	.db $13                                                  ; $be14 : $13
	.db $00                                                  ; $be15 : $00
	sta ($ff), y                                                  ; $be16 : $91, $ff
	.db $12                                                  ; $be18 : $12
	tsx                                                  ; $be19 : $ba
	.db $13                                                  ; $be1a : $13
	.db $00                                                  ; $be1b : $00
	ldy $12ff                                                  ; $be1c : $ac, $ff, $12
	tsx                                                  ; $be1f : $ba
	.db $13                                                  ; $be20 : $13
	.db $00                                                  ; $be21 : $00
	sta ($ff), y                                                  ; $be22 : $91, $ff
	.db $12                                                  ; $be24 : $12
	tsx                                                  ; $be25 : $ba
	.db $13                                                  ; $be26 : $13
	.db $00                                                  ; $be27 : $00
	sta ($ff, x)                                                  ; $be28 : $81, $ff
	rol $bb, x                                                  ; $be2a : $36, $bb
	.db $03                                                  ; $be2c : $03
	.db $00                                                  ; $be2d : $00
	inc $ff                                                  ; $be2e : $e6, $ff
	.db $12                                                  ; $be30 : $12
	.db $bb                                                  ; $be31 : $bb
	.db $03                                                  ; $be32 : $03
	.db $00                                                  ; $be33 : $00
	.db $c2                                                  ; $be34 : $c2
	.db $ff                                                  ; $be35 : $ff
	.db $12                                                  ; $be36 : $12
	.db $bb                                                  ; $be37 : $bb
	.db $03                                                  ; $be38 : $03
	.db $00                                                  ; $be39 : $00
	ldy $12ff                                                  ; $be3a : $ac, $ff, $12
	.db $bb                                                  ; $be3d : $bb
	.db $03                                                  ; $be3e : $03
	.db $00                                                  ; $be3f : $00
	.db $c2                                                  ; $be40 : $c2
	.db $ff                                                  ; $be41 : $ff
	.db $12                                                  ; $be42 : $12
	.db $bb                                                  ; $be43 : $bb
	.db $03                                                  ; $be44 : $03
	.db $00                                                  ; $be45 : $00
	ldy $12ff                                                  ; $be46 : $ac, $ff, $12
	.db $bb                                                  ; $be49 : $bb
	.db $03                                                  ; $be4a : $03
	.db $00                                                  ; $be4b : $00
	sta ($ff), y                                                  ; $be4c : $91, $ff
	.db $12                                                  ; $be4e : $12
	.db $bb                                                  ; $be4f : $bb
	.db $03                                                  ; $be50 : $03
	.db $00                                                  ; $be51 : $00
	ldy $36ff                                                  ; $be52 : $ac, $ff, $36
	.db $bb                                                  ; $be55 : $bb
	.db $03                                                  ; $be56 : $03
	.db $00                                                  ; $be57 : $00
	.db $c2                                                  ; $be58 : $c2
	.db $ff                                                  ; $be59 : $ff
	.db $12                                                  ; $be5a : $12
	.db $bb                                                  ; $be5b : $bb
	.db $13                                                  ; $be5c : $13
	.db $00                                                  ; $be5d : $00
	pha                                                  ; $be5e : $48
	.db $ff                                                  ; $be5f : $ff
	.db $12                                                  ; $be60 : $12
	.db $bb                                                  ; $be61 : $bb
	.db $13                                                  ; $be62 : $13
	.db $00                                                  ; $be63 : $00
	lsr $ff, x                                                  ; $be64 : $56, $ff
	.db $12                                                  ; $be66 : $12
	tsx                                                  ; $be67 : $ba
	.db $13                                                  ; $be68 : $13
	.db $00                                                  ; $be69 : $00
	rts                                                  ; $be6a : $60


	.db $ff                                                  ; $be6b : $ff
	.db $12                                                  ; $be6c : $12
	tsx                                                  ; $be6d : $ba
	.db $13                                                  ; $be6e : $13
	.db $00                                                  ; $be6f : $00
	.db $73                                                  ; $be70 : $73
	.db $ff                                                  ; $be71 : $ff
	rol $bb, x                                                  ; $be72 : $36, $bb
	.db $03                                                  ; $be74 : $03
	.db $00                                                  ; $be75 : $00
	.db $c2                                                  ; $be76 : $c2
	.db $ff                                                  ; $be77 : $ff
	.db $12                                                  ; $be78 : $12
	.db $bb                                                  ; $be79 : $bb
	.db $03                                                  ; $be7a : $03
	.db $00                                                  ; $be7b : $00
	ldy $12ff                                                  ; $be7c : $ac, $ff, $12
	.db $bb                                                  ; $be7f : $bb
	.db $03                                                  ; $be80 : $03
	.db $00                                                  ; $be81 : $00
	inc $ff                                                  ; $be82 : $e6, $ff
	.db $12                                                  ; $be84 : $12
	.db $bb                                                  ; $be85 : $bb
	.db $03                                                  ; $be86 : $03
	ora ($03, x)                                                  ; $be87 : $01, $03
	.db $ff                                                  ; $be89 : $ff
	.db $12                                                  ; $be8a : $12
	.db $bb                                                  ; $be8b : $bb
	.db $03                                                  ; $be8c : $03
	.db $00                                                  ; $be8d : $00
	inc $ff                                                  ; $be8e : $e6, $ff
	.db $12                                                  ; $be90 : $12
	.db $bb                                                  ; $be91 : $bb
	.db $03                                                  ; $be92 : $03
	.db $00                                                  ; $be93 : $00
	.db $c2                                                  ; $be94 : $c2
	.db $ff                                                  ; $be95 : $ff
	rol $bb, x                                                  ; $be96 : $36, $bb
	.db $03                                                  ; $be98 : $03
	ora ($03, x)                                                  ; $be99 : $01, $03
	.db $ff                                                  ; $be9b : $ff
	ora #$ba                                                  ; $be9c : $09, $ba
	.db $13                                                  ; $be9e : $13
	.db $00                                                  ; $be9f : $00
	rts                                                  ; $bea0 : $60


	.db $ff                                                  ; $bea1 : $ff
	ora #$ba                                                  ; $bea2 : $09, $ba
	.db $13                                                  ; $bea4 : $13
	.db $00                                                  ; $bea5 : $00
	.db $73                                                  ; $bea6 : $73
	.db $ff                                                  ; $bea7 : $ff
	.db $12                                                  ; $bea8 : $12
	tsx                                                  ; $bea9 : $ba
	.db $13                                                  ; $beaa : $13
	.db $00                                                  ; $beab : $00
	sta ($ff, x)                                                  ; $beac : $81, $ff
	.db $12                                                  ; $beae : $12
	tsx                                                  ; $beaf : $ba
	.db $13                                                  ; $beb0 : $13
	.db $00                                                  ; $beb1 : $00
	.db $73                                                  ; $beb2 : $73
	.db $ff                                                  ; $beb3 : $ff
	.db $12                                                  ; $beb4 : $12
	tsx                                                  ; $beb5 : $ba
	.db $13                                                  ; $beb6 : $13
	.db $00                                                  ; $beb7 : $00
	ldy $12ff                                                  ; $beb8 : $ac, $ff, $12
	tsx                                                  ; $bebb : $ba
	.db $13                                                  ; $bebc : $13
	.db $00                                                  ; $bebd : $00
	sta ($ff), y                                                  ; $bebe : $91, $ff
	rol $bb, x                                                  ; $bec0 : $36, $bb
	.db $03                                                  ; $bec2 : $03
	ora ($03, x)                                                  ; $bec3 : $01, $03
	.db $ff                                                  ; $bec5 : $ff
	.db $12                                                  ; $bec6 : $12
	.db $bb                                                  ; $bec7 : $bb
	.db $03                                                  ; $bec8 : $03
	.db $00                                                  ; $bec9 : $00
	inc $ff                                                  ; $beca : $e6, $ff
	bit $bb                                                  ; $becc : $24, $bb
	.db $03                                                  ; $bece : $03
	.db $00                                                  ; $becf : $00
	.db $c2                                                  ; $bed0 : $c2
	.db $ff                                                  ; $bed1 : $ff
	bit $bb                                                  ; $bed2 : $24, $bb
	.db $03                                                  ; $bed4 : $03
	.db $00                                                  ; $bed5 : $00
	sta ($ff), y                                                  ; $bed6 : $91, $ff
	bit $bb                                                  ; $bed8 : $24, $bb
	.db $03                                                  ; $beda : $03
	.db $00                                                  ; $bedb : $00
	ldy $12ff                                                  ; $bedc : $ac, $ff, $12
	.db $bb                                                  ; $bedf : $bb
	.db $03                                                  ; $bee0 : $03
	.db $00                                                  ; $bee1 : $00
	ldy $12ff                                                  ; $bee2 : $ac, $ff, $12
	.db $bb                                                  ; $bee5 : $bb
	.db $03                                                  ; $bee6 : $03
	.db $00                                                  ; $bee7 : $00
	sta ($ff), y                                                  ; $bee8 : $91, $ff
	bit $bb                                                  ; $beea : $24, $bb
	.db $03                                                  ; $beec : $03
	.db $00                                                  ; $beed : $00
	ldy $24ff                                                  ; $beee : $ac, $ff, $24
	.db $bb                                                  ; $bef1 : $bb
	.db $03                                                  ; $bef2 : $03
	.db $00                                                  ; $bef3 : $00
	.db $c2                                                  ; $bef4 : $c2
	.db $ff                                                  ; $bef5 : $ff
	bit $bb                                                  ; $bef6 : $24, $bb
	.db $03                                                  ; $bef8 : $03
	.db $00                                                  ; $bef9 : $00
	.db $c2                                                  ; $befa : $c2
	.db $ff                                                  ; $befb : $ff
	.db $12                                                  ; $befc : $12
	.db $bb                                                  ; $befd : $bb
	.db $03                                                  ; $befe : $03
	.db $00                                                  ; $beff : $00
	.db $c2                                                  ; $bf00 : $c2
	.db $ff                                                  ; $bf01 : $ff
	.db $12                                                  ; $bf02 : $12
	.db $bb                                                  ; $bf03 : $bb
	.db $03                                                  ; $bf04 : $03
	ora ($03, x)                                                  ; $bf05 : $01, $03
	.db $ff                                                  ; $bf07 : $ff
	bit $bb                                                  ; $bf08 : $24, $bb
	.db $03                                                  ; $bf0a : $03
	.db $00                                                  ; $bf0b : $00
	inc $ff                                                  ; $bf0c : $e6, $ff
	bit $bb                                                  ; $bf0e : $24, $bb
	.db $03                                                  ; $bf10 : $03
	ora ($03, x)                                                  ; $bf11 : $01, $03
	.db $ff                                                  ; $bf13 : $ff
	rol $bb, x                                                  ; $bf14 : $36, $bb
	.db $03                                                  ; $bf16 : $03
	ora ($22, x)                                                  ; $bf17 : $01, $22
	.db $ff                                                  ; $bf19 : $ff
	.db $12                                                  ; $bf1a : $12
	tsx                                                  ; $bf1b : $ba
	.db $13                                                  ; $bf1c : $13
	.db $00                                                  ; $bf1d : $00
	sta ($ff, x)                                                  ; $bf1e : $81, $ff
	.db $12                                                  ; $bf20 : $12
	tsx                                                  ; $bf21 : $ba
	.db $13                                                  ; $bf22 : $13
	.db $00                                                  ; $bf23 : $00
	.db $73                                                  ; $bf24 : $73
	.db $ff                                                  ; $bf25 : $ff
	.db $12                                                  ; $bf26 : $12
	tsx                                                  ; $bf27 : $ba
	.db $13                                                  ; $bf28 : $13
	.db $00                                                  ; $bf29 : $00
	rts                                                  ; $bf2a : $60


	.db $ff                                                  ; $bf2b : $ff
	.db $12                                                  ; $bf2c : $12
	tsx                                                  ; $bf2d : $ba
	.db $13                                                  ; $bf2e : $13
	.db $00                                                  ; $bf2f : $00
	.db $73                                                  ; $bf30 : $73
	.db $ff                                                  ; $bf31 : $ff
	.db $12                                                  ; $bf32 : $12
	tsx                                                  ; $bf33 : $ba
	.db $13                                                  ; $bf34 : $13
	.db $00                                                  ; $bf35 : $00
	sta ($ff, x)                                                  ; $bf36 : $81, $ff
	.db $12                                                  ; $bf38 : $12
	.db $bb                                                  ; $bf39 : $bb
	.db $03                                                  ; $bf3a : $03
	ora ($22, x)                                                  ; $bf3b : $01, $22
	.db $ff                                                  ; $bf3d : $ff
	.db $12                                                  ; $bf3e : $12
	.db $bb                                                  ; $bf3f : $bb
	.db $03                                                  ; $bf40 : $03
	ora ($59, x)                                                  ; $bf41 : $01, $59
	.db $ff                                                  ; $bf43 : $ff
	.db $12                                                  ; $bf44 : $12
	.db $bb                                                  ; $bf45 : $bb
	.db $03                                                  ; $bf46 : $03
	ora ($22, x)                                                  ; $bf47 : $01, $22
	.db $ff                                                  ; $bf49 : $ff
	.db $12                                                  ; $bf4a : $12
	.db $bb                                                  ; $bf4b : $bb
	.db $03                                                  ; $bf4c : $03
	ora ($03, x)                                                  ; $bf4d : $01, $03
	.db $ff                                                  ; $bf4f : $ff
	rol $bb, x                                                  ; $bf50 : $36, $bb
	.db $03                                                  ; $bf52 : $03
	.db $00                                                  ; $bf53 : $00
	inc $ff                                                  ; $bf54 : $e6, $ff
	.db $12                                                  ; $bf56 : $12
	.db $bb                                                  ; $bf57 : $bb
	.db $03                                                  ; $bf58 : $03
	.db $00                                                  ; $bf59 : $00
	ora ($ff, x)                                                  ; $bf5a : $01, $ff
	.db $12                                                  ; $bf5c : $12
	.db $bb                                                  ; $bf5d : $bb
	.db $03                                                  ; $bf5e : $03
	ora ($03, x)                                                  ; $bf5f : $01, $03
	.db $ff                                                  ; $bf61 : $ff
	.db $12                                                  ; $bf62 : $12
	.db $bb                                                  ; $bf63 : $bb
	.db $03                                                  ; $bf64 : $03
	.db $00                                                  ; $bf65 : $00
	inc $ff                                                  ; $bf66 : $e6, $ff
	.db $12                                                  ; $bf68 : $12
	.db $bb                                                  ; $bf69 : $bb
	.db $03                                                  ; $bf6a : $03
	ora ($59, x)                                                  ; $bf6b : $01, $59
	.db $ff                                                  ; $bf6d : $ff
	.db $12                                                  ; $bf6e : $12
	.db $bb                                                  ; $bf6f : $bb
	.db $03                                                  ; $bf70 : $03
	ora ($22, x)                                                  ; $bf71 : $01, $22
	.db $ff                                                  ; $bf73 : $ff
	.db $12                                                  ; $bf74 : $12
	.db $bb                                                  ; $bf75 : $bb
	.db $03                                                  ; $bf76 : $03
	ora ($59, x)                                                  ; $bf77 : $01, $59
	.db $ff                                                  ; $bf79 : $ff
	bit $bb                                                  ; $bf7a : $24, $bb
	.db $03                                                  ; $bf7c : $03
	ora ($84, x)                                                  ; $bf7d : $01, $84
	.db $ff                                                  ; $bf7f : $ff
	.db $12                                                  ; $bf80 : $12
	.db $bb                                                  ; $bf81 : $bb
	.db $03                                                  ; $bf82 : $03
	.db $00                                                  ; $bf83 : $00
	ora ($ff, x)                                                  ; $bf84 : $01, $ff
	.db $12                                                  ; $bf86 : $12
	.db $bb                                                  ; $bf87 : $bb
	.db $03                                                  ; $bf88 : $03
	ora ($59, x)                                                  ; $bf89 : $01, $59
	.db $ff                                                  ; $bf8b : $ff
	.db $12                                                  ; $bf8c : $12
	.db $bb                                                  ; $bf8d : $bb
	.db $03                                                  ; $bf8e : $03
	ora ($22, x)                                                  ; $bf8f : $01, $22
	.db $ff                                                  ; $bf91 : $ff
	.db $12                                                  ; $bf92 : $12
	.db $bb                                                  ; $bf93 : $bb
	.db $03                                                  ; $bf94 : $03
	ora ($03, x)                                                  ; $bf95 : $01, $03
	.db $ff                                                  ; $bf97 : $ff
	.db $12                                                  ; $bf98 : $12
	.db $bb                                                  ; $bf99 : $bb
	.db $03                                                  ; $bf9a : $03
	.db $00                                                  ; $bf9b : $00
	inc $ff                                                  ; $bf9c : $e6, $ff
	.db $12                                                  ; $bf9e : $12
	.db $bb                                                  ; $bf9f : $bb
	.db $03                                                  ; $bfa0 : $03
	.db $00                                                  ; $bfa1 : $00
	.db $c2                                                  ; $bfa2 : $c2
	.db $ff                                                  ; $bfa3 : $ff
	.db $12                                                  ; $bfa4 : $12
	.db $bb                                                  ; $bfa5 : $bb
	.db $03                                                  ; $bfa6 : $03
	.db $00                                                  ; $bfa7 : $00
	inc $ff                                                  ; $bfa8 : $e6, $ff
	.db $12                                                  ; $bfaa : $12
	.db $bb                                                  ; $bfab : $bb
	.db $03                                                  ; $bfac : $03
	.db $00                                                  ; $bfad : $00
	sta ($ff), y                                                  ; $bfae : $91, $ff
	.db $12                                                  ; $bfb0 : $12
	.db $bb                                                  ; $bfb1 : $bb
	.db $03                                                  ; $bfb2 : $03
	.db $00                                                  ; $bfb3 : $00
	ldy $36ff                                                  ; $bfb4 : $ac, $ff, $36
	.db $bb                                                  ; $bfb7 : $bb
	.db $03                                                  ; $bfb8 : $03
	.db $00                                                  ; $bfb9 : $00
	.db $c2                                                  ; $bfba : $c2
	.db $ff                                                  ; $bfbb : $ff
	.db $12                                                  ; $bfbc : $12
	pla                                                  ; $bfbd : $68
	.db $13                                                  ; $bfbe : $13
	.db $00                                                  ; $bfbf : $00
	lsr $ff, x                                                  ; $bfc0 : $56, $ff
	.db $12                                                  ; $bfc2 : $12
	pla                                                  ; $bfc3 : $68
	.db $13                                                  ; $bfc4 : $13
	.db $00                                                  ; $bfc5 : $00
	rts                                                  ; $bfc6 : $60


	.db $ff                                                  ; $bfc7 : $ff
	.db $12                                                  ; $bfc8 : $12
	pla                                                  ; $bfc9 : $68
	.db $13                                                  ; $bfca : $13
	.db $00                                                  ; $bfcb : $00
	lsr $ff, x                                                  ; $bfcc : $56, $ff
	bit $b8                                                  ; $bfce : $24, $b8
	.db $13                                                  ; $bfd0 : $13
	.db $00                                                  ; $bfd1 : $00
	rts                                                  ; $bfd2 : $60


	.db $ff                                                  ; $bfd3 : $ff
	bit $bb                                                  ; $bfd4 : $24, $bb
	.db $03                                                  ; $bfd6 : $03
	.db $00                                                  ; $bfd7 : $00
	sta ($ff), y                                                  ; $bfd8 : $91, $ff
	.db $12                                                  ; $bfda : $12
	.db $bb                                                  ; $bfdb : $bb
	.db $03                                                  ; $bfdc : $03
	.db $00                                                  ; $bfdd : $00
	sta ($ff), y                                                  ; $bfde : $91, $ff
	.db $12                                                  ; $bfe0 : $12
	.db $bb                                                  ; $bfe1 : $bb
	.db $03                                                  ; $bfe2 : $03
	.db $00                                                  ; $bfe3 : $00
	ldy $24ff                                                  ; $bfe4 : $ac, $ff, $24
	.db $bb                                                  ; $bfe7 : $bb
	.db $03                                                  ; $bfe8 : $03
	.db $00                                                  ; $bfe9 : $00
	.db $c2                                                  ; $bfea : $c2
	.db $ff                                                  ; $bfeb : $ff
	.db $12                                                  ; $bfec : $12
	.db $bb                                                  ; $bfed : $bb
	.db $03                                                  ; $bfee : $03
	.db $00                                                  ; $bfef : $00
	.db $c2                                                  ; $bff0 : $c2
	.db $ff                                                  ; $bff1 : $ff
	.db $12                                                  ; $bff2 : $12
	.db $bb                                                  ; $bff3 : $bb
	.db $03                                                  ; $bff4 : $03
	.db $00                                                  ; $bff5 : $00
	ldy $24ff                                                  ; $bff6 : $ac, $ff, $24
	.db $bb                                                  ; $bff9 : $bb
	.db $03                                                  ; $bffa : $03
	.db $00                                                  ; $bffb : $00
	.db $c2                                                  ; $bffc : $c2
	.db $ff                                                  ; $bffd : $ff
	.db $12                                                  ; $bffe : $12
	.db $bb                                                  ; $bfff : $bb
	.db $03                                                  ; $c000 : $03
	.db $00                                                  ; $c001 : $00
	.db $c2                                                  ; $c002 : $c2
	.db $ff                                                  ; $c003 : $ff
	.db $12                                                  ; $c004 : $12
	.db $bb                                                  ; $c005 : $bb
	.db $03                                                  ; $c006 : $03
	.db $00                                                  ; $c007 : $00
	inc $ff                                                  ; $c008 : $e6, $ff
	ora #$bb                                                  ; $c00a : $09, $bb
	.db $03                                                  ; $c00c : $03
	.db $00                                                  ; $c00d : $00
	inc $ff                                                  ; $c00e : $e6, $ff
	.db $3f                                                  ; $c010 : $3f
	.db $bb                                                  ; $c011 : $bb
	.db $03                                                  ; $c012 : $03
	ora ($03, x)                                                  ; $c013 : $01, $03
	.db $ff                                                  ; $c015 : $ff
	bit $bb                                                  ; $c016 : $24, $bb
	.db $03                                                  ; $c018 : $03
	.db $00                                                  ; $c019 : $00
	.db $c2                                                  ; $c01a : $c2
	.db $ff                                                  ; $c01b : $ff
	.db $12                                                  ; $c01c : $12
	.db $bb                                                  ; $c01d : $bb
	.db $03                                                  ; $c01e : $03
	.db $00                                                  ; $c01f : $00
	.db $c2                                                  ; $c020 : $c2
	.db $ff                                                  ; $c021 : $ff
	.db $12                                                  ; $c022 : $12
	.db $bb                                                  ; $c023 : $bb
	.db $03                                                  ; $c024 : $03
	.db $00                                                  ; $c025 : $00
	ldy $24ff                                                  ; $c026 : $ac, $ff, $24
	.db $bb                                                  ; $c029 : $bb
	.db $03                                                  ; $c02a : $03
	.db $00                                                  ; $c02b : $00
	inc $ff                                                  ; $c02c : $e6, $ff
	bit $bb                                                  ; $c02e : $24, $bb
	.db $03                                                  ; $c030 : $03
	ora ($03, x)                                                  ; $c031 : $01, $03
	.db $ff                                                  ; $c033 : $ff
	jmp ($03bb)                                                  ; $c034 : $6c, $bb, $03


	ora ($22, x)                                                  ; $c037 : $01, $22
	.db $ff                                                  ; $c039 : $ff
	bit $bb                                                  ; $c03a : $24, $bb
	.db $03                                                  ; $c03c : $03
	.db $00                                                  ; $c03d : $00
	ora ($ff, x)                                                  ; $c03e : $01, $ff
	.db $ff                                                  ; $c040 : $ff
	bit $a7                                                  ; $c041 : $24, $a7
	.db $03                                                  ; $c043 : $03
	.db $00                                                  ; $c044 : $00
	ora ($ff, x)                                                  ; $c045 : $01, $ff
	bit $a7                                                  ; $c047 : $24, $a7
	.db $03                                                  ; $c049 : $03
	.db $00                                                  ; $c04a : $00
	ora ($ff, x)                                                  ; $c04b : $01, $ff
	bit $a7                                                  ; $c04d : $24, $a7
	.db $03                                                  ; $c04f : $03
	.db $00                                                  ; $c050 : $00
	ora ($ff, x)                                                  ; $c051 : $01, $ff
	bit $a7                                                  ; $c053 : $24, $a7
	.db $03                                                  ; $c055 : $03
	.db $00                                                  ; $c056 : $00
	ora ($ff, x)                                                  ; $c057 : $01, $ff
	bit $a7                                                  ; $c059 : $24, $a7
	.db $03                                                  ; $c05b : $03
	.db $00                                                  ; $c05c : $00
	ora ($ff, x)                                                  ; $c05d : $01, $ff
	.db $12                                                  ; $c05f : $12
	tsx                                                  ; $c060 : $ba
	.db $13                                                  ; $c061 : $13
	.db $00                                                  ; $c062 : $00
	rts                                                  ; $c063 : $60


	.db $ff                                                  ; $c064 : $ff
	.db $12                                                  ; $c065 : $12
	tsx                                                  ; $c066 : $ba
	.db $13                                                  ; $c067 : $13
	.db $00                                                  ; $c068 : $00
	.db $73                                                  ; $c069 : $73
	.db $ff                                                  ; $c06a : $ff
	.db $12                                                  ; $c06b : $12
	tsx                                                  ; $c06c : $ba
	.db $13                                                  ; $c06d : $13
	.db $00                                                  ; $c06e : $00
	sta ($ff, x)                                                  ; $c06f : $81, $ff
	.db $12                                                  ; $c071 : $12
	tsx                                                  ; $c072 : $ba
	.db $13                                                  ; $c073 : $13
	.db $00                                                  ; $c074 : $00
	.db $73                                                  ; $c075 : $73
	.db $ff                                                  ; $c076 : $ff
	.db $12                                                  ; $c077 : $12
	tsx                                                  ; $c078 : $ba
	.db $13                                                  ; $c079 : $13
	.db $00                                                  ; $c07a : $00
	sta ($ff), y                                                  ; $c07b : $91, $ff
	.db $12                                                  ; $c07d : $12
	tsx                                                  ; $c07e : $ba
	.db $13                                                  ; $c07f : $13
	.db $00                                                  ; $c080 : $00
	ldy $12ff                                                  ; $c081 : $ac, $ff, $12
	ora $0103                                                  ; $c084 : $0d, $03, $01
	sty $ff                                                  ; $c087 : $84, $ff
	ora #$0d                                                  ; $c089 : $09, $0d
	.db $03                                                  ; $c08b : $03
	ora ($84, x)                                                  ; $c08c : $01, $84
	.db $ff                                                  ; $c08e : $ff
	ora #$0d                                                  ; $c08f : $09, $0d
	.db $03                                                  ; $c091 : $03
	ora ($84, x)                                                  ; $c092 : $01, $84
	.db $ff                                                  ; $c094 : $ff
	ora #$0d                                                  ; $c095 : $09, $0d
	.db $03                                                  ; $c097 : $03
	ora ($84, x)                                                  ; $c098 : $01, $84
	.db $ff                                                  ; $c09a : $ff
	ora #$0d                                                  ; $c09b : $09, $0d
	.db $03                                                  ; $c09d : $03
	ora ($cd, x)                                                  ; $c09e : $01, $cd
	.db $ff                                                  ; $c0a0 : $ff
	ora #$0d                                                  ; $c0a1 : $09, $0d
	.db $03                                                  ; $c0a3 : $03
	.db $02                                                  ; $c0a4 : $02
	asl $ff                                                  ; $c0a5 : $06, $ff
	ora #$0d                                                  ; $c0a7 : $09, $0d
	.db $03                                                  ; $c0a9 : $03
	ora ($cd, x)                                                  ; $c0aa : $01, $cd
	.db $ff                                                  ; $c0ac : $ff
	.db $12                                                  ; $c0ad : $12
	ora $0103                                                  ; $c0ae : $0d, $03, $01
	sty $ff                                                  ; $c0b1 : $84, $ff
	.db $12                                                  ; $c0b3 : $12
	ora $0103                                                  ; $c0b4 : $0d, $03, $01
	eor $12ff, y                                                  ; $c0b7 : $59, $ff, $12
	ora $0103                                                  ; $c0ba : $0d, $03, $01
	sty $ff                                                  ; $c0bd : $84, $ff
	.db $12                                                  ; $c0bf : $12
	ora $03.w                                                  ; $c0c0 : $0d, $03, $00
	ora ($ff, x)                                                  ; $c0c3 : $01, $ff
	.db $12                                                  ; $c0c5 : $12
	ora $0103                                                  ; $c0c6 : $0d, $03, $01
	sty $ff                                                  ; $c0c9 : $84, $ff
	ora #$0d                                                  ; $c0cb : $09, $0d
	.db $03                                                  ; $c0cd : $03
	ora ($84, x)                                                  ; $c0ce : $01, $84
	.db $ff                                                  ; $c0d0 : $ff
	ora #$0d                                                  ; $c0d1 : $09, $0d
	.db $03                                                  ; $c0d3 : $03
	ora ($84, x)                                                  ; $c0d4 : $01, $84
	.db $ff                                                  ; $c0d6 : $ff
	ora #$0d                                                  ; $c0d7 : $09, $0d
	.db $03                                                  ; $c0d9 : $03
	ora ($84, x)                                                  ; $c0da : $01, $84
	.db $ff                                                  ; $c0dc : $ff
	ora #$0d                                                  ; $c0dd : $09, $0d
	.db $03                                                  ; $c0df : $03
	ora ($cd, x)                                                  ; $c0e0 : $01, $cd
	.db $ff                                                  ; $c0e2 : $ff
	ora #$0d                                                  ; $c0e3 : $09, $0d
	.db $03                                                  ; $c0e5 : $03
	.db $02                                                  ; $c0e6 : $02
	asl $ff                                                  ; $c0e7 : $06, $ff
	ora #$0d                                                  ; $c0e9 : $09, $0d
	.db $03                                                  ; $c0eb : $03
	ora ($cd, x)                                                  ; $c0ec : $01, $cd
	.db $ff                                                  ; $c0ee : $ff
	.db $12                                                  ; $c0ef : $12
	ora $0103                                                  ; $c0f0 : $0d, $03, $01
	sty $ff                                                  ; $c0f3 : $84, $ff
	.db $12                                                  ; $c0f5 : $12
	ora $0103                                                  ; $c0f6 : $0d, $03, $01
	eor $12ff, y                                                  ; $c0f9 : $59, $ff, $12
	ora $0103                                                  ; $c0fc : $0d, $03, $01
	sty $ff                                                  ; $c0ff : $84, $ff
	.db $12                                                  ; $c101 : $12
	ora $03.w                                                  ; $c102 : $0d, $03, $00
	ora ($ff, x)                                                  ; $c105 : $01, $ff
	.db $12                                                  ; $c107 : $12
	adc $03                                                  ; $c108 : $65, $03
	.db $03                                                  ; $c10a : $03
	.db $9b                                                  ; $c10b : $9b
	.db $00                                                  ; $c10c : $00
	.db $12                                                  ; $c10d : $12
	adc $03                                                  ; $c10e : $65, $03
	.db $00                                                  ; $c110 : $00
	ora ($ff, x)                                                  ; $c111 : $01, $ff
	.db $12                                                  ; $c113 : $12
	adc $03                                                  ; $c114 : $65, $03
	.db $02                                                  ; $c116 : $02
	eor $00                                                  ; $c117 : $45, $00
	.db $12                                                  ; $c119 : $12
	adc $03                                                  ; $c11a : $65, $03
	.db $03                                                  ; $c11c : $03
	php                                                  ; $c11d : $08
	.db $02                                                  ; $c11e : $02
	.db $12                                                  ; $c11f : $12
	adc $03                                                  ; $c120 : $65, $03
	.db $02                                                  ; $c122 : $02
	eor $00                                                  ; $c123 : $45, $00
	.db $12                                                  ; $c125 : $12
	adc $03                                                  ; $c126 : $65, $03
	.db $03                                                  ; $c128 : $03
	php                                                  ; $c129 : $08
	.db $02                                                  ; $c12a : $02
	.db $12                                                  ; $c12b : $12
	adc $03                                                  ; $c12c : $65, $03
	.db $02                                                  ; $c12e : $02
	eor $00                                                  ; $c12f : $45, $00
	.db $12                                                  ; $c131 : $12
	adc $03                                                  ; $c132 : $65, $03
	.db $03                                                  ; $c134 : $03
	php                                                  ; $c135 : $08
	.db $02                                                  ; $c136 : $02
	.db $12                                                  ; $c137 : $12
	adc $03                                                  ; $c138 : $65, $03
	.db $04                                                  ; $c13a : $04
	.db $8b                                                  ; $c13b : $8b
	.db $00                                                  ; $c13c : $00
	.db $12                                                  ; $c13d : $12
	adc $03                                                  ; $c13e : $65, $03
	.db $00                                                  ; $c140 : $00
	ora ($ff, x)                                                  ; $c141 : $01, $ff
	.db $12                                                  ; $c143 : $12
	tsx                                                  ; $c144 : $ba
	.db $13                                                  ; $c145 : $13
	.db $00                                                  ; $c146 : $00
	inc $00                                                  ; $c147 : $e6, $00
	.db $12                                                  ; $c149 : $12
	tsx                                                  ; $c14a : $ba
	.db $13                                                  ; $c14b : $13
	.db $00                                                  ; $c14c : $00
	.db $c2                                                  ; $c14d : $c2
	.db $02                                                  ; $c14e : $02
	.db $12                                                  ; $c14f : $12
	adc $03                                                  ; $c150 : $65, $03
	.db $02                                                  ; $c152 : $02
	.db $b3                                                  ; $c153 : $b3
	.db $00                                                  ; $c154 : $00
	.db $12                                                  ; $c155 : $12
	adc $03                                                  ; $c156 : $65, $03
	.db $02                                                  ; $c158 : $02
	eor $02                                                  ; $c159 : $45, $02
	.db $12                                                  ; $c15b : $12
	adc $03                                                  ; $c15c : $65, $03
	.db $03                                                  ; $c15e : $03
	php                                                  ; $c15f : $08
	.db $00                                                  ; $c160 : $00
	.db $12                                                  ; $c161 : $12
	adc $03                                                  ; $c162 : $65, $03
	.db $02                                                  ; $c164 : $02
	eor $02                                                  ; $c165 : $45, $02
	.db $12                                                  ; $c167 : $12
	adc $03                                                  ; $c168 : $65, $03
	asl $10                                                  ; $c16a : $06, $10
	.db $00                                                  ; $c16c : $00
	.db $12                                                  ; $c16d : $12
	adc $03                                                  ; $c16e : $65, $03
	.db $03                                                  ; $c170 : $03
	php                                                  ; $c171 : $08
	.db $ff                                                  ; $c172 : $ff
	.db $12                                                  ; $c173 : $12
	adc $03                                                  ; $c174 : $65, $03
	ora ($59, x)                                                  ; $c176 : $01, $59
	.db $00                                                  ; $c178 : $00
	.db $12                                                  ; $c179 : $12
	adc $03                                                  ; $c17a : $65, $03
	ora ($84, x)                                                  ; $c17c : $01, $84
	.db $02                                                  ; $c17e : $02
	.db $12                                                  ; $c17f : $12
	adc $03                                                  ; $c180 : $65, $03
	ora ($cd, x)                                                  ; $c182 : $01, $cd
	.db $00                                                  ; $c184 : $00
	.db $12                                                  ; $c185 : $12
	adc $03                                                  ; $c186 : $65, $03
	.db $02                                                  ; $c188 : $02
	asl $02                                                  ; $c189 : $06, $02
	.db $12                                                  ; $c18b : $12
	adc $03                                                  ; $c18c : $65, $03
	ora ($cd, x)                                                  ; $c18e : $01, $cd
	.db $00                                                  ; $c190 : $00
	.db $12                                                  ; $c191 : $12
	adc $03                                                  ; $c192 : $65, $03
	.db $02                                                  ; $c194 : $02
	eor $02                                                  ; $c195 : $45, $02
	.db $12                                                  ; $c197 : $12
	adc $03                                                  ; $c198 : $65, $03
	.db $04                                                  ; $c19a : $04
	.db $0c                                                  ; $c19b : $0c
	.db $00                                                  ; $c19c : $00
	.db $12                                                  ; $c19d : $12
	adc $03                                                  ; $c19e : $65, $03
	.db $02                                                  ; $c1a0 : $02
	asl $ff                                                  ; $c1a1 : $06, $ff
	.db $12                                                  ; $c1a3 : $12
	adc $03                                                  ; $c1a4 : $65, $03
	.db $03                                                  ; $c1a6 : $03
	php                                                  ; $c1a7 : $08
	.db $00                                                  ; $c1a8 : $00
	.db $12                                                  ; $c1a9 : $12
	adc $03                                                  ; $c1aa : $65, $03
	.db $02                                                  ; $c1ac : $02
	asl $02                                                  ; $c1ad : $06, $02
	.db $12                                                  ; $c1af : $12
	adc $03                                                  ; $c1b0 : $65, $03
	.db $03                                                  ; $c1b2 : $03
	php                                                  ; $c1b3 : $08
	.db $00                                                  ; $c1b4 : $00
	.db $12                                                  ; $c1b5 : $12
	adc $03                                                  ; $c1b6 : $65, $03
	.db $02                                                  ; $c1b8 : $02
	asl $02                                                  ; $c1b9 : $06, $02
	.db $12                                                  ; $c1bb : $12
	adc $03                                                  ; $c1bc : $65, $03
	ora ($cd, x)                                                  ; $c1be : $01, $cd
	.db $00                                                  ; $c1c0 : $00
	.db $12                                                  ; $c1c1 : $12
	adc $03                                                  ; $c1c2 : $65, $03
	.db $02                                                  ; $c1c4 : $02
	asl $02                                                  ; $c1c5 : $06, $02
	.db $12                                                  ; $c1c7 : $12
	adc $03                                                  ; $c1c8 : $65, $03
	.db $04                                                  ; $c1ca : $04
	.db $0c                                                  ; $c1cb : $0c
	.db $00                                                  ; $c1cc : $00
	.db $12                                                  ; $c1cd : $12
	adc $03                                                  ; $c1ce : $65, $03
	.db $00                                                  ; $c1d0 : $00
	ora ($ff, x)                                                  ; $c1d1 : $01, $ff
	.db $12                                                  ; $c1d3 : $12
	adc $03                                                  ; $c1d4 : $65, $03
	ora ($cd, x)                                                  ; $c1d6 : $01, $cd
	.db $00                                                  ; $c1d8 : $00
	.db $12                                                  ; $c1d9 : $12
	adc $03                                                  ; $c1da : $65, $03
	.db $02                                                  ; $c1dc : $02
	asl $02                                                  ; $c1dd : $06, $02
	.db $12                                                  ; $c1df : $12
	adc $03                                                  ; $c1e0 : $65, $03
	.db $02                                                  ; $c1e2 : $02
	eor $00                                                  ; $c1e3 : $45, $00
	.db $12                                                  ; $c1e5 : $12
	adc $03                                                  ; $c1e6 : $65, $03
	.db $02                                                  ; $c1e8 : $02
	.db $b3                                                  ; $c1e9 : $b3
	.db $02                                                  ; $c1ea : $02
	.db $12                                                  ; $c1eb : $12
	adc $03                                                  ; $c1ec : $65, $03
	.db $03                                                  ; $c1ee : $03
	php                                                  ; $c1ef : $08
	.db $00                                                  ; $c1f0 : $00
	.db $12                                                  ; $c1f1 : $12
	adc $03                                                  ; $c1f2 : $65, $03
	.db $02                                                  ; $c1f4 : $02
	.db $b3                                                  ; $c1f5 : $b3
	.db $02                                                  ; $c1f6 : $02
	.db $12                                                  ; $c1f7 : $12
	adc $03                                                  ; $c1f8 : $65, $03
	ora $67                                                  ; $c1fa : $05, $67
	.db $00                                                  ; $c1fc : $00
	.db $12                                                  ; $c1fd : $12
	adc $03                                                  ; $c1fe : $65, $03
	.db $00                                                  ; $c200 : $00
	ora ($ff, x)                                                  ; $c201 : $01, $ff
	.db $12                                                  ; $c203 : $12
	adc $03                                                  ; $c204 : $65, $03
	.db $02                                                  ; $c206 : $02
	.db $b3                                                  ; $c207 : $b3
	.db $00                                                  ; $c208 : $00
	.db $12                                                  ; $c209 : $12
	adc $03                                                  ; $c20a : $65, $03
	.db $02                                                  ; $c20c : $02
	eor $02                                                  ; $c20d : $45, $02
	.db $12                                                  ; $c20f : $12
	adc $03                                                  ; $c210 : $65, $03
	.db $02                                                  ; $c212 : $02
	.db $b3                                                  ; $c213 : $b3
	.db $00                                                  ; $c214 : $00
	.db $12                                                  ; $c215 : $12
	adc $03                                                  ; $c216 : $65, $03
	.db $02                                                  ; $c218 : $02
	eor $02                                                  ; $c219 : $45, $02
	.db $12                                                  ; $c21b : $12
	adc $03                                                  ; $c21c : $65, $03
	.db $02                                                  ; $c21e : $02
	.db $b3                                                  ; $c21f : $b3
	.db $00                                                  ; $c220 : $00
	.db $12                                                  ; $c221 : $12
	adc $03                                                  ; $c222 : $65, $03
	.db $03                                                  ; $c224 : $03
	php                                                  ; $c225 : $08
	.db $02                                                  ; $c226 : $02
	.db $12                                                  ; $c227 : $12
	adc $03                                                  ; $c228 : $65, $03
	asl $10                                                  ; $c22a : $06, $10
	.db $00                                                  ; $c22c : $00
	ora #$0d                                                  ; $c22d : $09, $0d
	.db $03                                                  ; $c22f : $03
	ora ($84, x)                                                  ; $c230 : $01, $84
	.db $02                                                  ; $c232 : $02
	ora #$0d                                                  ; $c233 : $09, $0d
	.db $03                                                  ; $c235 : $03
	ora ($84, x)                                                  ; $c236 : $01, $84
	.db $02                                                  ; $c238 : $02
	ora #$0d                                                  ; $c239 : $09, $0d
	.db $03                                                  ; $c23b : $03
	ora ($84, x)                                                  ; $c23c : $01, $84
	.db $00                                                  ; $c23e : $00
	ora #$0d                                                  ; $c23f : $09, $0d
	.db $03                                                  ; $c241 : $03
	ora ($cd, x)                                                  ; $c242 : $01, $cd
	.db $ff                                                  ; $c244 : $ff
	ora #$0d                                                  ; $c245 : $09, $0d
	.db $03                                                  ; $c247 : $03
	.db $02                                                  ; $c248 : $02
	asl $02                                                  ; $c249 : $06, $02
	ora #$65                                                  ; $c24b : $09, $65
	.db $03                                                  ; $c24d : $03
	.db $00                                                  ; $c24e : $00
	ora ($ff, x)                                                  ; $c24f : $01, $ff
	.db $12                                                  ; $c251 : $12
	lda $03                                                  ; $c252 : $a5, $03
	ora ($cd, x)                                                  ; $c254 : $01, $cd
	.db $00                                                  ; $c256 : $00
	.db $12                                                  ; $c257 : $12
	adc $03                                                  ; $c258 : $65, $03
	.db $03                                                  ; $c25a : $03
	php                                                  ; $c25b : $08
	.db $02                                                  ; $c25c : $02
	.db $12                                                  ; $c25d : $12
	adc $03                                                  ; $c25e : $65, $03
	.db $02                                                  ; $c260 : $02
	asl $00                                                  ; $c261 : $06, $00
	.db $12                                                  ; $c263 : $12
	lda $03                                                  ; $c264 : $a5, $03
	.db $03                                                  ; $c266 : $03
	php                                                  ; $c267 : $08
	.db $02                                                  ; $c268 : $02
	.db $12                                                  ; $c269 : $12
	.db $67                                                  ; $c26a : $67
	.db $03                                                  ; $c26b : $03
	.db $00                                                  ; $c26c : $00
	.db $73                                                  ; $c26d : $73
	.db $00                                                  ; $c26e : $00
	.db $12                                                  ; $c26f : $12
	.db $b7                                                  ; $c270 : $b7
	.db $03                                                  ; $c271 : $03
	.db $00                                                  ; $c272 : $00
	ora ($ff, x)                                                  ; $c273 : $01, $ff
	.db $12                                                  ; $c275 : $12
	.db $67                                                  ; $c276 : $67
	.db $03                                                  ; $c277 : $03
	.db $00                                                  ; $c278 : $00
	.db $73                                                  ; $c279 : $73
	.db $ff                                                  ; $c27a : $ff
	.db $12                                                  ; $c27b : $12
	.db $b7                                                  ; $c27c : $b7
	.db $03                                                  ; $c27d : $03
	.db $02                                                  ; $c27e : $02
	asl $ff                                                  ; $c27f : $06, $ff
	.db $12                                                  ; $c281 : $12
	.db $b7                                                  ; $c282 : $b7
	.db $03                                                  ; $c283 : $03
	.db $02                                                  ; $c284 : $02
	eor $ff                                                  ; $c285 : $45, $ff
	.db $12                                                  ; $c287 : $12
	.db $b7                                                  ; $c288 : $b7
	.db $03                                                  ; $c289 : $03
	.db $02                                                  ; $c28a : $02
	.db $b3                                                  ; $c28b : $b3
	.db $ff                                                  ; $c28c : $ff
	.db $12                                                  ; $c28d : $12
	.db $b7                                                  ; $c28e : $b7
	.db $03                                                  ; $c28f : $03
	.db $02                                                  ; $c290 : $02
	eor $ff                                                  ; $c291 : $45, $ff
	.db $12                                                  ; $c293 : $12
	.db $b7                                                  ; $c294 : $b7
	.db $03                                                  ; $c295 : $03
	.db $02                                                  ; $c296 : $02
	asl $ff                                                  ; $c297 : $06, $ff
	bit $a0                                                  ; $c299 : $24, $a0
	.db $03                                                  ; $c29b : $03
	ora ($cd, x)                                                  ; $c29c : $01, $cd
	.db $00                                                  ; $c29e : $00
	.db $12                                                  ; $c29f : $12
	ldy #$03                                                  ; $c2a0 : $a0, $03
	.db $00                                                  ; $c2a2 : $00
	ora ($02, x)                                                  ; $c2a3 : $01, $02
	.db $12                                                  ; $c2a5 : $12
	.db $a7                                                  ; $c2a6 : $a7
	.db $03                                                  ; $c2a7 : $03
	ora ($84, x)                                                  ; $c2a8 : $01, $84
	.db $00                                                  ; $c2aa : $00
	.db $12                                                  ; $c2ab : $12
	.db $a7                                                  ; $c2ac : $a7
	.db $03                                                  ; $c2ad : $03
	ora ($22, x)                                                  ; $c2ae : $01, $22
	.db $02                                                  ; $c2b0 : $02
	.db $12                                                  ; $c2b1 : $12
	.db $a7                                                  ; $c2b2 : $a7
	.db $03                                                  ; $c2b3 : $03
	ora ($84, x)                                                  ; $c2b4 : $01, $84
	.db $00                                                  ; $c2b6 : $00
	.db $12                                                  ; $c2b7 : $12
	.db $a7                                                  ; $c2b8 : $a7
	.db $03                                                  ; $c2b9 : $03
	ora ($59, x)                                                  ; $c2ba : $01, $59
	.db $00                                                  ; $c2bc : $00
	.db $12                                                  ; $c2bd : $12
	.db $a7                                                  ; $c2be : $a7
	.db $03                                                  ; $c2bf : $03
	ora ($84, x)                                                  ; $c2c0 : $01, $84
	.db $ff                                                  ; $c2c2 : $ff
	.db $12                                                  ; $c2c3 : $12
	ora $0303                                                  ; $c2c4 : $0d, $03, $03
	php                                                  ; $c2c7 : $08
	.db $00                                                  ; $c2c8 : $00
	ora #$0d                                                  ; $c2c9 : $09, $0d
	.db $03                                                  ; $c2cb : $03
	ora ($84, x)                                                  ; $c2cc : $01, $84
	.db $02                                                  ; $c2ce : $02
	ora #$0d                                                  ; $c2cf : $09, $0d
	.db $03                                                  ; $c2d1 : $03
	ora ($84, x)                                                  ; $c2d2 : $01, $84
	.db $02                                                  ; $c2d4 : $02
	ora #$0d                                                  ; $c2d5 : $09, $0d
	.db $03                                                  ; $c2d7 : $03
	ora ($84, x)                                                  ; $c2d8 : $01, $84
	.db $00                                                  ; $c2da : $00
	ora #$0d                                                  ; $c2db : $09, $0d
	.db $03                                                  ; $c2dd : $03
	ora ($cd, x)                                                  ; $c2de : $01, $cd
	.db $ff                                                  ; $c2e0 : $ff
	ora #$0d                                                  ; $c2e1 : $09, $0d
	.db $03                                                  ; $c2e3 : $03
	.db $02                                                  ; $c2e4 : $02
	asl $02                                                  ; $c2e5 : $06, $02
	ora #$0d                                                  ; $c2e7 : $09, $0d
	.db $03                                                  ; $c2e9 : $03
	ora ($cd, x)                                                  ; $c2ea : $01, $cd
	.db $ff                                                  ; $c2ec : $ff
	.db $12                                                  ; $c2ed : $12
	ora $0103                                                  ; $c2ee : $0d, $03, $01
	sty $00                                                  ; $c2f1 : $84, $00
	.db $12                                                  ; $c2f3 : $12
	ora $0103                                                  ; $c2f4 : $0d, $03, $01
	eor $1202, y                                                  ; $c2f7 : $59, $02, $12
	ora $0103                                                  ; $c2fa : $0d, $03, $01
	sty $00                                                  ; $c2fd : $84, $00
	.db $12                                                  ; $c2ff : $12
	ora $03.w                                                  ; $c300 : $0d, $03, $00
	ora ($02, x)                                                  ; $c303 : $01, $02
	bit $a0                                                  ; $c305 : $24, $a0
	.db $03                                                  ; $c307 : $03
	ora ($84, x)                                                  ; $c308 : $01, $84
	.db $00                                                  ; $c30a : $00
	.db $12                                                  ; $c30b : $12
	ldy #$03                                                  ; $c30c : $a0, $03
	.db $00                                                  ; $c30e : $00
	ora ($02, x)                                                  ; $c30f : $01, $02
	.db $12                                                  ; $c311 : $12
	.db $a7                                                  ; $c312 : $a7
	.db $03                                                  ; $c313 : $03
	ora ($59, x)                                                  ; $c314 : $01, $59
	.db $00                                                  ; $c316 : $00
	.db $12                                                  ; $c317 : $12
	.db $a7                                                  ; $c318 : $a7
	.db $03                                                  ; $c319 : $03
	ora ($cd, x)                                                  ; $c31a : $01, $cd
	.db $02                                                  ; $c31c : $02
	.db $12                                                  ; $c31d : $12
	.db $a7                                                  ; $c31e : $a7
	.db $03                                                  ; $c31f : $03
	.db $02                                                  ; $c320 : $02
	asl $00                                                  ; $c321 : $06, $00
	.db $12                                                  ; $c323 : $12
	.db $a7                                                  ; $c324 : $a7
	.db $03                                                  ; $c325 : $03
	ora ($cd, x)                                                  ; $c326 : $01, $cd
	.db $00                                                  ; $c328 : $00
	.db $12                                                  ; $c329 : $12
	.db $a7                                                  ; $c32a : $a7
	.db $03                                                  ; $c32b : $03
	.db $02                                                  ; $c32c : $02
	eor $ff                                                  ; $c32d : $45, $ff
	.db $12                                                  ; $c32f : $12
	ora $0403                                                  ; $c330 : $0d, $03, $04
	.db $0c                                                  ; $c333 : $0c
	.db $00                                                  ; $c334 : $00
	ora #$0d                                                  ; $c335 : $09, $0d
	.db $03                                                  ; $c337 : $03
	.db $02                                                  ; $c338 : $02
	asl $02                                                  ; $c339 : $06, $02
	ora #$0d                                                  ; $c33b : $09, $0d
	.db $03                                                  ; $c33d : $03
	.db $02                                                  ; $c33e : $02
	asl $02                                                  ; $c33f : $06, $02
	ora #$0d                                                  ; $c341 : $09, $0d
	.db $03                                                  ; $c343 : $03
	ora ($84, x)                                                  ; $c344 : $01, $84
	.db $00                                                  ; $c346 : $00
	ora #$0d                                                  ; $c347 : $09, $0d
	.db $03                                                  ; $c349 : $03
	ora ($cd, x)                                                  ; $c34a : $01, $cd
	.db $ff                                                  ; $c34c : $ff
	ora #$0d                                                  ; $c34d : $09, $0d
	.db $03                                                  ; $c34f : $03
	.db $02                                                  ; $c350 : $02
	asl $02                                                  ; $c351 : $06, $02
	ora #$0d                                                  ; $c353 : $09, $0d
	.db $03                                                  ; $c355 : $03
	.db $02                                                  ; $c356 : $02
	eor $ff                                                  ; $c357 : $45, $ff
	.db $12                                                  ; $c359 : $12
	ora $0203                                                  ; $c35a : $0d, $03, $02
	asl $00                                                  ; $c35d : $06, $00
	.db $12                                                  ; $c35f : $12
	ora $0103                                                  ; $c360 : $0d, $03, $01
	cmp $1202                                                  ; $c363 : $cd, $02, $12
	ora $0203                                                  ; $c366 : $0d, $03, $02
	asl $00                                                  ; $c369 : $06, $00
	.db $12                                                  ; $c36b : $12
	ora $03.w                                                  ; $c36c : $0d, $03, $00
	ora ($02, x)                                                  ; $c36f : $01, $02
	.db $12                                                  ; $c371 : $12
	.db $a7                                                  ; $c372 : $a7
	.db $03                                                  ; $c373 : $03
	.db $04                                                  ; $c374 : $04
	.db $0c                                                  ; $c375 : $0c
	.db $00                                                  ; $c376 : $00
	.db $12                                                  ; $c377 : $12
	.db $a7                                                  ; $c378 : $a7
	.db $03                                                  ; $c379 : $03
	.db $00                                                  ; $c37a : $00
	ora ($ff, x)                                                  ; $c37b : $01, $ff
	.db $12                                                  ; $c37d : $12
	.db $a7                                                  ; $c37e : $a7
	.db $03                                                  ; $c37f : $03
	ora ($cd, x)                                                  ; $c380 : $01, $cd
	.db $00                                                  ; $c382 : $00
	.db $12                                                  ; $c383 : $12
	.db $a7                                                  ; $c384 : $a7
	.db $03                                                  ; $c385 : $03
	.db $02                                                  ; $c386 : $02
	.db $b3                                                  ; $c387 : $b3
	.db $02                                                  ; $c388 : $02
	.db $12                                                  ; $c389 : $12
	.db $a7                                                  ; $c38a : $a7
	.db $03                                                  ; $c38b : $03
	.db $02                                                  ; $c38c : $02
	eor $00                                                  ; $c38d : $45, $00
	.db $12                                                  ; $c38f : $12
	.db $a7                                                  ; $c390 : $a7
	.db $03                                                  ; $c391 : $03
	ora ($cd, x)                                                  ; $c392 : $01, $cd
	.db $02                                                  ; $c394 : $02
	.db $12                                                  ; $c395 : $12
	.db $a7                                                  ; $c396 : $a7
	.db $03                                                  ; $c397 : $03
	ora ($84, x)                                                  ; $c398 : $01, $84
	.db $00                                                  ; $c39a : $00
	.db $12                                                  ; $c39b : $12
	.db $a7                                                  ; $c39c : $a7
	.db $03                                                  ; $c39d : $03
	ora ($22, x)                                                  ; $c39e : $01, $22
	.db $ff                                                  ; $c3a0 : $ff
	.db $12                                                  ; $c3a1 : $12
	.db $a7                                                  ; $c3a2 : $a7
	.db $03                                                  ; $c3a3 : $03
	ora $67                                                  ; $c3a4 : $05, $67
	.db $00                                                  ; $c3a6 : $00
	.db $12                                                  ; $c3a7 : $12
	.db $a7                                                  ; $c3a8 : $a7
	.db $03                                                  ; $c3a9 : $03
	.db $00                                                  ; $c3aa : $00
	ora ($ff, x)                                                  ; $c3ab : $01, $ff
	.db $12                                                  ; $c3ad : $12
	.db $a7                                                  ; $c3ae : $a7
	.db $03                                                  ; $c3af : $03
	.db $02                                                  ; $c3b0 : $02
	.db $b3                                                  ; $c3b1 : $b3
	.db $00                                                  ; $c3b2 : $00
	.db $12                                                  ; $c3b3 : $12
	.db $a7                                                  ; $c3b4 : $a7
	.db $03                                                  ; $c3b5 : $03
	.db $02                                                  ; $c3b6 : $02
	eor $02                                                  ; $c3b7 : $45, $02
	.db $12                                                  ; $c3b9 : $12
	.db $a7                                                  ; $c3ba : $a7
	.db $03                                                  ; $c3bb : $03
	ora ($84, x)                                                  ; $c3bc : $01, $84
	.db $00                                                  ; $c3be : $00
	.db $12                                                  ; $c3bf : $12
	.db $a7                                                  ; $c3c0 : $a7
	.db $03                                                  ; $c3c1 : $03
	ora ($59, x)                                                  ; $c3c2 : $01, $59
	.db $02                                                  ; $c3c4 : $02
	.db $12                                                  ; $c3c5 : $12
	.db $a7                                                  ; $c3c6 : $a7
	.db $03                                                  ; $c3c7 : $03
	ora ($cd, x)                                                  ; $c3c8 : $01, $cd
	.db $00                                                  ; $c3ca : $00
	.db $12                                                  ; $c3cb : $12
	.db $a7                                                  ; $c3cc : $a7
	.db $03                                                  ; $c3cd : $03
	.db $02                                                  ; $c3ce : $02
	asl $ff                                                  ; $c3cf : $06, $ff
	.db $12                                                  ; $c3d1 : $12
	.db $a7                                                  ; $c3d2 : $a7
	.db $03                                                  ; $c3d3 : $03
	.db $02                                                  ; $c3d4 : $02
	eor $00                                                  ; $c3d5 : $45, $00
	.db $12                                                  ; $c3d7 : $12
	.db $a7                                                  ; $c3d8 : $a7
	.db $03                                                  ; $c3d9 : $03
	.db $04                                                  ; $c3da : $04
	.db $8b                                                  ; $c3db : $8b
	.db $ff                                                  ; $c3dc : $ff
	.db $12                                                  ; $c3dd : $12
	.db $a7                                                  ; $c3de : $a7
	.db $03                                                  ; $c3df : $03
	ora ($84, x)                                                  ; $c3e0 : $01, $84
	.db $00                                                  ; $c3e2 : $00
	.db $12                                                  ; $c3e3 : $12
	.db $a7                                                  ; $c3e4 : $a7
	.db $03                                                  ; $c3e5 : $03
	.db $02                                                  ; $c3e6 : $02
	.db $b3                                                  ; $c3e7 : $b3
	.db $02                                                  ; $c3e8 : $02
	.db $12                                                  ; $c3e9 : $12
	.db $a7                                                  ; $c3ea : $a7
	.db $03                                                  ; $c3eb : $03
	.db $02                                                  ; $c3ec : $02
	eor $00                                                  ; $c3ed : $45, $00
	.db $12                                                  ; $c3ef : $12
	.db $a7                                                  ; $c3f0 : $a7
	.db $03                                                  ; $c3f1 : $03
	.db $02                                                  ; $c3f2 : $02
	.db $b3                                                  ; $c3f3 : $b3
	.db $02                                                  ; $c3f4 : $02
	.db $12                                                  ; $c3f5 : $12
	.db $a7                                                  ; $c3f6 : $a7
	.db $03                                                  ; $c3f7 : $03
	.db $02                                                  ; $c3f8 : $02
	eor $00                                                  ; $c3f9 : $45, $00
	.db $12                                                  ; $c3fb : $12
	.db $a7                                                  ; $c3fc : $a7
	.db $03                                                  ; $c3fd : $03
	.db $02                                                  ; $c3fe : $02
	asl $02                                                  ; $c3ff : $06, $02
	.db $12                                                  ; $c401 : $12
	.db $a7                                                  ; $c402 : $a7
	.db $03                                                  ; $c403 : $03
	.db $04                                                  ; $c404 : $04
	.db $8b                                                  ; $c405 : $8b
	.db $00                                                  ; $c406 : $00
	.db $12                                                  ; $c407 : $12
	.db $a7                                                  ; $c408 : $a7
	.db $03                                                  ; $c409 : $03
	.db $00                                                  ; $c40a : $00
	ora ($ff, x)                                                  ; $c40b : $01, $ff
	.db $12                                                  ; $c40d : $12
	.db $a7                                                  ; $c40e : $a7
	.db $03                                                  ; $c40f : $03
	.db $04                                                  ; $c410 : $04
	.db $0c                                                  ; $c411 : $0c
	.db $02                                                  ; $c412 : $02
	.db $12                                                  ; $c413 : $12
	.db $a7                                                  ; $c414 : $a7
	.db $03                                                  ; $c415 : $03
	.db $02                                                  ; $c416 : $02
	asl $ff                                                  ; $c417 : $06, $ff
	.db $12                                                  ; $c419 : $12
	.db $a7                                                  ; $c41a : $a7
	.db $03                                                  ; $c41b : $03
	ora ($cd, x)                                                  ; $c41c : $01, $cd
	.db $00                                                  ; $c41e : $00
	.db $12                                                  ; $c41f : $12
	.db $a7                                                  ; $c420 : $a7
	.db $03                                                  ; $c421 : $03
	ora ($84, x)                                                  ; $c422 : $01, $84
	.db $00                                                  ; $c424 : $00
	.db $12                                                  ; $c425 : $12
	.db $a7                                                  ; $c426 : $a7
	.db $03                                                  ; $c427 : $03
	ora ($cd, x)                                                  ; $c428 : $01, $cd
	.db $00                                                  ; $c42a : $00
	.db $12                                                  ; $c42b : $12
	.db $a7                                                  ; $c42c : $a7
	.db $03                                                  ; $c42d : $03
	.db $02                                                  ; $c42e : $02
	asl $ff                                                  ; $c42f : $06, $ff
	.db $12                                                  ; $c431 : $12
	.db $a7                                                  ; $c432 : $a7
	.db $03                                                  ; $c433 : $03
	.db $04                                                  ; $c434 : $04
	.db $8b                                                  ; $c435 : $8b
	.db $00                                                  ; $c436 : $00
	.db $12                                                  ; $c437 : $12
	.db $a7                                                  ; $c438 : $a7
	.db $03                                                  ; $c439 : $03
	.db $00                                                  ; $c43a : $00
	ora ($02, x)                                                  ; $c43b : $01, $02
	.db $12                                                  ; $c43d : $12
	.db $a7                                                  ; $c43e : $a7
	.db $03                                                  ; $c43f : $03
	.db $02                                                  ; $c440 : $02
	eor $00                                                  ; $c441 : $45, $00
	.db $12                                                  ; $c443 : $12
	.db $a7                                                  ; $c444 : $a7
	.db $03                                                  ; $c445 : $03
	.db $02                                                  ; $c446 : $02
	eor $02                                                  ; $c447 : $45, $02
	.db $12                                                  ; $c449 : $12
	.db $a7                                                  ; $c44a : $a7
	.db $03                                                  ; $c44b : $03
	.db $02                                                  ; $c44c : $02
	eor $00                                                  ; $c44d : $45, $00
	.db $12                                                  ; $c44f : $12
	.db $a7                                                  ; $c450 : $a7
	.db $03                                                  ; $c451 : $03
	.db $03                                                  ; $c452 : $03
	php                                                  ; $c453 : $08
	.db $ff                                                  ; $c454 : $ff
	.db $12                                                  ; $c455 : $12
	.db $a7                                                  ; $c456 : $a7
	.db $03                                                  ; $c457 : $03
	.db $02                                                  ; $c458 : $02
	.db $b3                                                  ; $c459 : $b3
	.db $00                                                  ; $c45a : $00
	.db $12                                                  ; $c45b : $12
	.db $a7                                                  ; $c45c : $a7
	.db $03                                                  ; $c45d : $03
	.db $02                                                  ; $c45e : $02
	eor $02                                                  ; $c45f : $45, $02
	.db $12                                                  ; $c461 : $12
	.db $a7                                                  ; $c462 : $a7
	.db $03                                                  ; $c463 : $03
	.db $04                                                  ; $c464 : $04
	.db $0c                                                  ; $c465 : $0c
	.db $00                                                  ; $c466 : $00
	.db $12                                                  ; $c467 : $12
	.db $a7                                                  ; $c468 : $a7
	.db $03                                                  ; $c469 : $03
	.db $00                                                  ; $c46a : $00
	ora ($02, x)                                                  ; $c46b : $01, $02
	.db $12                                                  ; $c46d : $12
	.db $a7                                                  ; $c46e : $a7
	.db $03                                                  ; $c46f : $03
	.db $02                                                  ; $c470 : $02
	.db $b3                                                  ; $c471 : $b3
	.db $00                                                  ; $c472 : $00
	.db $12                                                  ; $c473 : $12
	.db $a7                                                  ; $c474 : $a7
	.db $03                                                  ; $c475 : $03
	.db $02                                                  ; $c476 : $02
	eor $02                                                  ; $c477 : $45, $02
	.db $12                                                  ; $c479 : $12
	.db $a7                                                  ; $c47a : $a7
	.db $03                                                  ; $c47b : $03
	.db $02                                                  ; $c47c : $02
	asl $00                                                  ; $c47d : $06, $00
	.db $12                                                  ; $c47f : $12
	.db $a7                                                  ; $c480 : $a7
	.db $03                                                  ; $c481 : $03
	.db $02                                                  ; $c482 : $02
	pla                                                  ; $c483 : $68
	.db $ff                                                  ; $c484 : $ff
	.db $12                                                  ; $c485 : $12
	.db $a7                                                  ; $c486 : $a7
	.db $03                                                  ; $c487 : $03
	.db $02                                                  ; $c488 : $02
	.db $b3                                                  ; $c489 : $b3
	.db $00                                                  ; $c48a : $00
	.db $12                                                  ; $c48b : $12
	.db $a7                                                  ; $c48c : $a7
	.db $03                                                  ; $c48d : $03
	.db $03                                                  ; $c48e : $03
	php                                                  ; $c48f : $08
	.db $02                                                  ; $c490 : $02
	.db $12                                                  ; $c491 : $12
	.db $a7                                                  ; $c492 : $a7
	.db $03                                                  ; $c493 : $03
	.db $02                                                  ; $c494 : $02
	.db $b3                                                  ; $c495 : $b3
	.db $00                                                  ; $c496 : $00
	.db $12                                                  ; $c497 : $12
	.db $a7                                                  ; $c498 : $a7
	.db $03                                                  ; $c499 : $03
	.db $02                                                  ; $c49a : $02
	eor $02                                                  ; $c49b : $45, $02
	.db $12                                                  ; $c49d : $12
	.db $a7                                                  ; $c49e : $a7
	.db $03                                                  ; $c49f : $03
	.db $02                                                  ; $c4a0 : $02
	asl $00                                                  ; $c4a1 : $06, $00
	.db $12                                                  ; $c4a3 : $12
	.db $a7                                                  ; $c4a4 : $a7
	.db $03                                                  ; $c4a5 : $03
	ora ($cd, x)                                                  ; $c4a6 : $01, $cd
	.db $02                                                  ; $c4a8 : $02
	.db $12                                                  ; $c4a9 : $12
	.db $a7                                                  ; $c4aa : $a7
	.db $03                                                  ; $c4ab : $03
	ora ($84, x)                                                  ; $c4ac : $01, $84
	.db $00                                                  ; $c4ae : $00
	.db $12                                                  ; $c4af : $12
	.db $a7                                                  ; $c4b0 : $a7
	.db $03                                                  ; $c4b1 : $03
	ora ($cd, x)                                                  ; $c4b2 : $01, $cd
	.db $ff                                                  ; $c4b4 : $ff
	.db $12                                                  ; $c4b5 : $12
	.db $a7                                                  ; $c4b6 : $a7
	.db $03                                                  ; $c4b7 : $03
	ora ($22, x)                                                  ; $c4b8 : $01, $22
	.db $00                                                  ; $c4ba : $00
	.db $12                                                  ; $c4bb : $12
	.db $a7                                                  ; $c4bc : $a7
	.db $03                                                  ; $c4bd : $03
	ora ($59, x)                                                  ; $c4be : $01, $59
	.db $02                                                  ; $c4c0 : $02
	.db $12                                                  ; $c4c1 : $12
	ora $0303                                                  ; $c4c2 : $0d, $03, $03
	php                                                  ; $c4c5 : $08
	.db $00                                                  ; $c4c6 : $00
	ora #$0d                                                  ; $c4c7 : $09, $0d
	.db $03                                                  ; $c4c9 : $03
	ora ($84, x)                                                  ; $c4ca : $01, $84
	.db $02                                                  ; $c4cc : $02
	ora #$0d                                                  ; $c4cd : $09, $0d
	.db $03                                                  ; $c4cf : $03
	ora ($84, x)                                                  ; $c4d0 : $01, $84
	.db $02                                                  ; $c4d2 : $02
	ora #$0d                                                  ; $c4d3 : $09, $0d
	.db $03                                                  ; $c4d5 : $03
	ora ($84, x)                                                  ; $c4d6 : $01, $84
	.db $00                                                  ; $c4d8 : $00
	ora #$0d                                                  ; $c4d9 : $09, $0d
	.db $03                                                  ; $c4db : $03
	ora ($cd, x)                                                  ; $c4dc : $01, $cd
	.db $ff                                                  ; $c4de : $ff
	ora #$0d                                                  ; $c4df : $09, $0d
	.db $03                                                  ; $c4e1 : $03
	.db $02                                                  ; $c4e2 : $02
	asl $02                                                  ; $c4e3 : $06, $02
	ora #$0d                                                  ; $c4e5 : $09, $0d
	.db $03                                                  ; $c4e7 : $03
	ora ($cd, x)                                                  ; $c4e8 : $01, $cd
	.db $ff                                                  ; $c4ea : $ff
	.db $12                                                  ; $c4eb : $12
	ora $0103                                                  ; $c4ec : $0d, $03, $01
	sty $00                                                  ; $c4ef : $84, $00
	.db $12                                                  ; $c4f1 : $12
	ora $0103                                                  ; $c4f2 : $0d, $03, $01
	eor $1202, y                                                  ; $c4f5 : $59, $02, $12
	ora $0103                                                  ; $c4f8 : $0d, $03, $01
	sty $00                                                  ; $c4fb : $84, $00
	.db $12                                                  ; $c4fd : $12
	ora $03.w                                                  ; $c4fe : $0d, $03, $00
	ora ($02, x)                                                  ; $c501 : $01, $02
	.db $12                                                  ; $c503 : $12
	.db $a7                                                  ; $c504 : $a7
	.db $03                                                  ; $c505 : $03
	.db $04                                                  ; $c506 : $04
	.db $8b                                                  ; $c507 : $8b
	.db $00                                                  ; $c508 : $00
	.db $12                                                  ; $c509 : $12
	.db $a7                                                  ; $c50a : $a7
	.db $03                                                  ; $c50b : $03
	.db $02                                                  ; $c50c : $02
	eor $ff                                                  ; $c50d : $45, $ff
	.db $12                                                  ; $c50f : $12
	.db $a7                                                  ; $c510 : $a7
	.db $03                                                  ; $c511 : $03
	.db $02                                                  ; $c512 : $02
	eor $00                                                  ; $c513 : $45, $00
	.db $12                                                  ; $c515 : $12
	.db $a7                                                  ; $c516 : $a7
	.db $03                                                  ; $c517 : $03
	.db $02                                                  ; $c518 : $02
	eor $02                                                  ; $c519 : $45, $02
	.db $12                                                  ; $c51b : $12
	.db $a7                                                  ; $c51c : $a7
	.db $03                                                  ; $c51d : $03
	.db $03                                                  ; $c51e : $03
	php                                                  ; $c51f : $08
	.db $00                                                  ; $c520 : $00
	.db $12                                                  ; $c521 : $12
	.db $a7                                                  ; $c522 : $a7
	.db $03                                                  ; $c523 : $03
	.db $02                                                  ; $c524 : $02
	eor $ff                                                  ; $c525 : $45, $ff
	.db $12                                                  ; $c527 : $12
	.db $a7                                                  ; $c528 : $a7
	.db $03                                                  ; $c529 : $03
	.db $02                                                  ; $c52a : $02
	eor $00                                                  ; $c52b : $45, $00
	.db $12                                                  ; $c52d : $12
	.db $a7                                                  ; $c52e : $a7
	.db $03                                                  ; $c52f : $03
	.db $02                                                  ; $c530 : $02
	.db $b3                                                  ; $c531 : $b3
	.db $02                                                  ; $c532 : $02
	.db $12                                                  ; $c533 : $12
	.db $a7                                                  ; $c534 : $a7
	.db $03                                                  ; $c535 : $03
	asl $10                                                  ; $c536 : $06, $10
	.db $00                                                  ; $c538 : $00
	.db $12                                                  ; $c539 : $12
	.db $a7                                                  ; $c53a : $a7
	.db $03                                                  ; $c53b : $03
	.db $03                                                  ; $c53c : $03
	php                                                  ; $c53d : $08
	.db $ff                                                  ; $c53e : $ff
	.db $12                                                  ; $c53f : $12
	.db $a7                                                  ; $c540 : $a7
	.db $03                                                  ; $c541 : $03
	.db $03                                                  ; $c542 : $03
	php                                                  ; $c543 : $08
	.db $00                                                  ; $c544 : $00
	.db $12                                                  ; $c545 : $12
	.db $a7                                                  ; $c546 : $a7
	.db $03                                                  ; $c547 : $03
	.db $03                                                  ; $c548 : $03
	.db $9b                                                  ; $c549 : $9b
	.db $02                                                  ; $c54a : $02
	.db $12                                                  ; $c54b : $12
	.db $a7                                                  ; $c54c : $a7
	.db $03                                                  ; $c54d : $03
	.db $03                                                  ; $c54e : $03
	php                                                  ; $c54f : $08
	.db $00                                                  ; $c550 : $00
	.db $12                                                  ; $c551 : $12
	.db $a7                                                  ; $c552 : $a7
	.db $03                                                  ; $c553 : $03
	.db $02                                                  ; $c554 : $02
	.db $b3                                                  ; $c555 : $b3
	.db $ff                                                  ; $c556 : $ff
	.db $12                                                  ; $c557 : $12
	.db $a7                                                  ; $c558 : $a7
	.db $03                                                  ; $c559 : $03
	.db $02                                                  ; $c55a : $02
	eor $00                                                  ; $c55b : $45, $00
	.db $12                                                  ; $c55d : $12
	.db $a7                                                  ; $c55e : $a7
	.db $03                                                  ; $c55f : $03
	ora ($cd, x)                                                  ; $c560 : $01, $cd
	.db $02                                                  ; $c562 : $02
	.db $12                                                  ; $c563 : $12
	.db $a7                                                  ; $c564 : $a7
	.db $03                                                  ; $c565 : $03
	asl $10                                                  ; $c566 : $06, $10
	.db $00                                                  ; $c568 : $00
	.db $12                                                  ; $c569 : $12
	.db $a7                                                  ; $c56a : $a7
	.db $03                                                  ; $c56b : $03
	.db $02                                                  ; $c56c : $02
	asl $ff                                                  ; $c56d : $06, $ff
	.db $12                                                  ; $c56f : $12
	.db $a7                                                  ; $c570 : $a7
	.db $03                                                  ; $c571 : $03
	.db $02                                                  ; $c572 : $02
	asl $00                                                  ; $c573 : $06, $00
	.db $12                                                  ; $c575 : $12
	.db $a7                                                  ; $c576 : $a7
	.db $03                                                  ; $c577 : $03
	.db $02                                                  ; $c578 : $02
	asl $02                                                  ; $c579 : $06, $02
	.db $12                                                  ; $c57b : $12
	.db $a7                                                  ; $c57c : $a7
	.db $03                                                  ; $c57d : $03
	asl $10                                                  ; $c57e : $06, $10
	.db $00                                                  ; $c580 : $00
	.db $12                                                  ; $c581 : $12
	.db $a7                                                  ; $c582 : $a7
	.db $03                                                  ; $c583 : $03
	.db $02                                                  ; $c584 : $02
	asl $02                                                  ; $c585 : $06, $02
	.db $12                                                  ; $c587 : $12
	.db $a7                                                  ; $c588 : $a7
	.db $03                                                  ; $c589 : $03
	ora ($cd, x)                                                  ; $c58a : $01, $cd
	.db $00                                                  ; $c58c : $00
	.db $12                                                  ; $c58d : $12
	.db $a7                                                  ; $c58e : $a7
	.db $03                                                  ; $c58f : $03
	.db $02                                                  ; $c590 : $02
	asl $02                                                  ; $c591 : $06, $02
	.db $12                                                  ; $c593 : $12
	.db $a7                                                  ; $c594 : $a7
	.db $03                                                  ; $c595 : $03
	.db $02                                                  ; $c596 : $02
	eor $00                                                  ; $c597 : $45, $00
	.db $12                                                  ; $c599 : $12
	.db $a7                                                  ; $c59a : $a7
	.db $03                                                  ; $c59b : $03
	.db $00                                                  ; $c59c : $00
	ora ($ff, x)                                                  ; $c59d : $01, $ff
	.db $12                                                  ; $c59f : $12
	.db $a7                                                  ; $c5a0 : $a7
	.db $03                                                  ; $c5a1 : $03
	ora ($84, x)                                                  ; $c5a2 : $01, $84
	.db $ff                                                  ; $c5a4 : $ff
	.db $12                                                  ; $c5a5 : $12
	.db $a7                                                  ; $c5a6 : $a7
	.db $03                                                  ; $c5a7 : $03
	ora ($59, x)                                                  ; $c5a8 : $01, $59
	.db $ff                                                  ; $c5aa : $ff
	ora $a7                                                  ; $c5ab : $05, $a7
	.db $03                                                  ; $c5ad : $03
	ora ($22, x)                                                  ; $c5ae : $01, $22
	.db $ff                                                  ; $c5b0 : $ff
	ora $a7                                                  ; $c5b1 : $05, $a7
	.db $03                                                  ; $c5b3 : $03
	ora ($03, x)                                                  ; $c5b4 : $01, $03
	.db $ff                                                  ; $c5b6 : $ff
	ora $a7                                                  ; $c5b7 : $05, $a7
	.db $03                                                  ; $c5b9 : $03
	ora ($22, x)                                                  ; $c5ba : $01, $22
	.db $ff                                                  ; $c5bc : $ff
	ora $a7                                                  ; $c5bd : $05, $a7
	.db $03                                                  ; $c5bf : $03
	ora ($03, x)                                                  ; $c5c0 : $01, $03
	.db $ff                                                  ; $c5c2 : $ff
	ora $a7                                                  ; $c5c3 : $05, $a7
	.db $03                                                  ; $c5c5 : $03
	ora ($22, x)                                                  ; $c5c6 : $01, $22
	.db $ff                                                  ; $c5c8 : $ff
	ora $a7                                                  ; $c5c9 : $05, $a7
	.db $03                                                  ; $c5cb : $03
	ora ($03, x)                                                  ; $c5cc : $01, $03
	.db $ff                                                  ; $c5ce : $ff
	ora $a7                                                  ; $c5cf : $05, $a7
	.db $03                                                  ; $c5d1 : $03
	ora ($22, x)                                                  ; $c5d2 : $01, $22
	.db $ff                                                  ; $c5d4 : $ff
	ora $a7                                                  ; $c5d5 : $05, $a7
	.db $03                                                  ; $c5d7 : $03
	ora ($03, x)                                                  ; $c5d8 : $01, $03
	.db $ff                                                  ; $c5da : $ff
	jsr $03b7                                                  ; $c5db : $20, $b7, $03
	ora ($22, x)                                                  ; $c5de : $01, $22
	.db $ff                                                  ; $c5e0 : $ff
	.db $ff                                                  ; $c5e1 : $ff
	bit $ba                                                  ; $c5e2 : $24, $ba
	.db $13                                                  ; $c5e4 : $13
	.db $00                                                  ; $c5e5 : $00
	ldy $24ff                                                  ; $c5e6 : $ac, $ff, $24
	tsx                                                  ; $c5e9 : $ba
	.db $13                                                  ; $c5ea : $13
	.db $00                                                  ; $c5eb : $00
	sta ($ff), y                                                  ; $c5ec : $91, $ff
	bit $ba                                                  ; $c5ee : $24, $ba
	.db $13                                                  ; $c5f0 : $13
	.db $00                                                  ; $c5f1 : $00
	sta ($ff, x)                                                  ; $c5f2 : $81, $ff
	.db $12                                                  ; $c5f4 : $12
	tsx                                                  ; $c5f5 : $ba
	.db $13                                                  ; $c5f6 : $13
	.db $00                                                  ; $c5f7 : $00
	sta ($ff), y                                                  ; $c5f8 : $91, $ff
	.db $12                                                  ; $c5fa : $12
	tsx                                                  ; $c5fb : $ba
	.db $13                                                  ; $c5fc : $13
	.db $00                                                  ; $c5fd : $00
	ldy $24ff                                                  ; $c5fe : $ac, $ff, $24
	tsx                                                  ; $c601 : $ba
	.db $13                                                  ; $c602 : $13
	.db $00                                                  ; $c603 : $00
	.db $c2                                                  ; $c604 : $c2
	.db $ff                                                  ; $c605 : $ff
	.db $12                                                  ; $c606 : $12
	tsx                                                  ; $c607 : $ba
	.db $13                                                  ; $c608 : $13
	.db $00                                                  ; $c609 : $00
	ldy $12ff                                                  ; $c60a : $ac, $ff, $12
	tsx                                                  ; $c60d : $ba
	.db $13                                                  ; $c60e : $13
	.db $00                                                  ; $c60f : $00
	.db $c2                                                  ; $c610 : $c2
	.db $ff                                                  ; $c611 : $ff
	bit $ba                                                  ; $c612 : $24, $ba
	.db $13                                                  ; $c614 : $13
	.db $00                                                  ; $c615 : $00
	cmp $24ff, y                                                  ; $c616 : $d9, $ff, $24
	tsx                                                  ; $c619 : $ba
	.db $13                                                  ; $c61a : $13
	.db $00                                                  ; $c61b : $00
	.db $c2                                                  ; $c61c : $c2
	.db $ff                                                  ; $c61d : $ff
	bit $ba                                                  ; $c61e : $24, $ba
	.db $13                                                  ; $c620 : $13
	.db $00                                                  ; $c621 : $00
	ldy $12ff                                                  ; $c622 : $ac, $ff, $12
	tsx                                                  ; $c625 : $ba
	.db $13                                                  ; $c626 : $13
	.db $00                                                  ; $c627 : $00
	.db $c2                                                  ; $c628 : $c2
	.db $ff                                                  ; $c629 : $ff
	.db $12                                                  ; $c62a : $12
	tsx                                                  ; $c62b : $ba
	.db $13                                                  ; $c62c : $13
	.db $00                                                  ; $c62d : $00
	cmp $24ff, y                                                  ; $c62e : $d9, $ff, $24
	tsx                                                  ; $c631 : $ba
	.db $13                                                  ; $c632 : $13
	.db $00                                                  ; $c633 : $00
	inc $ff                                                  ; $c634 : $e6, $ff
	.db $12                                                  ; $c636 : $12
	tsx                                                  ; $c637 : $ba
	.db $13                                                  ; $c638 : $13
	.db $00                                                  ; $c639 : $00
	cmp $12ff, y                                                  ; $c63a : $d9, $ff, $12
	tsx                                                  ; $c63d : $ba
	.db $13                                                  ; $c63e : $13
	.db $00                                                  ; $c63f : $00
	inc $ff                                                  ; $c640 : $e6, $ff
	jmp ($13ba)                                                  ; $c642 : $6c, $ba, $13


	ora ($03, x)                                                  ; $c645 : $01, $03
	.db $ff                                                  ; $c647 : $ff
	bit $ba                                                  ; $c648 : $24, $ba
	.db $13                                                  ; $c64a : $13
	.db $00                                                  ; $c64b : $00
	ora ($ff, x)                                                  ; $c64c : $01, $ff
	bit $ba                                                  ; $c64e : $24, $ba
	.db $13                                                  ; $c650 : $13
	.db $00                                                  ; $c651 : $00
	ldy $24ff                                                  ; $c652 : $ac, $ff, $24
	tsx                                                  ; $c655 : $ba
	.db $13                                                  ; $c656 : $13
	.db $00                                                  ; $c657 : $00
	sta ($ff), y                                                  ; $c658 : $91, $ff
	bit $ba                                                  ; $c65a : $24, $ba
	.db $13                                                  ; $c65c : $13
	.db $00                                                  ; $c65d : $00
	sta ($ff, x)                                                  ; $c65e : $81, $ff
	.db $12                                                  ; $c660 : $12
	tsx                                                  ; $c661 : $ba
	.db $13                                                  ; $c662 : $13
	.db $00                                                  ; $c663 : $00
	sta ($ff), y                                                  ; $c664 : $91, $ff
	.db $12                                                  ; $c666 : $12
	tsx                                                  ; $c667 : $ba
	.db $13                                                  ; $c668 : $13
	.db $00                                                  ; $c669 : $00
	sta $24ff, y                                                  ; $c66a : $99, $ff, $24
	tsx                                                  ; $c66d : $ba
	.db $13                                                  ; $c66e : $13
	.db $00                                                  ; $c66f : $00
	ldy $24ff                                                  ; $c670 : $ac, $ff, $24
	tsx                                                  ; $c673 : $ba
	.db $13                                                  ; $c674 : $13
	.db $00                                                  ; $c675 : $00
	sta ($ff), y                                                  ; $c676 : $91, $ff
	.db $5a                                                  ; $c678 : $5a
	tsx                                                  ; $c679 : $ba
	.db $13                                                  ; $c67a : $13
	.db $00                                                  ; $c67b : $00
	sta ($ff, x)                                                  ; $c67c : $81, $ff
	.db $12                                                  ; $c67e : $12
	tsx                                                  ; $c67f : $ba
	.db $13                                                  ; $c680 : $13
	.db $00                                                  ; $c681 : $00
	ora ($ff, x)                                                  ; $c682 : $01, $ff
	.db $12                                                  ; $c684 : $12
	tsx                                                  ; $c685 : $ba
	.db $13                                                  ; $c686 : $13
	.db $00                                                  ; $c687 : $00
	sta ($ff), y                                                  ; $c688 : $91, $ff
	.db $12                                                  ; $c68a : $12
	tsx                                                  ; $c68b : $ba
	.db $13                                                  ; $c68c : $13
	.db $00                                                  ; $c68d : $00
	sta $24ff, y                                                  ; $c68e : $99, $ff, $24
	tsx                                                  ; $c691 : $ba
	.db $13                                                  ; $c692 : $13
	.db $00                                                  ; $c693 : $00
	ldy $24ff                                                  ; $c694 : $ac, $ff, $24
	tsx                                                  ; $c697 : $ba
	.db $13                                                  ; $c698 : $13
	.db $00                                                  ; $c699 : $00
	sta ($ff), y                                                  ; $c69a : $91, $ff
	bit $ba                                                  ; $c69c : $24, $ba
	.db $13                                                  ; $c69e : $13
	.db $00                                                  ; $c69f : $00
	sta ($ff), y                                                  ; $c6a0 : $91, $ff
	bit $ba                                                  ; $c6a2 : $24, $ba
	.db $13                                                  ; $c6a4 : $13
	.db $00                                                  ; $c6a5 : $00
	sta $7eff, y                                                  ; $c6a6 : $99, $ff, $7e
	tsx                                                  ; $c6a9 : $ba
	.db $13                                                  ; $c6aa : $13
	.db $00                                                  ; $c6ab : $00
	ldy $12ff                                                  ; $c6ac : $ac, $ff, $12
	tsx                                                  ; $c6af : $ba
	.db $13                                                  ; $c6b0 : $13
	.db $00                                                  ; $c6b1 : $00
	ora ($ff, x)                                                  ; $c6b2 : $01, $ff
	bit $ba                                                  ; $c6b4 : $24, $ba
	.db $13                                                  ; $c6b6 : $13
	.db $00                                                  ; $c6b7 : $00
	ldy $24ff                                                  ; $c6b8 : $ac, $ff, $24
	tsx                                                  ; $c6bb : $ba
	.db $13                                                  ; $c6bc : $13
	.db $00                                                  ; $c6bd : $00
	sta ($ff), y                                                  ; $c6be : $91, $ff
	bit $ba                                                  ; $c6c0 : $24, $ba
	.db $13                                                  ; $c6c2 : $13
	.db $00                                                  ; $c6c3 : $00
	sta ($ff, x)                                                  ; $c6c4 : $81, $ff
	.db $12                                                  ; $c6c6 : $12
	tsx                                                  ; $c6c7 : $ba
	.db $13                                                  ; $c6c8 : $13
	.db $00                                                  ; $c6c9 : $00
	sta ($ff), y                                                  ; $c6ca : $91, $ff
	.db $12                                                  ; $c6cc : $12
	tsx                                                  ; $c6cd : $ba
	.db $13                                                  ; $c6ce : $13
	.db $00                                                  ; $c6cf : $00
	ldy $24ff                                                  ; $c6d0 : $ac, $ff, $24
	tsx                                                  ; $c6d3 : $ba
	.db $13                                                  ; $c6d4 : $13
	.db $00                                                  ; $c6d5 : $00
	.db $c2                                                  ; $c6d6 : $c2
	.db $ff                                                  ; $c6d7 : $ff
	.db $12                                                  ; $c6d8 : $12
	tsx                                                  ; $c6d9 : $ba
	.db $13                                                  ; $c6da : $13
	.db $00                                                  ; $c6db : $00
	ldy $12ff                                                  ; $c6dc : $ac, $ff, $12
	tsx                                                  ; $c6df : $ba
	.db $13                                                  ; $c6e0 : $13
	.db $00                                                  ; $c6e1 : $00
	.db $c2                                                  ; $c6e2 : $c2
	.db $ff                                                  ; $c6e3 : $ff
	bit $ba                                                  ; $c6e4 : $24, $ba
	.db $13                                                  ; $c6e6 : $13
	.db $00                                                  ; $c6e7 : $00
	cmp $24ff, y                                                  ; $c6e8 : $d9, $ff, $24
	tsx                                                  ; $c6eb : $ba
	.db $13                                                  ; $c6ec : $13
	.db $00                                                  ; $c6ed : $00
	.db $c2                                                  ; $c6ee : $c2
	.db $ff                                                  ; $c6ef : $ff
	bit $ba                                                  ; $c6f0 : $24, $ba
	.db $13                                                  ; $c6f2 : $13
	.db $00                                                  ; $c6f3 : $00
	ldy $24ff                                                  ; $c6f4 : $ac, $ff, $24
	tsx                                                  ; $c6f7 : $ba
	.db $13                                                  ; $c6f8 : $13
	.db $00                                                  ; $c6f9 : $00
	sta ($ff), y                                                  ; $c6fa : $91, $ff
	bit $ba                                                  ; $c6fc : $24, $ba
	.db $13                                                  ; $c6fe : $13
	.db $00                                                  ; $c6ff : $00
	cmp $24ff, y                                                  ; $c700 : $d9, $ff, $24
	tsx                                                  ; $c703 : $ba
	.db $13                                                  ; $c704 : $13
	.db $00                                                  ; $c705 : $00
	.db $c2                                                  ; $c706 : $c2
	.db $ff                                                  ; $c707 : $ff
	bit $ba                                                  ; $c708 : $24, $ba
	.db $13                                                  ; $c70a : $13
	.db $00                                                  ; $c70b : $00
	ldy $12ff                                                  ; $c70c : $ac, $ff, $12
	tsx                                                  ; $c70f : $ba
	.db $13                                                  ; $c710 : $13
	.db $00                                                  ; $c711 : $00
	.db $c2                                                  ; $c712 : $c2
	.db $ff                                                  ; $c713 : $ff
	.db $12                                                  ; $c714 : $12
	tsx                                                  ; $c715 : $ba
	.db $13                                                  ; $c716 : $13
	.db $00                                                  ; $c717 : $00
	cmp $24ff, y                                                  ; $c718 : $d9, $ff, $24
	tsx                                                  ; $c71b : $ba
	.db $13                                                  ; $c71c : $13
	.db $00                                                  ; $c71d : $00
	inc $ff                                                  ; $c71e : $e6, $ff
	.db $12                                                  ; $c720 : $12
	tsx                                                  ; $c721 : $ba
	.db $13                                                  ; $c722 : $13
	.db $00                                                  ; $c723 : $00
	cmp $12ff, y                                                  ; $c724 : $d9, $ff, $12
	tsx                                                  ; $c727 : $ba
	.db $13                                                  ; $c728 : $13
	.db $00                                                  ; $c729 : $00
	inc $ff                                                  ; $c72a : $e6, $ff
	ror $13ba, x                                                  ; $c72c : $7e, $ba, $13
	ora ($03, x)                                                  ; $c72f : $01, $03
	.db $ff                                                  ; $c731 : $ff
	.db $12                                                  ; $c732 : $12
	tsx                                                  ; $c733 : $ba
	.db $13                                                  ; $c734 : $13
	.db $00                                                  ; $c735 : $00
	ora ($ff, x)                                                  ; $c736 : $01, $ff
	.db $ff                                                  ; $c738 : $ff
	.db $12                                                  ; $c739 : $12
	.db $67                                                  ; $c73a : $67
	.db $13                                                  ; $c73b : $13
	ora $67                                                  ; $c73c : $05, $67
	.db $ff                                                  ; $c73e : $ff
	.db $12                                                  ; $c73f : $12
	.db $67                                                  ; $c740 : $67
	.db $13                                                  ; $c741 : $13
	ora ($84, x)                                                  ; $c742 : $01, $84
	.db $ff                                                  ; $c744 : $ff
	.db $12                                                  ; $c745 : $12
	.db $67                                                  ; $c746 : $67
	.db $13                                                  ; $c747 : $13
	ora ($59, x)                                                  ; $c748 : $01, $59
	.db $ff                                                  ; $c74a : $ff
	.db $12                                                  ; $c74b : $12
	.db $67                                                  ; $c74c : $67
	.db $13                                                  ; $c74d : $13
	ora ($22, x)                                                  ; $c74e : $01, $22
	.db $ff                                                  ; $c750 : $ff
	.db $12                                                  ; $c751 : $12
	.db $67                                                  ; $c752 : $67
	.db $13                                                  ; $c753 : $13
	.db $04                                                  ; $c754 : $04
	.db $0c                                                  ; $c755 : $0c
	.db $ff                                                  ; $c756 : $ff
	.db $12                                                  ; $c757 : $12
	.db $67                                                  ; $c758 : $67
	.db $13                                                  ; $c759 : $13
	ora ($03, x)                                                  ; $c75a : $01, $03
	.db $ff                                                  ; $c75c : $ff
	.db $12                                                  ; $c75d : $12
	.db $67                                                  ; $c75e : $67
	.db $13                                                  ; $c75f : $13
	ora ($22, x)                                                  ; $c760 : $01, $22
	.db $ff                                                  ; $c762 : $ff
	.db $12                                                  ; $c763 : $12
	.db $67                                                  ; $c764 : $67
	.db $13                                                  ; $c765 : $13
	ora ($59, x)                                                  ; $c766 : $01, $59
	.db $ff                                                  ; $c768 : $ff
	.db $12                                                  ; $c769 : $12
	.db $67                                                  ; $c76a : $67
	.db $13                                                  ; $c76b : $13
	asl $10                                                  ; $c76c : $06, $10
	.db $ff                                                  ; $c76e : $ff
	.db $12                                                  ; $c76f : $12
	.db $67                                                  ; $c770 : $67
	.db $13                                                  ; $c771 : $13
	ora ($84, x)                                                  ; $c772 : $01, $84
	.db $ff                                                  ; $c774 : $ff
	.db $12                                                  ; $c775 : $12
	.db $67                                                  ; $c776 : $67
	.db $13                                                  ; $c777 : $13
	ora ($59, x)                                                  ; $c778 : $01, $59
	.db $ff                                                  ; $c77a : $ff
	.db $12                                                  ; $c77b : $12
	.db $67                                                  ; $c77c : $67
	.db $13                                                  ; $c77d : $13
	ora ($84, x)                                                  ; $c77e : $01, $84
	.db $ff                                                  ; $c780 : $ff
	.db $12                                                  ; $c781 : $12
	.db $67                                                  ; $c782 : $67
	.db $13                                                  ; $c783 : $13
	.db $03                                                  ; $c784 : $03
	.db $67                                                  ; $c785 : $67
	.db $ff                                                  ; $c786 : $ff
	.db $12                                                  ; $c787 : $12
	.db $67                                                  ; $c788 : $67
	.db $13                                                  ; $c789 : $13
	.db $02                                                  ; $c78a : $02
	asl $ff                                                  ; $c78b : $06, $ff
	.db $12                                                  ; $c78d : $12
	.db $67                                                  ; $c78e : $67
	.db $13                                                  ; $c78f : $13
	ora ($b3, x)                                                  ; $c790 : $01, $b3
	.db $ff                                                  ; $c792 : $ff
	.db $12                                                  ; $c793 : $12
	.db $67                                                  ; $c794 : $67
	.db $13                                                  ; $c795 : $13
	ora ($84, x)                                                  ; $c796 : $01, $84
	.db $ff                                                  ; $c798 : $ff
	.db $12                                                  ; $c799 : $12
	.db $67                                                  ; $c79a : $67
	.db $13                                                  ; $c79b : $13
	ora $67                                                  ; $c79c : $05, $67
	.db $ff                                                  ; $c79e : $ff
	.db $12                                                  ; $c79f : $12
	.db $67                                                  ; $c7a0 : $67
	.db $13                                                  ; $c7a1 : $13
	.db $00                                                  ; $c7a2 : $00
	ora ($ff, x)                                                  ; $c7a3 : $01, $ff
	ora #$67                                                  ; $c7a5 : $09, $67
	.db $13                                                  ; $c7a7 : $13
	ora ($84, x)                                                  ; $c7a8 : $01, $84
	.db $ff                                                  ; $c7aa : $ff
	ora #$67                                                  ; $c7ab : $09, $67
	.db $13                                                  ; $c7ad : $13
	ora ($59, x)                                                  ; $c7ae : $01, $59
	.db $ff                                                  ; $c7b0 : $ff
	ora #$67                                                  ; $c7b1 : $09, $67
	.db $13                                                  ; $c7b3 : $13
	ora ($84, x)                                                  ; $c7b4 : $01, $84
	.db $ff                                                  ; $c7b6 : $ff
	ora #$67                                                  ; $c7b7 : $09, $67
	.db $13                                                  ; $c7b9 : $13
	ora ($b3, x)                                                  ; $c7ba : $01, $b3
	.db $ff                                                  ; $c7bc : $ff
	.db $12                                                  ; $c7bd : $12
	.db $67                                                  ; $c7be : $67
	.db $13                                                  ; $c7bf : $13
	ora ($cd, x)                                                  ; $c7c0 : $01, $cd
	.db $ff                                                  ; $c7c2 : $ff
	.db $12                                                  ; $c7c3 : $12
	.db $67                                                  ; $c7c4 : $67
	.db $13                                                  ; $c7c5 : $13
	.db $02                                                  ; $c7c6 : $02
	eor $ff                                                  ; $c7c7 : $45, $ff
	.db $12                                                  ; $c7c9 : $12
	.db $67                                                  ; $c7ca : $67
	.db $13                                                  ; $c7cb : $13
	ora ($b3, x)                                                  ; $c7cc : $01, $b3
	.db $ff                                                  ; $c7ce : $ff
	.db $12                                                  ; $c7cf : $12
	.db $67                                                  ; $c7d0 : $67
	.db $13                                                  ; $c7d1 : $13
	ora ($cd, x)                                                  ; $c7d2 : $01, $cd
	.db $ff                                                  ; $c7d4 : $ff
	.db $12                                                  ; $c7d5 : $12
	.db $67                                                  ; $c7d6 : $67
	.db $13                                                  ; $c7d7 : $13
	.db $02                                                  ; $c7d8 : $02
	asl $ff                                                  ; $c7d9 : $06, $ff
	ora #$67                                                  ; $c7db : $09, $67
	.db $13                                                  ; $c7dd : $13
	.db $02                                                  ; $c7de : $02
	asl $ff                                                  ; $c7df : $06, $ff
	ora #$67                                                  ; $c7e1 : $09, $67
	.db $13                                                  ; $c7e3 : $13
	ora ($b3, x)                                                  ; $c7e4 : $01, $b3
	.db $ff                                                  ; $c7e6 : $ff
	ora #$67                                                  ; $c7e7 : $09, $67
	.db $13                                                  ; $c7e9 : $13
	ora ($59, x)                                                  ; $c7ea : $01, $59
	.db $ff                                                  ; $c7ec : $ff
	ora #$67                                                  ; $c7ed : $09, $67
	.db $13                                                  ; $c7ef : $13
	ora ($b3, x)                                                  ; $c7f0 : $01, $b3
	.db $ff                                                  ; $c7f2 : $ff
	.db $12                                                  ; $c7f3 : $12
	.db $67                                                  ; $c7f4 : $67
	.db $13                                                  ; $c7f5 : $13
	.db $02                                                  ; $c7f6 : $02
	asl $ff                                                  ; $c7f7 : $06, $ff
	.db $12                                                  ; $c7f9 : $12
	.db $67                                                  ; $c7fa : $67
	.db $13                                                  ; $c7fb : $13
	.db $02                                                  ; $c7fc : $02
	asl $ff                                                  ; $c7fd : $06, $ff
	.db $12                                                  ; $c7ff : $12
	.db $67                                                  ; $c800 : $67
	.db $13                                                  ; $c801 : $13
	ora ($b3, x)                                                  ; $c802 : $01, $b3
	.db $ff                                                  ; $c804 : $ff
	.db $12                                                  ; $c805 : $12
	.db $67                                                  ; $c806 : $67
	.db $13                                                  ; $c807 : $13
	.db $02                                                  ; $c808 : $02
	.db $b3                                                  ; $c809 : $b3
	.db $ff                                                  ; $c80a : $ff
	.db $12                                                  ; $c80b : $12
	.db $67                                                  ; $c80c : $67
	.db $13                                                  ; $c80d : $13
	.db $02                                                  ; $c80e : $02
	asl $ff                                                  ; $c80f : $06, $ff
	.db $12                                                  ; $c811 : $12
	.db $67                                                  ; $c812 : $67
	.db $13                                                  ; $c813 : $13
	.db $04                                                  ; $c814 : $04
	.db $0c                                                  ; $c815 : $0c
	.db $ff                                                  ; $c816 : $ff
	.db $12                                                  ; $c817 : $12
	.db $67                                                  ; $c818 : $67
	.db $13                                                  ; $c819 : $13
	.db $02                                                  ; $c81a : $02
	.db $b3                                                  ; $c81b : $b3
	.db $ff                                                  ; $c81c : $ff
	.db $12                                                  ; $c81d : $12
	.db $67                                                  ; $c81e : $67
	.db $13                                                  ; $c81f : $13
	.db $02                                                  ; $c820 : $02
	asl $ff                                                  ; $c821 : $06, $ff
	.db $12                                                  ; $c823 : $12
	.db $67                                                  ; $c824 : $67
	.db $13                                                  ; $c825 : $13
	ora ($b3, x)                                                  ; $c826 : $01, $b3
	.db $ff                                                  ; $c828 : $ff
	.db $12                                                  ; $c829 : $12
	.db $67                                                  ; $c82a : $67
	.db $13                                                  ; $c82b : $13
	.db $02                                                  ; $c82c : $02
	asl $ff                                                  ; $c82d : $06, $ff
	.db $12                                                  ; $c82f : $12
	.db $67                                                  ; $c830 : $67
	.db $13                                                  ; $c831 : $13
	.db $00                                                  ; $c832 : $00
	ora ($ff, x)                                                  ; $c833 : $01, $ff
	.db $12                                                  ; $c835 : $12
	.db $67                                                  ; $c836 : $67
	.db $13                                                  ; $c837 : $13
	ora ($b3, x)                                                  ; $c838 : $01, $b3
	.db $ff                                                  ; $c83a : $ff
	.db $12                                                  ; $c83b : $12
	.db $67                                                  ; $c83c : $67
	.db $13                                                  ; $c83d : $13
	ora ($34, x)                                                  ; $c83e : $01, $34
	.db $ff                                                  ; $c840 : $ff
	.db $12                                                  ; $c841 : $12
	.db $67                                                  ; $c842 : $67
	.db $13                                                  ; $c843 : $13
	.db $04                                                  ; $c844 : $04
	.db $0c                                                  ; $c845 : $0c
	.db $ff                                                  ; $c846 : $ff
	.db $12                                                  ; $c847 : $12
	.db $67                                                  ; $c848 : $67
	.db $13                                                  ; $c849 : $13
	.db $02                                                  ; $c84a : $02
	.db $b3                                                  ; $c84b : $b3
	.db $ff                                                  ; $c84c : $ff
	.db $12                                                  ; $c84d : $12
	.db $67                                                  ; $c84e : $67
	.db $13                                                  ; $c84f : $13
	.db $02                                                  ; $c850 : $02
	asl $ff                                                  ; $c851 : $06, $ff
	.db $12                                                  ; $c853 : $12
	.db $67                                                  ; $c854 : $67
	.db $13                                                  ; $c855 : $13
	ora ($b3, x)                                                  ; $c856 : $01, $b3
	.db $ff                                                  ; $c858 : $ff
	.db $12                                                  ; $c859 : $12
	.db $67                                                  ; $c85a : $67
	.db $13                                                  ; $c85b : $13
	.db $02                                                  ; $c85c : $02
	asl $ff                                                  ; $c85d : $06, $ff
	.db $12                                                  ; $c85f : $12
	.db $67                                                  ; $c860 : $67
	.db $13                                                  ; $c861 : $13
	.db $00                                                  ; $c862 : $00
	ora ($ff, x)                                                  ; $c863 : $01, $ff
	.db $12                                                  ; $c865 : $12
	.db $67                                                  ; $c866 : $67
	.db $13                                                  ; $c867 : $13
	.db $02                                                  ; $c868 : $02
	asl $ff                                                  ; $c869 : $06, $ff
	.db $12                                                  ; $c86b : $12
	.db $67                                                  ; $c86c : $67
	.db $13                                                  ; $c86d : $13
	.db $00                                                  ; $c86e : $00
	ora ($ff, x)                                                  ; $c86f : $01, $ff
	.db $12                                                  ; $c871 : $12
	.db $67                                                  ; $c872 : $67
	.db $13                                                  ; $c873 : $13
	.db $02                                                  ; $c874 : $02
	asl $ff                                                  ; $c875 : $06, $ff
	.db $12                                                  ; $c877 : $12
	.db $67                                                  ; $c878 : $67
	.db $13                                                  ; $c879 : $13
	.db $02                                                  ; $c87a : $02
	asl $ff                                                  ; $c87b : $06, $ff
	.db $12                                                  ; $c87d : $12
	.db $67                                                  ; $c87e : $67
	.db $13                                                  ; $c87f : $13
	.db $02                                                  ; $c880 : $02
	asl $ff                                                  ; $c881 : $06, $ff
	.db $12                                                  ; $c883 : $12
	.db $67                                                  ; $c884 : $67
	.db $13                                                  ; $c885 : $13
	.db $00                                                  ; $c886 : $00
	ora ($ff, x)                                                  ; $c887 : $01, $ff
	.db $12                                                  ; $c889 : $12
	.db $67                                                  ; $c88a : $67
	.db $13                                                  ; $c88b : $13
	ora $67                                                  ; $c88c : $05, $67
	.db $ff                                                  ; $c88e : $ff
	.db $12                                                  ; $c88f : $12
	.db $67                                                  ; $c890 : $67
	.db $13                                                  ; $c891 : $13
	.db $02                                                  ; $c892 : $02
	asl $ff                                                  ; $c893 : $06, $ff
	.db $12                                                  ; $c895 : $12
	.db $67                                                  ; $c896 : $67
	.db $13                                                  ; $c897 : $13
	.db $02                                                  ; $c898 : $02
	eor $ff                                                  ; $c899 : $45, $ff
	.db $12                                                  ; $c89b : $12
	.db $67                                                  ; $c89c : $67
	.db $13                                                  ; $c89d : $13
	.db $02                                                  ; $c89e : $02
	asl $ff                                                  ; $c89f : $06, $ff
	.db $12                                                  ; $c8a1 : $12
	.db $67                                                  ; $c8a2 : $67
	.db $13                                                  ; $c8a3 : $13
	ora ($b3, x)                                                  ; $c8a4 : $01, $b3
	.db $ff                                                  ; $c8a6 : $ff
	.db $12                                                  ; $c8a7 : $12
	.db $67                                                  ; $c8a8 : $67
	.db $13                                                  ; $c8a9 : $13
	.db $00                                                  ; $c8aa : $00
	ora ($ff, x)                                                  ; $c8ab : $01, $ff
	.db $12                                                  ; $c8ad : $12
	.db $67                                                  ; $c8ae : $67
	.db $13                                                  ; $c8af : $13
	.db $02                                                  ; $c8b0 : $02
	asl $ff                                                  ; $c8b1 : $06, $ff
	.db $12                                                  ; $c8b3 : $12
	.db $67                                                  ; $c8b4 : $67
	.db $13                                                  ; $c8b5 : $13
	.db $02                                                  ; $c8b6 : $02
	pla                                                  ; $c8b7 : $68
	.db $ff                                                  ; $c8b8 : $ff
	.db $12                                                  ; $c8b9 : $12
	.db $67                                                  ; $c8ba : $67
	.db $13                                                  ; $c8bb : $13
	ora $67                                                  ; $c8bc : $05, $67
	.db $ff                                                  ; $c8be : $ff
	.db $12                                                  ; $c8bf : $12
	.db $67                                                  ; $c8c0 : $67
	.db $13                                                  ; $c8c1 : $13
	.db $02                                                  ; $c8c2 : $02
	asl $ff                                                  ; $c8c3 : $06, $ff
	.db $12                                                  ; $c8c5 : $12
	.db $67                                                  ; $c8c6 : $67
	.db $13                                                  ; $c8c7 : $13
	.db $02                                                  ; $c8c8 : $02
	asl $ff                                                  ; $c8c9 : $06, $ff
	.db $12                                                  ; $c8cb : $12
	.db $67                                                  ; $c8cc : $67
	.db $13                                                  ; $c8cd : $13
	.db $00                                                  ; $c8ce : $00
	ora ($ff, x)                                                  ; $c8cf : $01, $ff
	.db $12                                                  ; $c8d1 : $12
	.db $67                                                  ; $c8d2 : $67
	.db $13                                                  ; $c8d3 : $13
	.db $04                                                  ; $c8d4 : $04
	.db $0c                                                  ; $c8d5 : $0c
	.db $ff                                                  ; $c8d6 : $ff
	.db $12                                                  ; $c8d7 : $12
	.db $67                                                  ; $c8d8 : $67
	.db $13                                                  ; $c8d9 : $13
	.db $02                                                  ; $c8da : $02
	asl $ff                                                  ; $c8db : $06, $ff
	.db $12                                                  ; $c8dd : $12
	.db $67                                                  ; $c8de : $67
	.db $13                                                  ; $c8df : $13
	.db $02                                                  ; $c8e0 : $02
	asl $ff                                                  ; $c8e1 : $06, $ff
	.db $12                                                  ; $c8e3 : $12
	.db $67                                                  ; $c8e4 : $67
	.db $13                                                  ; $c8e5 : $13
	.db $00                                                  ; $c8e6 : $00
	ora ($ff, x)                                                  ; $c8e7 : $01, $ff
	.db $12                                                  ; $c8e9 : $12
	.db $67                                                  ; $c8ea : $67
	.db $13                                                  ; $c8eb : $13
	ora ($b3, x)                                                  ; $c8ec : $01, $b3
	.db $ff                                                  ; $c8ee : $ff
	.db $12                                                  ; $c8ef : $12
	.db $67                                                  ; $c8f0 : $67
	.db $13                                                  ; $c8f1 : $13
	.db $02                                                  ; $c8f2 : $02
	.db $b3                                                  ; $c8f3 : $b3
	.db $ff                                                  ; $c8f4 : $ff
	.db $12                                                  ; $c8f5 : $12
	.db $67                                                  ; $c8f6 : $67
	.db $13                                                  ; $c8f7 : $13
	.db $02                                                  ; $c8f8 : $02
	eor $ff                                                  ; $c8f9 : $45, $ff
	.db $12                                                  ; $c8fb : $12
	.db $67                                                  ; $c8fc : $67
	.db $13                                                  ; $c8fd : $13
	.db $02                                                  ; $c8fe : $02
	asl $ff                                                  ; $c8ff : $06, $ff
	.db $12                                                  ; $c901 : $12
	.db $67                                                  ; $c902 : $67
	.db $13                                                  ; $c903 : $13
	.db $02                                                  ; $c904 : $02
	asl $ff                                                  ; $c905 : $06, $ff
	.db $12                                                  ; $c907 : $12
	.db $67                                                  ; $c908 : $67
	.db $13                                                  ; $c909 : $13
	.db $02                                                  ; $c90a : $02
	asl $ff                                                  ; $c90b : $06, $ff
	.db $12                                                  ; $c90d : $12
	.db $67                                                  ; $c90e : $67
	.db $13                                                  ; $c90f : $13
	.db $02                                                  ; $c910 : $02
	asl $ff                                                  ; $c911 : $06, $ff
	.db $12                                                  ; $c913 : $12
	.db $67                                                  ; $c914 : $67
	.db $13                                                  ; $c915 : $13
	.db $00                                                  ; $c916 : $00
	ora ($ff, x)                                                  ; $c917 : $01, $ff
	.db $12                                                  ; $c919 : $12
	.db $67                                                  ; $c91a : $67
	.db $13                                                  ; $c91b : $13
	asl $10                                                  ; $c91c : $06, $10
	.db $ff                                                  ; $c91e : $ff
	.db $12                                                  ; $c91f : $12
	.db $67                                                  ; $c920 : $67
	.db $13                                                  ; $c921 : $13
	ora ($84, x)                                                  ; $c922 : $01, $84
	.db $ff                                                  ; $c924 : $ff
	.db $12                                                  ; $c925 : $12
	.db $67                                                  ; $c926 : $67
	.db $13                                                  ; $c927 : $13
	ora ($59, x)                                                  ; $c928 : $01, $59
	.db $ff                                                  ; $c92a : $ff
	.db $12                                                  ; $c92b : $12
	.db $67                                                  ; $c92c : $67
	.db $13                                                  ; $c92d : $13
	ora ($84, x)                                                  ; $c92e : $01, $84
	.db $ff                                                  ; $c930 : $ff
	.db $12                                                  ; $c931 : $12
	.db $67                                                  ; $c932 : $67
	.db $13                                                  ; $c933 : $13
	ora ($b3, x)                                                  ; $c934 : $01, $b3
	.db $ff                                                  ; $c936 : $ff
	.db $12                                                  ; $c937 : $12
	.db $67                                                  ; $c938 : $67
	.db $13                                                  ; $c939 : $13
	ora ($84, x)                                                  ; $c93a : $01, $84
	.db $ff                                                  ; $c93c : $ff
	.db $12                                                  ; $c93d : $12
	.db $67                                                  ; $c93e : $67
	.db $13                                                  ; $c93f : $13
	.db $02                                                  ; $c940 : $02
	asl $ff                                                  ; $c941 : $06, $ff
	.db $12                                                  ; $c943 : $12
	.db $67                                                  ; $c944 : $67
	.db $13                                                  ; $c945 : $13
	.db $00                                                  ; $c946 : $00
	ora ($ff, x)                                                  ; $c947 : $01, $ff
	.db $12                                                  ; $c949 : $12
	.db $67                                                  ; $c94a : $67
	.db $13                                                  ; $c94b : $13
	.db $03                                                  ; $c94c : $03
	.db $67                                                  ; $c94d : $67
	.db $ff                                                  ; $c94e : $ff
	.db $12                                                  ; $c94f : $12
	.db $67                                                  ; $c950 : $67
	.db $13                                                  ; $c951 : $13
	.db $02                                                  ; $c952 : $02
	.db $b3                                                  ; $c953 : $b3
	.db $ff                                                  ; $c954 : $ff
	.db $12                                                  ; $c955 : $12
	.db $67                                                  ; $c956 : $67
	.db $13                                                  ; $c957 : $13
	.db $02                                                  ; $c958 : $02
	eor $ff                                                  ; $c959 : $45, $ff
	.db $12                                                  ; $c95b : $12
	.db $67                                                  ; $c95c : $67
	.db $13                                                  ; $c95d : $13
	.db $02                                                  ; $c95e : $02
	asl $ff                                                  ; $c95f : $06, $ff
	.db $12                                                  ; $c961 : $12
	.db $67                                                  ; $c962 : $67
	.db $13                                                  ; $c963 : $13
	ora ($b3, x)                                                  ; $c964 : $01, $b3
	.db $ff                                                  ; $c966 : $ff
	.db $12                                                  ; $c967 : $12
	.db $67                                                  ; $c968 : $67
	.db $13                                                  ; $c969 : $13
	.db $02                                                  ; $c96a : $02
	asl $ff                                                  ; $c96b : $06, $ff
	.db $12                                                  ; $c96d : $12
	.db $67                                                  ; $c96e : $67
	.db $13                                                  ; $c96f : $13
	.db $02                                                  ; $c970 : $02
	asl $ff                                                  ; $c971 : $06, $ff
	.db $12                                                  ; $c973 : $12
	.db $67                                                  ; $c974 : $67
	.db $13                                                  ; $c975 : $13
	.db $00                                                  ; $c976 : $00
	ora ($ff, x)                                                  ; $c977 : $01, $ff
	.db $1b                                                  ; $c979 : $1b
	.db $b7                                                  ; $c97a : $b7
	.db $13                                                  ; $c97b : $13
	.db $02                                                  ; $c97c : $02
	.db $b3                                                  ; $c97d : $b3
	.db $ff                                                  ; $c97e : $ff
	ora #$b7                                                  ; $c97f : $09, $b7
	.db $13                                                  ; $c981 : $13
	.db $00                                                  ; $c982 : $00
	ora ($ff, x)                                                  ; $c983 : $01, $ff
	.db $12                                                  ; $c985 : $12
	.db $b7                                                  ; $c986 : $b7
	.db $13                                                  ; $c987 : $13
	ora ($84, x)                                                  ; $c988 : $01, $84
	.db $ff                                                  ; $c98a : $ff
	.db $12                                                  ; $c98b : $12
	.db $b7                                                  ; $c98c : $b7
	.db $13                                                  ; $c98d : $13
	ora ($59, x)                                                  ; $c98e : $01, $59
	.db $ff                                                  ; $c990 : $ff
	.db $12                                                  ; $c991 : $12
	.db $b7                                                  ; $c992 : $b7
	.db $13                                                  ; $c993 : $13
	ora ($22, x)                                                  ; $c994 : $01, $22
	.db $ff                                                  ; $c996 : $ff
	.db $12                                                  ; $c997 : $12
	.db $b7                                                  ; $c998 : $b7
	.db $13                                                  ; $c999 : $13
	.db $00                                                  ; $c99a : $00
	ora ($ff, x)                                                  ; $c99b : $01, $ff
	.db $12                                                  ; $c99d : $12
	.db $b7                                                  ; $c99e : $b7
	.db $13                                                  ; $c99f : $13
	.db $00                                                  ; $c9a0 : $00
	inc $ff                                                  ; $c9a1 : $e6, $ff
	.db $12                                                  ; $c9a3 : $12
	.db $b7                                                  ; $c9a4 : $b7
	.db $13                                                  ; $c9a5 : $13
	ora ($22, x)                                                  ; $c9a6 : $01, $22
	.db $ff                                                  ; $c9a8 : $ff
	.db $12                                                  ; $c9a9 : $12
	.db $b7                                                  ; $c9aa : $b7
	.db $13                                                  ; $c9ab : $13
	ora ($03, x)                                                  ; $c9ac : $01, $03
	.db $ff                                                  ; $c9ae : $ff
	.db $12                                                  ; $c9af : $12
	.db $b7                                                  ; $c9b0 : $b7
	.db $13                                                  ; $c9b1 : $13
	.db $00                                                  ; $c9b2 : $00
	ora ($ff, x)                                                  ; $c9b3 : $01, $ff
	.db $0c                                                  ; $c9b5 : $0c
	.db $b7                                                  ; $c9b6 : $b7
	.db $13                                                  ; $c9b7 : $13
	.db $02                                                  ; $c9b8 : $02
	asl $ff                                                  ; $c9b9 : $06, $ff
	.db $0c                                                  ; $c9bb : $0c
	.db $b7                                                  ; $c9bc : $b7
	.db $13                                                  ; $c9bd : $13
	.db $02                                                  ; $c9be : $02
	asl $ff                                                  ; $c9bf : $06, $ff
	.db $0c                                                  ; $c9c1 : $0c
	.db $b7                                                  ; $c9c2 : $b7
	.db $13                                                  ; $c9c3 : $13
	.db $02                                                  ; $c9c4 : $02
	asl $ff                                                  ; $c9c5 : $06, $ff
	.db $12                                                  ; $c9c7 : $12
	.db $b7                                                  ; $c9c8 : $b7
	.db $13                                                  ; $c9c9 : $13
	.db $02                                                  ; $c9ca : $02
	asl $ff                                                  ; $c9cb : $06, $ff
	bit $b7                                                  ; $c9cd : $24, $b7
	.db $13                                                  ; $c9cf : $13
	.db $00                                                  ; $c9d0 : $00
	ora ($ff, x)                                                  ; $c9d1 : $01, $ff
	.db $12                                                  ; $c9d3 : $12
	.db $b7                                                  ; $c9d4 : $b7
	.db $13                                                  ; $c9d5 : $13
	.db $00                                                  ; $c9d6 : $00
	ora ($ff, x)                                                  ; $c9d7 : $01, $ff
	.db $ff                                                  ; $c9d9 : $ff
	plp                                                  ; $c9da : $28
	.db $3f                                                  ; $c9db : $3f
	.db $13                                                  ; $c9dc : $13
	ora ($84, x)                                                  ; $c9dd : $01, $84
	.db $02                                                  ; $c9df : $02
	.db $14                                                  ; $c9e0 : $14
	.db $27                                                  ; $c9e1 : $27
	.db $13                                                  ; $c9e2 : $13
	.db $00                                                  ; $c9e3 : $00
	ora ($02, x)                                                  ; $c9e4 : $01, $02
	.db $14                                                  ; $c9e6 : $14
	and #$13                                                  ; $c9e7 : $29, $13
	.db $02                                                  ; $c9e9 : $02
	asl $02                                                  ; $c9ea : $06, $02
	asl a                                                  ; $c9ec : $0a
	ror $13.w, x                                                  ; $c9ed : $7e, $13, $00
	.db $c2                                                  ; $c9f0 : $c2
	.db $02                                                  ; $c9f1 : $02
	asl a                                                  ; $c9f2 : $0a
	ror $13.w, x                                                  ; $c9f3 : $7e, $13, $00
	ldy $0a02                                                  ; $c9f6 : $ac, $02, $0a
	ror $13.w, x                                                  ; $c9f9 : $7e, $13, $00
	sta $0a02, y                                                  ; $c9fc : $99, $02, $0a
	ror $13.w, x                                                  ; $c9ff : $7e, $13, $00
	sta ($02), y                                                  ; $ca02 : $91, $02
	.db $14                                                  ; $ca04 : $14
	ror $13.w, x                                                  ; $ca05 : $7e, $13, $00
	sta ($02, x)                                                  ; $ca08 : $81, $02
	.db $14                                                  ; $ca0a : $14
	.db $77                                                  ; $ca0b : $77
	.db $13                                                  ; $ca0c : $13
	ora ($03, x)                                                  ; $ca0d : $01, $03
	.db $02                                                  ; $ca0f : $02
	plp                                                  ; $ca10 : $28
	.db $3f                                                  ; $ca11 : $3f
	.db $13                                                  ; $ca12 : $13
	ora ($59, x)                                                  ; $ca13 : $01, $59
	.db $02                                                  ; $ca15 : $02
	.db $14                                                  ; $ca16 : $14
	.db $27                                                  ; $ca17 : $27
	.db $13                                                  ; $ca18 : $13
	.db $00                                                  ; $ca19 : $00
	ora ($02, x)                                                  ; $ca1a : $01, $02
	.db $14                                                  ; $ca1c : $14
	and #$13                                                  ; $ca1d : $29, $13
	.db $02                                                  ; $ca1f : $02
	asl $02                                                  ; $ca20 : $06, $02
	asl a                                                  ; $ca22 : $0a
	ror $13.w, x                                                  ; $ca23 : $7e, $13, $00
	ldy $0a02                                                  ; $ca26 : $ac, $02, $0a
	ror $13.w, x                                                  ; $ca29 : $7e, $13, $00
	sta $0a02, y                                                  ; $ca2c : $99, $02, $0a
	ror $13.w, x                                                  ; $ca2f : $7e, $13, $00
	sta ($02), y                                                  ; $ca32 : $91, $02
	asl a                                                  ; $ca34 : $0a
	ror $13.w, x                                                  ; $ca35 : $7e, $13, $00
	sta ($02, x)                                                  ; $ca38 : $81, $02
	.db $14                                                  ; $ca3a : $14
	ror $13.w, x                                                  ; $ca3b : $7e, $13, $00
	.db $73                                                  ; $ca3e : $73
	.db $02                                                  ; $ca3f : $02
	.db $14                                                  ; $ca40 : $14
	.db $77                                                  ; $ca41 : $77
	.db $13                                                  ; $ca42 : $13
	.db $00                                                  ; $ca43 : $00
	inc $02                                                  ; $ca44 : $e6, $02
	plp                                                  ; $ca46 : $28
	.db $3f                                                  ; $ca47 : $3f
	.db $13                                                  ; $ca48 : $13
	ora ($34, x)                                                  ; $ca49 : $01, $34
	.db $02                                                  ; $ca4b : $02
	.db $14                                                  ; $ca4c : $14
	.db $27                                                  ; $ca4d : $27
	.db $13                                                  ; $ca4e : $13
	.db $00                                                  ; $ca4f : $00
	ora ($02, x)                                                  ; $ca50 : $01, $02
	.db $14                                                  ; $ca52 : $14
	and #$13                                                  ; $ca53 : $29, $13
	.db $02                                                  ; $ca55 : $02
	asl $02                                                  ; $ca56 : $06, $02
	asl a                                                  ; $ca58 : $0a
	ror $13.w, x                                                  ; $ca59 : $7e, $13, $00
	sta $0a02, y                                                  ; $ca5c : $99, $02, $0a
	ror $13.w, x                                                  ; $ca5f : $7e, $13, $00
	sta ($02), y                                                  ; $ca62 : $91, $02
	asl a                                                  ; $ca64 : $0a
	ror $13.w, x                                                  ; $ca65 : $7e, $13, $00
	sta ($02, x)                                                  ; $ca68 : $81, $02
	asl a                                                  ; $ca6a : $0a
	ror $13.w, x                                                  ; $ca6b : $7e, $13, $00
	.db $73                                                  ; $ca6e : $73
	.db $02                                                  ; $ca6f : $02
	.db $14                                                  ; $ca70 : $14
	ror $13.w, x                                                  ; $ca71 : $7e, $13, $00
	ror $02                                                  ; $ca74 : $66, $02
	.db $14                                                  ; $ca76 : $14
	.db $77                                                  ; $ca77 : $77
	.db $13                                                  ; $ca78 : $13
	.db $00                                                  ; $ca79 : $00
	cmp $2802                                                  ; $ca7a : $cd, $02, $28
	.db $3f                                                  ; $ca7d : $3f
	.db $13                                                  ; $ca7e : $13
	ora ($22, x)                                                  ; $ca7f : $01, $22
	.db $02                                                  ; $ca81 : $02
	.db $14                                                  ; $ca82 : $14
	.db $27                                                  ; $ca83 : $27
	.db $13                                                  ; $ca84 : $13
	.db $00                                                  ; $ca85 : $00
	ora ($02, x)                                                  ; $ca86 : $01, $02
	.db $14                                                  ; $ca88 : $14
	and #$13                                                  ; $ca89 : $29, $13
	.db $02                                                  ; $ca8b : $02
	asl $02                                                  ; $ca8c : $06, $02
	asl a                                                  ; $ca8e : $0a
	ror $13.w, x                                                  ; $ca8f : $7e, $13, $00
	sta ($02), y                                                  ; $ca92 : $91, $02
	asl a                                                  ; $ca94 : $0a
	ror $13.w, x                                                  ; $ca95 : $7e, $13, $00
	sta ($02, x)                                                  ; $ca98 : $81, $02
	asl a                                                  ; $ca9a : $0a
	ror $13.w, x                                                  ; $ca9b : $7e, $13, $00
	.db $73                                                  ; $ca9e : $73
	.db $02                                                  ; $ca9f : $02
	asl a                                                  ; $caa0 : $0a
	ror $13.w, x                                                  ; $caa1 : $7e, $13, $00
	ror $02                                                  ; $caa4 : $66, $02
	.db $14                                                  ; $caa6 : $14
	ror $13.w, x                                                  ; $caa7 : $7e, $13, $00
	rts                                                  ; $caaa : $60


	.db $02                                                  ; $caab : $02
	.db $14                                                  ; $caac : $14
	.db $77                                                  ; $caad : $77
	.db $13                                                  ; $caae : $13
	.db $00                                                  ; $caaf : $00
	.db $c2                                                  ; $cab0 : $c2
	.db $02                                                  ; $cab1 : $02
	.db $ff                                                  ; $cab2 : $ff
	.db $3c                                                  ; $cab3 : $3c
	.db $37                                                  ; $cab4 : $37
	.db $13                                                  ; $cab5 : $13
	.db $03                                                  ; $cab6 : $03
	php                                                  ; $cab7 : $08
	.db $00                                                  ; $cab8 : $00
	.db $14                                                  ; $cab9 : $14
	.db $b7                                                  ; $caba : $b7
	.db $13                                                  ; $cabb : $13
	.db $04                                                  ; $cabc : $04
	.db $0c                                                  ; $cabd : $0c
	.db $03                                                  ; $cabe : $03
	.db $23                                                  ; $cabf : $23
	.db $37                                                  ; $cac0 : $37
	.db $13                                                  ; $cac1 : $13
	.db $04                                                  ; $cac2 : $04
	bne br_00_cac5                                                  ; $cac3 : $d0, $00

br_00_cac5:
	and $1337                                                  ; $cac5 : $2d, $37, $13
	.db $00                                                  ; $cac8 : $00
	ora ($ff, x)                                                  ; $cac9 : $01, $ff
	.db $3c                                                  ; $cacb : $3c
	.db $37                                                  ; $cacc : $37
	.db $13                                                  ; $cacd : $13
	.db $02                                                  ; $cace : $02
	eor $00                                                  ; $cacf : $45, $00
	.db $14                                                  ; $cad1 : $14
	.db $b7                                                  ; $cad2 : $b7
	.db $13                                                  ; $cad3 : $13
	.db $03                                                  ; $cad4 : $03
	php                                                  ; $cad5 : $08
	.db $03                                                  ; $cad6 : $03
	.db $23                                                  ; $cad7 : $23
	.db $37                                                  ; $cad8 : $37
	.db $13                                                  ; $cad9 : $13
	.db $03                                                  ; $cada : $03
	.db $9b                                                  ; $cadb : $9b
	.db $00                                                  ; $cadc : $00
	and $1337                                                  ; $cadd : $2d, $37, $13
	.db $00                                                  ; $cae0 : $00
	ora ($ff, x)                                                  ; $cae1 : $01, $ff
	.db $3c                                                  ; $cae3 : $3c
	.db $37                                                  ; $cae4 : $37
	.db $13                                                  ; $cae5 : $13
	.db $02                                                  ; $cae6 : $02
	asl $00                                                  ; $cae7 : $06, $00
	.db $14                                                  ; $cae9 : $14
	.db $b7                                                  ; $caea : $b7
	.db $13                                                  ; $caeb : $13
	.db $03                                                  ; $caec : $03
	php                                                  ; $caed : $08
	.db $03                                                  ; $caee : $03
	.db $23                                                  ; $caef : $23
	.db $37                                                  ; $caf0 : $37
	.db $13                                                  ; $caf1 : $13
	.db $04                                                  ; $caf2 : $04
	.db $0c                                                  ; $caf3 : $0c
	.db $00                                                  ; $caf4 : $00
	and $1337                                                  ; $caf5 : $2d, $37, $13
	.db $00                                                  ; $caf8 : $00
	ora ($ff, x)                                                  ; $caf9 : $01, $ff
	.db $3c                                                  ; $cafb : $3c
	.db $37                                                  ; $cafc : $37
	.db $13                                                  ; $cafd : $13
	.db $02                                                  ; $cafe : $02
	.db $b3                                                  ; $caff : $b3
	.db $00                                                  ; $cb00 : $00
	.db $14                                                  ; $cb01 : $14
	.db $b7                                                  ; $cb02 : $b7
	.db $13                                                  ; $cb03 : $13
	.db $03                                                  ; $cb04 : $03
	rol $03, x                                                  ; $cb05 : $36, $03
	.db $23                                                  ; $cb07 : $23
	.db $37                                                  ; $cb08 : $37
	.db $13                                                  ; $cb09 : $13
	.db $03                                                  ; $cb0a : $03
	php                                                  ; $cb0b : $08
	.db $00                                                  ; $cb0c : $00
	and $1337                                                  ; $cb0d : $2d, $37, $13
	.db $00                                                  ; $cb10 : $00
	ora ($ff, x)                                                  ; $cb11 : $01, $ff
	.db $ff                                                  ; $cb13 : $ff
	clc                                                  ; $cb14 : $18
	.db $0f                                                  ; $cb15 : $0f
	.db $13                                                  ; $cb16 : $13
	.db $00                                                  ; $cb17 : $00
	rts                                                  ; $cb18 : $60


	.db $00                                                  ; $cb19 : $00
	clc                                                  ; $cb1a : $18
	.db $0f                                                  ; $cb1b : $0f
	.db $13                                                  ; $cb1c : $13
	.db $00                                                  ; $cb1d : $00
	rts                                                  ; $cb1e : $60


	.db $ff                                                  ; $cb1f : $ff
	clc                                                  ; $cb20 : $18
	.db $0f                                                  ; $cb21 : $0f
	.db $13                                                  ; $cb22 : $13
	.db $00                                                  ; $cb23 : $00
	rti                                                  ; $cb24 : $40


	.db $00                                                  ; $cb25 : $00
	clc                                                  ; $cb26 : $18
	.db $0f                                                  ; $cb27 : $0f
	.db $13                                                  ; $cb28 : $13
	.db $00                                                  ; $cb29 : $00
	rti                                                  ; $cb2a : $40


	.db $ff                                                  ; $cb2b : $ff
	clc                                                  ; $cb2c : $18
	.db $0f                                                  ; $cb2d : $0f
	.db $13                                                  ; $cb2e : $13
	.db $00                                                  ; $cb2f : $00
	and $1800, y                                                  ; $cb30 : $39, $00, $18
	.db $0f                                                  ; $cb33 : $0f
	.db $13                                                  ; $cb34 : $13
	.db $00                                                  ; $cb35 : $00
	and $1bff, y                                                  ; $cb36 : $39, $ff, $1b
	.db $0f                                                  ; $cb39 : $0f
	.db $13                                                  ; $cb3a : $13
	.db $00                                                  ; $cb3b : $00
	rti                                                  ; $cb3c : $40


	.db $00                                                  ; $cb3d : $00
	ora $0f, x                                                  ; $cb3e : $15, $0f
	.db $13                                                  ; $cb40 : $13
	.db $00                                                  ; $cb41 : $00
	ora ($ff, x)                                                  ; $cb42 : $01, $ff
	clc                                                  ; $cb44 : $18
	.db $a7                                                  ; $cb45 : $a7
	.db $13                                                  ; $cb46 : $13
	.db $00                                                  ; $cb47 : $00
	pha                                                  ; $cb48 : $48
	.db $00                                                  ; $cb49 : $00
	clc                                                  ; $cb4a : $18
	.db $a7                                                  ; $cb4b : $a7
	.db $13                                                  ; $cb4c : $13
	.db $00                                                  ; $cb4d : $00
	pha                                                  ; $cb4e : $48
	.db $ff                                                  ; $cb4f : $ff
	clc                                                  ; $cb50 : $18
	.db $a7                                                  ; $cb51 : $a7
	.db $13                                                  ; $cb52 : $13
	.db $00                                                  ; $cb53 : $00
	eor $1800                                                  ; $cb54 : $4d, $00, $18
	.db $a7                                                  ; $cb57 : $a7
	.db $13                                                  ; $cb58 : $13
	.db $00                                                  ; $cb59 : $00
	eor $18ff                                                  ; $cb5a : $4d, $ff, $18
	.db $a7                                                  ; $cb5d : $a7
	.db $13                                                  ; $cb5e : $13
	.db $00                                                  ; $cb5f : $00
	lsr $00, x                                                  ; $cb60 : $56, $00
	clc                                                  ; $cb62 : $18
	.db $a7                                                  ; $cb63 : $a7
	.db $13                                                  ; $cb64 : $13
	.db $00                                                  ; $cb65 : $00
	lsr $ff, x                                                  ; $cb66 : $56, $ff
	.db $1b                                                  ; $cb68 : $1b
	.db $a7                                                  ; $cb69 : $a7
	.db $13                                                  ; $cb6a : $13
	.db $00                                                  ; $cb6b : $00
	rts                                                  ; $cb6c : $60


	.db $00                                                  ; $cb6d : $00
	ora $a7, x                                                  ; $cb6e : $15, $a7
	.db $13                                                  ; $cb70 : $13
	.db $00                                                  ; $cb71 : $00
	ora ($ff, x)                                                  ; $cb72 : $01, $ff
	clc                                                  ; $cb74 : $18
	.db $0f                                                  ; $cb75 : $0f
	.db $13                                                  ; $cb76 : $13
	.db $00                                                  ; $cb77 : $00
	rti                                                  ; $cb78 : $40


	.db $00                                                  ; $cb79 : $00
	clc                                                  ; $cb7a : $18
	.db $0f                                                  ; $cb7b : $0f
	.db $13                                                  ; $cb7c : $13
	.db $00                                                  ; $cb7d : $00
	rti                                                  ; $cb7e : $40


	.db $ff                                                  ; $cb7f : $ff
	clc                                                  ; $cb80 : $18
	.db $0f                                                  ; $cb81 : $0f
	.db $13                                                  ; $cb82 : $13
	.db $00                                                  ; $cb83 : $00
	pha                                                  ; $cb84 : $48
	.db $00                                                  ; $cb85 : $00
	clc                                                  ; $cb86 : $18
	.db $0f                                                  ; $cb87 : $0f
	.db $13                                                  ; $cb88 : $13
	.db $00                                                  ; $cb89 : $00
	pha                                                  ; $cb8a : $48
	.db $ff                                                  ; $cb8b : $ff
	clc                                                  ; $cb8c : $18
	.db $0f                                                  ; $cb8d : $0f
	.db $13                                                  ; $cb8e : $13
	.db $00                                                  ; $cb8f : $00
	eor $180f                                                  ; $cb90 : $4d, $0f, $18
	.db $0f                                                  ; $cb93 : $0f
	.db $13                                                  ; $cb94 : $13
	.db $00                                                  ; $cb95 : $00
	eor $1bff                                                  ; $cb96 : $4d, $ff, $1b
	.db $0f                                                  ; $cb99 : $0f
	.db $13                                                  ; $cb9a : $13
	.db $00                                                  ; $cb9b : $00
	lsr $00, x                                                  ; $cb9c : $56, $00
	ora $a7, x                                                  ; $cb9e : $15, $a7
	.db $13                                                  ; $cba0 : $13
	.db $00                                                  ; $cba1 : $00
	ora ($ff, x)                                                  ; $cba2 : $01, $ff
	clc                                                  ; $cba4 : $18
	.db $a7                                                  ; $cba5 : $a7
	.db $13                                                  ; $cba6 : $13
	.db $00                                                  ; $cba7 : $00
	rti                                                  ; $cba8 : $40


	.db $00                                                  ; $cba9 : $00
	clc                                                  ; $cbaa : $18
	.db $a7                                                  ; $cbab : $a7
	.db $13                                                  ; $cbac : $13
	.db $00                                                  ; $cbad : $00
	rti                                                  ; $cbae : $40


	.db $ff                                                  ; $cbaf : $ff
	clc                                                  ; $cbb0 : $18
	.db $a7                                                  ; $cbb1 : $a7
	.db $13                                                  ; $cbb2 : $13
	.db $00                                                  ; $cbb3 : $00
	pha                                                  ; $cbb4 : $48
	.db $00                                                  ; $cbb5 : $00
	clc                                                  ; $cbb6 : $18
	.db $a7                                                  ; $cbb7 : $a7
	.db $13                                                  ; $cbb8 : $13
	.db $00                                                  ; $cbb9 : $00
	pha                                                  ; $cbba : $48
	.db $ff                                                  ; $cbbb : $ff
	clc                                                  ; $cbbc : $18
	.db $a7                                                  ; $cbbd : $a7
	.db $13                                                  ; $cbbe : $13
	.db $00                                                  ; $cbbf : $00
	eor $1800                                                  ; $cbc0 : $4d, $00, $18
	.db $a7                                                  ; $cbc3 : $a7
	.db $13                                                  ; $cbc4 : $13
	.db $00                                                  ; $cbc5 : $00
	eor $1bff                                                  ; $cbc6 : $4d, $ff, $1b
	.db $a7                                                  ; $cbc9 : $a7
	.db $13                                                  ; $cbca : $13
	.db $00                                                  ; $cbcb : $00
	lsr $00, x                                                  ; $cbcc : $56, $00
	ora $a7, x                                                  ; $cbce : $15, $a7
	.db $13                                                  ; $cbd0 : $13
	.db $00                                                  ; $cbd1 : $00
	ora ($ff, x)                                                  ; $cbd2 : $01, $ff
	clc                                                  ; $cbd4 : $18
	eor #$13                                                  ; $cbd5 : $49, $13
	.db $00                                                  ; $cbd7 : $00
	rts                                                  ; $cbd8 : $60


	.db $00                                                  ; $cbd9 : $00
	clc                                                  ; $cbda : $18
	eor #$13                                                  ; $cbdb : $49, $13
	.db $00                                                  ; $cbdd : $00
	rts                                                  ; $cbde : $60


	.db $ff                                                  ; $cbdf : $ff
	clc                                                  ; $cbe0 : $18
	eor #$13                                                  ; $cbe1 : $49, $13
	.db $00                                                  ; $cbe3 : $00
	rti                                                  ; $cbe4 : $40


	.db $00                                                  ; $cbe5 : $00
	clc                                                  ; $cbe6 : $18
	eor #$13                                                  ; $cbe7 : $49, $13
	.db $00                                                  ; $cbe9 : $00
	rti                                                  ; $cbea : $40


	.db $ff                                                  ; $cbeb : $ff
	clc                                                  ; $cbec : $18
	eor #$13                                                  ; $cbed : $49, $13
	.db $00                                                  ; $cbef : $00
	and $1800, y                                                  ; $cbf0 : $39, $00, $18
	eor #$13                                                  ; $cbf3 : $49, $13
	.db $00                                                  ; $cbf5 : $00
	and $1bff, y                                                  ; $cbf6 : $39, $ff, $1b
	eor #$13                                                  ; $cbf9 : $49, $13
	.db $00                                                  ; $cbfb : $00
	rti                                                  ; $cbfc : $40


	.db $00                                                  ; $cbfd : $00
	ora $0f, x                                                  ; $cbfe : $15, $0f
	.db $13                                                  ; $cc00 : $13
	.db $00                                                  ; $cc01 : $00
	ora ($ff, x)                                                  ; $cc02 : $01, $ff
	clc                                                  ; $cc04 : $18
	.db $0f                                                  ; $cc05 : $0f
	.db $13                                                  ; $cc06 : $13
	.db $00                                                  ; $cc07 : $00
	pha                                                  ; $cc08 : $48
	.db $00                                                  ; $cc09 : $00
	clc                                                  ; $cc0a : $18
	.db $0f                                                  ; $cc0b : $0f
	.db $13                                                  ; $cc0c : $13
	.db $00                                                  ; $cc0d : $00
	pha                                                  ; $cc0e : $48
	.db $ff                                                  ; $cc0f : $ff
	clc                                                  ; $cc10 : $18
	.db $0f                                                  ; $cc11 : $0f
	.db $13                                                  ; $cc12 : $13
	.db $00                                                  ; $cc13 : $00
	eor $1800                                                  ; $cc14 : $4d, $00, $18
	.db $0f                                                  ; $cc17 : $0f
	.db $13                                                  ; $cc18 : $13
	.db $00                                                  ; $cc19 : $00
	eor $18ff                                                  ; $cc1a : $4d, $ff, $18
	.db $0f                                                  ; $cc1d : $0f
	.db $13                                                  ; $cc1e : $13
	.db $00                                                  ; $cc1f : $00
	lsr $00, x                                                  ; $cc20 : $56, $00
	clc                                                  ; $cc22 : $18
	.db $0f                                                  ; $cc23 : $0f
	.db $13                                                  ; $cc24 : $13
	.db $00                                                  ; $cc25 : $00
	lsr $ff, x                                                  ; $cc26 : $56, $ff
	.db $1b                                                  ; $cc28 : $1b
	.db $0f                                                  ; $cc29 : $0f
	.db $13                                                  ; $cc2a : $13
	.db $00                                                  ; $cc2b : $00
	rts                                                  ; $cc2c : $60


	.db $00                                                  ; $cc2d : $00
	ora $a7, x                                                  ; $cc2e : $15, $a7
	.db $13                                                  ; $cc30 : $13
	.db $00                                                  ; $cc31 : $00
	ora ($ff, x)                                                  ; $cc32 : $01, $ff
	.db $ff                                                  ; $cc34 : $ff
	.db $0c                                                  ; $cc35 : $0c
	.db $a7                                                  ; $cc36 : $a7
	.db $13                                                  ; $cc37 : $13
	.db $03                                                  ; $cc38 : $03
	php                                                  ; $cc39 : $08
	.db $02                                                  ; $cc3a : $02
	.db $0c                                                  ; $cc3b : $0c
	.db $a7                                                  ; $cc3c : $a7
	.db $13                                                  ; $cc3d : $13
	.db $02                                                  ; $cc3e : $02
	asl $02                                                  ; $cc3f : $06, $02
	.db $0c                                                  ; $cc41 : $0c
	.db $a7                                                  ; $cc42 : $a7
	.db $13                                                  ; $cc43 : $13
	ora ($84, x)                                                  ; $cc44 : $01, $84
	.db $02                                                  ; $cc46 : $02
	.db $0c                                                  ; $cc47 : $0c
	.db $a7                                                  ; $cc48 : $a7
	.db $13                                                  ; $cc49 : $13
	.db $02                                                  ; $cc4a : $02
	asl $02                                                  ; $cc4b : $06, $02
	.db $0c                                                  ; $cc4d : $0c
	.db $a7                                                  ; $cc4e : $a7
	.db $13                                                  ; $cc4f : $13
	ora ($34, x)                                                  ; $cc50 : $01, $34
	.db $02                                                  ; $cc52 : $02
	.db $0c                                                  ; $cc53 : $0c
	.db $a7                                                  ; $cc54 : $a7
	.db $13                                                  ; $cc55 : $13
	.db $02                                                  ; $cc56 : $02
	asl $02                                                  ; $cc57 : $06, $02
	.db $0c                                                  ; $cc59 : $0c
	.db $a7                                                  ; $cc5a : $a7
	.db $13                                                  ; $cc5b : $13
	ora ($84, x)                                                  ; $cc5c : $01, $84
	.db $02                                                  ; $cc5e : $02
	.db $0c                                                  ; $cc5f : $0c
	.db $a7                                                  ; $cc60 : $a7
	.db $13                                                  ; $cc61 : $13
	.db $02                                                  ; $cc62 : $02
	asl $02                                                  ; $cc63 : $06, $02
	.db $0c                                                  ; $cc65 : $0c
	.db $a7                                                  ; $cc66 : $a7
	.db $13                                                  ; $cc67 : $13
	.db $03                                                  ; $cc68 : $03
	php                                                  ; $cc69 : $08
	.db $02                                                  ; $cc6a : $02
	.db $0c                                                  ; $cc6b : $0c
	.db $a7                                                  ; $cc6c : $a7
	.db $13                                                  ; $cc6d : $13
	.db $02                                                  ; $cc6e : $02
	eor $02                                                  ; $cc6f : $45, $02
	.db $0c                                                  ; $cc71 : $0c
	.db $a7                                                  ; $cc72 : $a7
	.db $13                                                  ; $cc73 : $13
	ora ($cd, x)                                                  ; $cc74 : $01, $cd
	.db $02                                                  ; $cc76 : $02
	.db $0c                                                  ; $cc77 : $0c
	.db $a7                                                  ; $cc78 : $a7
	.db $13                                                  ; $cc79 : $13
	.db $02                                                  ; $cc7a : $02
	eor $02                                                  ; $cc7b : $45, $02
	.db $0c                                                  ; $cc7d : $0c
	.db $a7                                                  ; $cc7e : $a7
	.db $13                                                  ; $cc7f : $13
	ora ($59, x)                                                  ; $cc80 : $01, $59
	.db $02                                                  ; $cc82 : $02
	.db $0c                                                  ; $cc83 : $0c
	.db $a7                                                  ; $cc84 : $a7
	.db $13                                                  ; $cc85 : $13
	.db $02                                                  ; $cc86 : $02
	asl $02                                                  ; $cc87 : $06, $02
	.db $0c                                                  ; $cc89 : $0c
	.db $a7                                                  ; $cc8a : $a7
	.db $13                                                  ; $cc8b : $13
	ora ($9a, x)                                                  ; $cc8c : $01, $9a
	.db $02                                                  ; $cc8e : $02
	.db $0c                                                  ; $cc8f : $0c
	.db $a7                                                  ; $cc90 : $a7
	.db $13                                                  ; $cc91 : $13
	.db $02                                                  ; $cc92 : $02
	asl $02                                                  ; $cc93 : $06, $02
	.db $0c                                                  ; $cc95 : $0c
	.db $a7                                                  ; $cc96 : $a7
	.db $13                                                  ; $cc97 : $13
	.db $02                                                  ; $cc98 : $02
	eor $02                                                  ; $cc99 : $45, $02
	.db $0c                                                  ; $cc9b : $0c
	.db $a7                                                  ; $cc9c : $a7
	.db $13                                                  ; $cc9d : $13
	ora ($cd, x)                                                  ; $cc9e : $01, $cd
	.db $02                                                  ; $cca0 : $02
	.db $0c                                                  ; $cca1 : $0c
	.db $a7                                                  ; $cca2 : $a7
	.db $13                                                  ; $cca3 : $13
	ora ($84, x)                                                  ; $cca4 : $01, $84
	.db $02                                                  ; $cca6 : $02
	.db $0c                                                  ; $cca7 : $0c
	.db $a7                                                  ; $cca8 : $a7
	.db $13                                                  ; $cca9 : $13
	ora ($22, x)                                                  ; $ccaa : $01, $22
	.db $02                                                  ; $ccac : $02
	.db $0c                                                  ; $ccad : $0c
	.db $a7                                                  ; $ccae : $a7
	.db $13                                                  ; $ccaf : $13
	.db $02                                                  ; $ccb0 : $02
	asl $02                                                  ; $ccb1 : $06, $02
	.db $0c                                                  ; $ccb3 : $0c
	.db $a7                                                  ; $ccb4 : $a7
	.db $13                                                  ; $ccb5 : $13
	ora ($9a, x)                                                  ; $ccb6 : $01, $9a
	.db $02                                                  ; $ccb8 : $02
	.db $0c                                                  ; $ccb9 : $0c
	.db $a7                                                  ; $ccba : $a7
	.db $13                                                  ; $ccbb : $13
	ora ($34, x)                                                  ; $ccbc : $01, $34
	.db $02                                                  ; $ccbe : $02
	.db $0c                                                  ; $ccbf : $0c
	.db $a7                                                  ; $ccc0 : $a7
	.db $13                                                  ; $ccc1 : $13
	ora ($03, x)                                                  ; $ccc2 : $01, $03
	.db $02                                                  ; $ccc4 : $02
	.db $0c                                                  ; $ccc5 : $0c
	.db $a7                                                  ; $ccc6 : $a7
	.db $13                                                  ; $ccc7 : $13
	ora ($59, x)                                                  ; $ccc8 : $01, $59
	.db $02                                                  ; $ccca : $02
	.db $0c                                                  ; $cccb : $0c
	.db $a7                                                  ; $cccc : $a7
	.db $13                                                  ; $cccd : $13
	.db $02                                                  ; $ccce : $02
	asl $02                                                  ; $cccf : $06, $02
	.db $0c                                                  ; $ccd1 : $0c
	.db $a7                                                  ; $ccd2 : $a7
	.db $13                                                  ; $ccd3 : $13
	ora ($9a, x)                                                  ; $ccd4 : $01, $9a
	.db $02                                                  ; $ccd6 : $02
	.db $0c                                                  ; $ccd7 : $0c
	.db $a7                                                  ; $ccd8 : $a7
	.db $13                                                  ; $ccd9 : $13
	ora ($59, x)                                                  ; $ccda : $01, $59
	.db $02                                                  ; $ccdc : $02
	.db $0c                                                  ; $ccdd : $0c
	.db $a7                                                  ; $ccde : $a7
	.db $13                                                  ; $ccdf : $13
	ora ($84, x)                                                  ; $cce0 : $01, $84
	.db $02                                                  ; $cce2 : $02
	.db $0c                                                  ; $cce3 : $0c
	.db $a7                                                  ; $cce4 : $a7
	.db $13                                                  ; $cce5 : $13
	.db $02                                                  ; $cce6 : $02
	asl $02                                                  ; $cce7 : $06, $02
	.db $0c                                                  ; $cce9 : $0c
	.db $a7                                                  ; $ccea : $a7
	.db $13                                                  ; $cceb : $13
	.db $02                                                  ; $ccec : $02
	pla                                                  ; $cced : $68
	.db $02                                                  ; $ccee : $02
	.db $0c                                                  ; $ccef : $0c
	.db $a7                                                  ; $ccf0 : $a7
	.db $13                                                  ; $ccf1 : $13
	.db $03                                                  ; $ccf2 : $03
	php                                                  ; $ccf3 : $08
	.db $02                                                  ; $ccf4 : $02
	clc                                                  ; $ccf5 : $18
	bit $0113                                                  ; $ccf6 : $2c, $13, $01
	.db $34                                                  ; $ccf9 : $34
	.db $02                                                  ; $ccfa : $02
	clc                                                  ; $ccfb : $18
	bit $0113                                                  ; $ccfc : $2c, $13, $01
	.db $34                                                  ; $ccff : $34
	.db $02                                                  ; $cd00 : $02
	clc                                                  ; $cd01 : $18
	bit $0113                                                  ; $cd02 : $2c, $13, $01
	eor $1802, y                                                  ; $cd05 : $59, $02, $18
	bit $0113                                                  ; $cd08 : $2c, $13, $01
	eor $1802, y                                                  ; $cd0b : $59, $02, $18
	bit $0113                                                  ; $cd0e : $2c, $13, $01
	sty $02                                                  ; $cd11 : $84, $02
	clc                                                  ; $cd13 : $18
	bit $0113                                                  ; $cd14 : $2c, $13, $01
	sty $02                                                  ; $cd17 : $84, $02
	.db $0c                                                  ; $cd19 : $0c
	bit $0113                                                  ; $cd1a : $2c, $13, $01
	txs                                                  ; $cd1d : $9a
	.db $02                                                  ; $cd1e : $02
	.db $0c                                                  ; $cd1f : $0c
	.db $a7                                                  ; $cd20 : $a7
	.db $13                                                  ; $cd21 : $13
	.db $00                                                  ; $cd22 : $00
	sta ($02, x)                                                  ; $cd23 : $81, $02
	.db $0c                                                  ; $cd25 : $0c
	.db $a7                                                  ; $cd26 : $a7
	.db $13                                                  ; $cd27 : $13
	.db $00                                                  ; $cd28 : $00
	ror $02                                                  ; $cd29 : $66, $02
	.db $0c                                                  ; $cd2b : $0c
	.db $a7                                                  ; $cd2c : $a7
	.db $13                                                  ; $cd2d : $13
	.db $00                                                  ; $cd2e : $00
	lsr $02, x                                                  ; $cd2f : $56, $02
	clc                                                  ; $cd31 : $18
	lsr $0113, x                                                  ; $cd32 : $5e, $13, $01
	.db $34                                                  ; $cd35 : $34
	.db $02                                                  ; $cd36 : $02
	clc                                                  ; $cd37 : $18
	lsr $0113, x                                                  ; $cd38 : $5e, $13, $01
	.db $34                                                  ; $cd3b : $34
	.db $02                                                  ; $cd3c : $02
	clc                                                  ; $cd3d : $18
	lsr $0113, x                                                  ; $cd3e : $5e, $13, $01
	eor $1802, y                                                  ; $cd41 : $59, $02, $18
	lsr $0113, x                                                  ; $cd44 : $5e, $13, $01
	eor $1802, y                                                  ; $cd47 : $59, $02, $18
	lsr $0113, x                                                  ; $cd4a : $5e, $13, $01
	sty $02                                                  ; $cd4d : $84, $02
	clc                                                  ; $cd4f : $18
	lsr $0113, x                                                  ; $cd50 : $5e, $13, $01
	sty $02                                                  ; $cd53 : $84, $02
	.db $0c                                                  ; $cd55 : $0c
	lsr $0113, x                                                  ; $cd56 : $5e, $13, $01
	txs                                                  ; $cd59 : $9a
	.db $02                                                  ; $cd5a : $02
	.db $0c                                                  ; $cd5b : $0c
	.db $a7                                                  ; $cd5c : $a7
	.db $13                                                  ; $cd5d : $13
	.db $00                                                  ; $cd5e : $00
	sta ($02, x)                                                  ; $cd5f : $81, $02
	.db $0c                                                  ; $cd61 : $0c
	.db $a7                                                  ; $cd62 : $a7
	.db $13                                                  ; $cd63 : $13
	.db $00                                                  ; $cd64 : $00
	ror $02                                                  ; $cd65 : $66, $02
	.db $0c                                                  ; $cd67 : $0c
	.db $a7                                                  ; $cd68 : $a7
	.db $13                                                  ; $cd69 : $13
	.db $00                                                  ; $cd6a : $00
	lsr $02, x                                                  ; $cd6b : $56, $02
	.db $0c                                                  ; $cd6d : $0c
	.db $a7                                                  ; $cd6e : $a7
	.db $13                                                  ; $cd6f : $13
	.db $03                                                  ; $cd70 : $03
	php                                                  ; $cd71 : $08
	.db $02                                                  ; $cd72 : $02
	.db $0c                                                  ; $cd73 : $0c
	.db $a7                                                  ; $cd74 : $a7
	.db $13                                                  ; $cd75 : $13
	.db $02                                                  ; $cd76 : $02
	asl $02                                                  ; $cd77 : $06, $02
	.db $0c                                                  ; $cd79 : $0c
	.db $a7                                                  ; $cd7a : $a7
	.db $13                                                  ; $cd7b : $13
	ora ($84, x)                                                  ; $cd7c : $01, $84
	.db $02                                                  ; $cd7e : $02
	.db $0c                                                  ; $cd7f : $0c
	.db $a7                                                  ; $cd80 : $a7
	.db $13                                                  ; $cd81 : $13
	.db $02                                                  ; $cd82 : $02
	asl $02                                                  ; $cd83 : $06, $02
	.db $0c                                                  ; $cd85 : $0c
	.db $a7                                                  ; $cd86 : $a7
	.db $13                                                  ; $cd87 : $13
	ora ($34, x)                                                  ; $cd88 : $01, $34
	.db $02                                                  ; $cd8a : $02
	.db $0c                                                  ; $cd8b : $0c
	.db $a7                                                  ; $cd8c : $a7
	.db $13                                                  ; $cd8d : $13
	.db $02                                                  ; $cd8e : $02
	asl $02                                                  ; $cd8f : $06, $02
	.db $0c                                                  ; $cd91 : $0c
	.db $a7                                                  ; $cd92 : $a7
	.db $13                                                  ; $cd93 : $13
	ora ($84, x)                                                  ; $cd94 : $01, $84
	.db $02                                                  ; $cd96 : $02
	.db $0c                                                  ; $cd97 : $0c
	.db $a7                                                  ; $cd98 : $a7
	.db $13                                                  ; $cd99 : $13
	.db $02                                                  ; $cd9a : $02
	asl $02                                                  ; $cd9b : $06, $02
	.db $0c                                                  ; $cd9d : $0c
	.db $a7                                                  ; $cd9e : $a7
	.db $13                                                  ; $cd9f : $13
	.db $03                                                  ; $cda0 : $03
	php                                                  ; $cda1 : $08
	.db $02                                                  ; $cda2 : $02
	.db $0c                                                  ; $cda3 : $0c
	.db $a7                                                  ; $cda4 : $a7
	.db $13                                                  ; $cda5 : $13
	.db $02                                                  ; $cda6 : $02
	eor $02                                                  ; $cda7 : $45, $02
	.db $0c                                                  ; $cda9 : $0c
	.db $a7                                                  ; $cdaa : $a7
	.db $13                                                  ; $cdab : $13
	ora ($cd, x)                                                  ; $cdac : $01, $cd
	.db $02                                                  ; $cdae : $02
	.db $0c                                                  ; $cdaf : $0c
	.db $a7                                                  ; $cdb0 : $a7
	.db $13                                                  ; $cdb1 : $13
	.db $02                                                  ; $cdb2 : $02
	eor $02                                                  ; $cdb3 : $45, $02
	.db $0c                                                  ; $cdb5 : $0c
	.db $a7                                                  ; $cdb6 : $a7
	.db $13                                                  ; $cdb7 : $13
	ora ($59, x)                                                  ; $cdb8 : $01, $59
	.db $02                                                  ; $cdba : $02
	.db $0c                                                  ; $cdbb : $0c
	.db $a7                                                  ; $cdbc : $a7
	.db $13                                                  ; $cdbd : $13
	.db $02                                                  ; $cdbe : $02
	asl $02                                                  ; $cdbf : $06, $02
	.db $0c                                                  ; $cdc1 : $0c
	.db $a7                                                  ; $cdc2 : $a7
	.db $13                                                  ; $cdc3 : $13
	ora ($9a, x)                                                  ; $cdc4 : $01, $9a
	.db $02                                                  ; $cdc6 : $02
	.db $0c                                                  ; $cdc7 : $0c
	.db $a7                                                  ; $cdc8 : $a7
	.db $13                                                  ; $cdc9 : $13
	.db $02                                                  ; $cdca : $02
	asl $02                                                  ; $cdcb : $06, $02
	.db $0c                                                  ; $cdcd : $0c
	.db $a7                                                  ; $cdce : $a7
	.db $13                                                  ; $cdcf : $13
	.db $02                                                  ; $cdd0 : $02
	eor $02                                                  ; $cdd1 : $45, $02
	.db $0c                                                  ; $cdd3 : $0c
	.db $a7                                                  ; $cdd4 : $a7
	.db $13                                                  ; $cdd5 : $13
	ora ($cd, x)                                                  ; $cdd6 : $01, $cd
	.db $02                                                  ; $cdd8 : $02
	.db $0c                                                  ; $cdd9 : $0c
	.db $a7                                                  ; $cdda : $a7
	.db $13                                                  ; $cddb : $13
	ora ($84, x)                                                  ; $cddc : $01, $84
	.db $02                                                  ; $cdde : $02
	.db $0c                                                  ; $cddf : $0c
	.db $a7                                                  ; $cde0 : $a7
	.db $13                                                  ; $cde1 : $13
	ora ($22, x)                                                  ; $cde2 : $01, $22
	.db $02                                                  ; $cde4 : $02
	.db $0c                                                  ; $cde5 : $0c
	.db $a7                                                  ; $cde6 : $a7
	.db $13                                                  ; $cde7 : $13
	.db $02                                                  ; $cde8 : $02
	asl $02                                                  ; $cde9 : $06, $02
	.db $0c                                                  ; $cdeb : $0c
	.db $a7                                                  ; $cdec : $a7
	.db $13                                                  ; $cded : $13
	ora ($9a, x)                                                  ; $cdee : $01, $9a
	.db $02                                                  ; $cdf0 : $02
	.db $0c                                                  ; $cdf1 : $0c
	.db $a7                                                  ; $cdf2 : $a7
	.db $13                                                  ; $cdf3 : $13
	ora ($34, x)                                                  ; $cdf4 : $01, $34
	.db $02                                                  ; $cdf6 : $02
	.db $0c                                                  ; $cdf7 : $0c
	.db $a7                                                  ; $cdf8 : $a7
	.db $13                                                  ; $cdf9 : $13
	ora ($03, x)                                                  ; $cdfa : $01, $03
	.db $02                                                  ; $cdfc : $02
	.db $0c                                                  ; $cdfd : $0c
	.db $a7                                                  ; $cdfe : $a7

br_00_cdff:
	.db $13                                                  ; $cdff : $13
	ora ($59, x)                                                  ; $ce00 : $01, $59
	.db $02                                                  ; $ce02 : $02
	.db $0c                                                  ; $ce03 : $0c
	.db $a7                                                  ; $ce04 : $a7
	.db $13                                                  ; $ce05 : $13
	.db $02                                                  ; $ce06 : $02
	asl $02                                                  ; $ce07 : $06, $02
	.db $0c                                                  ; $ce09 : $0c
	.db $a7                                                  ; $ce0a : $a7
	.db $13                                                  ; $ce0b : $13
	ora ($9a, x)                                                  ; $ce0c : $01, $9a
	.db $02                                                  ; $ce0e : $02
	.db $0c                                                  ; $ce0f : $0c
	.db $a7                                                  ; $ce10 : $a7
	.db $13                                                  ; $ce11 : $13
	ora ($59, x)                                                  ; $ce12 : $01, $59
	.db $02                                                  ; $ce14 : $02
	.db $0c                                                  ; $ce15 : $0c
	.db $a7                                                  ; $ce16 : $a7
	.db $13                                                  ; $ce17 : $13
	ora ($84, x)                                                  ; $ce18 : $01, $84
	.db $02                                                  ; $ce1a : $02
	.db $0c                                                  ; $ce1b : $0c
	.db $a7                                                  ; $ce1c : $a7
	.db $13                                                  ; $ce1d : $13
	.db $02                                                  ; $ce1e : $02
	asl $02                                                  ; $ce1f : $06, $02
	.db $0c                                                  ; $ce21 : $0c
	.db $a7                                                  ; $ce22 : $a7
	.db $13                                                  ; $ce23 : $13
	.db $02                                                  ; $ce24 : $02
	pla                                                  ; $ce25 : $68
	.db $02                                                  ; $ce26 : $02
	.db $0c                                                  ; $ce27 : $0c
	.db $a7                                                  ; $ce28 : $a7
	.db $13                                                  ; $ce29 : $13
	.db $02                                                  ; $ce2a : $02
	asl $02                                                  ; $ce2b : $06, $02
	.db $ff                                                  ; $ce2d : $ff
	.db $0c                                                  ; $ce2e : $0c
	.db $27                                                  ; $ce2f : $27
	.db $13                                                  ; $ce30 : $13
	ora ($84, x)                                                  ; $ce31 : $01, $84
	.db $02                                                  ; $ce33 : $02
	.db $0c                                                  ; $ce34 : $0c
	.db $27                                                  ; $ce35 : $27
	.db $13                                                  ; $ce36 : $13
	ora ($59, x)                                                  ; $ce37 : $01, $59
	.db $ff                                                  ; $ce39 : $ff
	.db $0c                                                  ; $ce3a : $0c

br_00_ce3b:
	.db $27                                                  ; $ce3b : $27
	.db $13                                                  ; $ce3c : $13
	ora ($34, x)                                                  ; $ce3d : $01, $34
	.db $02                                                  ; $ce3f : $02
	.db $0c                                                  ; $ce40 : $0c
	.db $27                                                  ; $ce41 : $27
	.db $13                                                  ; $ce42 : $13
	ora ($22, x)                                                  ; $ce43 : $01, $22
	.db $02                                                  ; $ce45 : $02
	bmi br_00_cdff                                                  ; $ce46 : $30, $b7

	.db $13                                                  ; $ce48 : $13
	ora ($03, x)                                                  ; $ce49 : $01, $03
	.db $02                                                  ; $ce4b : $02
	clc                                                  ; $ce4c : $18
	.db $b7                                                  ; $ce4d : $b7
	.db $13                                                  ; $ce4e : $13
	.db $00                                                  ; $ce4f : $00
	.db $c2                                                  ; $ce50 : $c2
	.db $00                                                  ; $ce51 : $00
	.db $0c                                                  ; $ce52 : $0c
	.db $a7                                                  ; $ce53 : $a7
	.db $13                                                  ; $ce54 : $13
	.db $00                                                  ; $ce55 : $00
	ora ($ff, x)                                                  ; $ce56 : $01, $ff
	.db $0c                                                  ; $ce58 : $0c
	.db $a7                                                  ; $ce59 : $a7
	.db $13                                                  ; $ce5a : $13
	ora ($03, x)                                                  ; $ce5b : $01, $03
	.db $00                                                  ; $ce5d : $00
	clc                                                  ; $ce5e : $18
	.db $b7                                                  ; $ce5f : $b7
	.db $13                                                  ; $ce60 : $13
	.db $00                                                  ; $ce61 : $00
	.db $c2                                                  ; $ce62 : $c2
	.db $00                                                  ; $ce63 : $00
	clc                                                  ; $ce64 : $18
	.db $b7                                                  ; $ce65 : $b7
	.db $13                                                  ; $ce66 : $13
	.db $00                                                  ; $ce67 : $00
	ora ($02, x)                                                  ; $ce68 : $01, $02
	.db $0c                                                  ; $ce6a : $0c
	.db $27                                                  ; $ce6b : $27
	.db $13                                                  ; $ce6c : $13
	ora ($03, x)                                                  ; $ce6d : $01, $03
	.db $02                                                  ; $ce6f : $02
	.db $0c                                                  ; $ce70 : $0c
	.db $27                                                  ; $ce71 : $27
	.db $13                                                  ; $ce72 : $13
	ora ($22, x)                                                  ; $ce73 : $01, $22
	.db $ff                                                  ; $ce75 : $ff
	.db $0c                                                  ; $ce76 : $0c
	.db $27                                                  ; $ce77 : $27
	.db $13                                                  ; $ce78 : $13
	ora ($34, x)                                                  ; $ce79 : $01, $34
	.db $02                                                  ; $ce7b : $02
	.db $0c                                                  ; $ce7c : $0c
	.db $27                                                  ; $ce7d : $27
	.db $13                                                  ; $ce7e : $13
	ora ($59, x)                                                  ; $ce7f : $01, $59
	.db $02                                                  ; $ce81 : $02
	bmi br_00_ce3b                                                  ; $ce82 : $30, $b7

	.db $13                                                  ; $ce84 : $13
	ora ($84, x)                                                  ; $ce85 : $01, $84
	.db $02                                                  ; $ce87 : $02
	clc                                                  ; $ce88 : $18
	.db $b7                                                  ; $ce89 : $b7
	.db $13                                                  ; $ce8a : $13
	.db $00                                                  ; $ce8b : $00
	.db $c2                                                  ; $ce8c : $c2
	.db $00                                                  ; $ce8d : $00
	.db $0c                                                  ; $ce8e : $0c
	.db $a7                                                  ; $ce8f : $a7
	.db $13                                                  ; $ce90 : $13
	.db $00                                                  ; $ce91 : $00
	ora ($ff, x)                                                  ; $ce92 : $01, $ff
	.db $0c                                                  ; $ce94 : $0c
	.db $a7                                                  ; $ce95 : $a7
	.db $13                                                  ; $ce96 : $13
	ora ($03, x)                                                  ; $ce97 : $01, $03
	.db $00                                                  ; $ce99 : $00
	clc                                                  ; $ce9a : $18
	.db $b7                                                  ; $ce9b : $b7
	.db $13                                                  ; $ce9c : $13
	ora ($84, x)                                                  ; $ce9d : $01, $84
	.db $00                                                  ; $ce9f : $00
	clc                                                  ; $cea0 : $18
	.db $b7                                                  ; $cea1 : $b7
	.db $13                                                  ; $cea2 : $13
	.db $00                                                  ; $cea3 : $00
	ora ($02, x)                                                  ; $cea4 : $01, $02
	.db $0c                                                  ; $cea6 : $0c
	lda #$13                                                  ; $cea7 : $a9, $13
	.db $00                                                  ; $cea9 : $00
	.db $c2                                                  ; $ceaa : $c2
	.db $02                                                  ; $ceab : $02
	.db $0c                                                  ; $ceac : $0c
	lda #$13                                                  ; $cead : $a9, $13
	.db $00                                                  ; $ceaf : $00
	ldy $0cff                                                  ; $ceb0 : $ac, $ff, $0c
	lda #$13                                                  ; $ceb3 : $a9, $13
	.db $00                                                  ; $ceb5 : $00
	sta $0c02, y                                                  ; $ceb6 : $99, $02, $0c
	lda #$13                                                  ; $ceb9 : $a9, $13
	.db $00                                                  ; $cebb : $00
	sta ($02), y                                                  ; $cebc : $91, $02
	.db $0c                                                  ; $cebe : $0c
	lda #$13                                                  ; $cebf : $a9, $13
	.db $00                                                  ; $cec1 : $00
	sta ($02, x)                                                  ; $cec2 : $81, $02
	.db $0c                                                  ; $cec4 : $0c
	lda #$13                                                  ; $cec5 : $a9, $13
	.db $00                                                  ; $cec7 : $00
	sta ($ff), y                                                  ; $cec8 : $91, $ff
	.db $0c                                                  ; $ceca : $0c
	lda #$13                                                  ; $cecb : $a9, $13
	.db $00                                                  ; $cecd : $00
	sta $0c02, y                                                  ; $cece : $99, $02, $0c
	lda #$13                                                  ; $ced1 : $a9, $13
	.db $00                                                  ; $ced3 : $00
	ldy $1802                                                  ; $ced4 : $ac, $02, $18

br_00_ced7:
	lda $13.w, y                                                  ; $ced7 : $b9, $13, $00
	.db $c2                                                  ; $ceda : $c2
	.db $02                                                  ; $cedb : $02
	clc                                                  ; $cedc : $18
	lda $13.w, y                                                  ; $cedd : $b9, $13, $00
	sta $3002, y                                                  ; $cee0 : $99, $02, $30
	lda $13.w, y                                                  ; $cee3 : $b9, $13, $00
	.db $c2                                                  ; $cee6 : $c2
	.db $02                                                  ; $cee7 : $02
	.db $ff                                                  ; $cee8 : $ff
	clc                                                  ; $cee9 : $18
	ldy $13, x                                                  ; $ceea : $b4, $13
	ora ($84, x)                                                  ; $ceec : $01, $84
	.db $00                                                  ; $ceee : $00
	.db $0c                                                  ; $ceef : $0c
	ldy $13                                                  ; $cef0 : $a4, $13
	.db $00                                                  ; $cef2 : $00
	ora ($ff, x)                                                  ; $cef3 : $01, $ff
	.db $0c                                                  ; $cef5 : $0c
	ldy $13                                                  ; $cef6 : $a4, $13
	.db $02                                                  ; $cef8 : $02
	asl $00                                                  ; $cef9 : $06, $00
	clc                                                  ; $cefb : $18
	ldy $13, x                                                  ; $cefc : $b4, $13
	ora ($84, x)                                                  ; $cefe : $01, $84
	.db $00                                                  ; $cf00 : $00
	clc                                                  ; $cf01 : $18
	ldy $13, x                                                  ; $cf02 : $b4, $13
	.db $00                                                  ; $cf04 : $00
	ora ($02, x)                                                  ; $cf05 : $01, $02
	.db $0c                                                  ; $cf07 : $0c
	ror $13                                                  ; $cf08 : $66, $13
	.db $00                                                  ; $cf0a : $00
	.db $c2                                                  ; $cf0b : $c2
	.db $02                                                  ; $cf0c : $02
	.db $0c                                                  ; $cf0d : $0c
	ror $13                                                  ; $cf0e : $66, $13
	.db $00                                                  ; $cf10 : $00
	ldy $0cff                                                  ; $cf11 : $ac, $ff, $0c
	ror $13                                                  ; $cf14 : $66, $13
	.db $00                                                  ; $cf16 : $00
	sta $0c02, y                                                  ; $cf17 : $99, $02, $0c
	ror $13                                                  ; $cf1a : $66, $13
	.db $00                                                  ; $cf1c : $00
	sta ($02), y                                                  ; $cf1d : $91, $02
	bmi br_00_ced7                                                  ; $cf1f : $30, $b6

	.db $13                                                  ; $cf21 : $13
	.db $00                                                  ; $cf22 : $00
	sta ($02, x)                                                  ; $cf23 : $81, $02
	clc                                                  ; $cf25 : $18
	ldy $13, x                                                  ; $cf26 : $b4, $13
	ora ($84, x)                                                  ; $cf28 : $01, $84
	.db $00                                                  ; $cf2a : $00
	.db $0c                                                  ; $cf2b : $0c
	ldy $13                                                  ; $cf2c : $a4, $13
	.db $00                                                  ; $cf2e : $00
	ora ($ff, x)                                                  ; $cf2f : $01, $ff
	.db $0c                                                  ; $cf31 : $0c
	ldy $13                                                  ; $cf32 : $a4, $13
	.db $02                                                  ; $cf34 : $02
	asl $00                                                  ; $cf35 : $06, $00
	clc                                                  ; $cf37 : $18
	ldy $13, x                                                  ; $cf38 : $b4, $13
	.db $03                                                  ; $cf3a : $03
	php                                                  ; $cf3b : $08
	.db $02                                                  ; $cf3c : $02
	clc                                                  ; $cf3d : $18
	ldy $13, x                                                  ; $cf3e : $b4, $13
	.db $00                                                  ; $cf40 : $00
	ora ($02, x)                                                  ; $cf41 : $01, $02
	.db $0c                                                  ; $cf43 : $0c
	ror $13                                                  ; $cf44 : $66, $13
	.db $00                                                  ; $cf46 : $00
	sta ($02, x)                                                  ; $cf47 : $81, $02
	.db $0c                                                  ; $cf49 : $0c
	ror $13                                                  ; $cf4a : $66, $13
	.db $00                                                  ; $cf4c : $00
	sta ($ff), y                                                  ; $cf4d : $91, $ff
	.db $0c                                                  ; $cf4f : $0c
	ror $13                                                  ; $cf50 : $66, $13
	.db $00                                                  ; $cf52 : $00
	sta $0c02, y                                                  ; $cf53 : $99, $02, $0c
	ror $13                                                  ; $cf56 : $66, $13
	.db $00                                                  ; $cf58 : $00
	ldy $3002                                                  ; $cf59 : $ac, $02, $30
	ldx $13, y                                                  ; $cf5c : $b6, $13
	.db $00                                                  ; $cf5e : $00
	.db $c2                                                  ; $cf5f : $c2
	.db $02                                                  ; $cf60 : $02
	.db $0c                                                  ; $cf61 : $0c
	ldx $13                                                  ; $cf62 : $a6, $13
	ora ($34, x)                                                  ; $cf64 : $01, $34
	.db $00                                                  ; $cf66 : $00
	.db $0c                                                  ; $cf67 : $0c
	ldx $13                                                  ; $cf68 : $a6, $13
	ora ($22, x)                                                  ; $cf6a : $01, $22
	.db $ff                                                  ; $cf6c : $ff
	.db $0c                                                  ; $cf6d : $0c
	ldx $13                                                  ; $cf6e : $a6, $13
	ora ($03, x)                                                  ; $cf70 : $01, $03
	.db $02                                                  ; $cf72 : $02
	.db $0c                                                  ; $cf73 : $0c
	ldx $13                                                  ; $cf74 : $a6, $13
	.db $00                                                  ; $cf76 : $00
	inc $00                                                  ; $cf77 : $e6, $00
	.db $0c                                                  ; $cf79 : $0c
	ldx $13                                                  ; $cf7a : $a6, $13
	.db $00                                                  ; $cf7c : $00
	cmp $0c00                                                  ; $cf7d : $cd, $00, $0c
	ldx $13                                                  ; $cf80 : $a6, $13
	.db $00                                                  ; $cf82 : $00
	inc $ff                                                  ; $cf83 : $e6, $ff
	.db $0c                                                  ; $cf85 : $0c
	ldx $13                                                  ; $cf86 : $a6, $13
	ora ($03, x)                                                  ; $cf88 : $01, $03
	.db $02                                                  ; $cf8a : $02
	.db $0c                                                  ; $cf8b : $0c
	lda $13                                                  ; $cf8c : $a5, $13
	ora ($22, x)                                                  ; $cf8e : $01, $22
	.db $00                                                  ; $cf90 : $00
	clc                                                  ; $cf91 : $18
	lda $13, x                                                  ; $cf92 : $b5, $13
	ora ($34, x)                                                  ; $cf94 : $01, $34
	.db $00                                                  ; $cf96 : $00
	clc                                                  ; $cf97 : $18
	ldy $13, x                                                  ; $cf98 : $b4, $13
	.db $02                                                  ; $cf9a : $02
	asl $00                                                  ; $cf9b : $06, $00
	.db $1b                                                  ; $cf9d : $1b
	ldy $13, x                                                  ; $cf9e : $b4, $13
	.db $03                                                  ; $cfa0 : $03
	php                                                  ; $cfa1 : $08
	.db $00                                                  ; $cfa2 : $00
	ora $b4, x                                                  ; $cfa3 : $15, $b4
	.db $13                                                  ; $cfa5 : $13
	.db $00                                                  ; $cfa6 : $00
	ora ($ff, x)                                                  ; $cfa7 : $01, $ff
	.db $ff                                                  ; $cfa9 : $ff
	.db $0c                                                  ; $cfaa : $0c
	asl a                                                  ; $cfab : $0a
	.db $13                                                  ; $cfac : $13
	.db $00                                                  ; $cfad : $00
	ldy $0c02                                                  ; $cfae : $ac, $02, $0c
	asl a                                                  ; $cfb1 : $0a
	.db $13                                                  ; $cfb2 : $13
	.db $00                                                  ; $cfb3 : $00
	ora ($02, x)                                                  ; $cfb4 : $01, $02
	.db $0c                                                  ; $cfb6 : $0c
	asl a                                                  ; $cfb7 : $0a
	.db $13                                                  ; $cfb8 : $13
	.db $00                                                  ; $cfb9 : $00
	ldy $0c02                                                  ; $cfba : $ac, $02, $0c
	asl a                                                  ; $cfbd : $0a
	.db $13                                                  ; $cfbe : $13
	.db $00                                                  ; $cfbf : $00
	ldy $0c02                                                  ; $cfc0 : $ac, $02, $0c
	asl a                                                  ; $cfc3 : $0a
	.db $13                                                  ; $cfc4 : $13
	.db $00                                                  ; $cfc5 : $00
	ldy $0c02                                                  ; $cfc6 : $ac, $02, $0c
	asl a                                                  ; $cfc9 : $0a
	.db $13                                                  ; $cfca : $13
	.db $00                                                  ; $cfcb : $00
	ora ($02, x)                                                  ; $cfcc : $01, $02
	.db $0c                                                  ; $cfce : $0c
	asl a                                                  ; $cfcf : $0a
	.db $13                                                  ; $cfd0 : $13
	.db $00                                                  ; $cfd1 : $00
	ldy $0c02                                                  ; $cfd2 : $ac, $02, $0c
	asl a                                                  ; $cfd5 : $0a
	.db $13                                                  ; $cfd6 : $13
	.db $00                                                  ; $cfd7 : $00
	ldy $0c02                                                  ; $cfd8 : $ac, $02, $0c
	.db $44                                                  ; $cfdb : $44
	.db $13                                                  ; $cfdc : $13
	.db $00                                                  ; $cfdd : $00
	ldy $0c02                                                  ; $cfde : $ac, $02, $0c
	.db $44                                                  ; $cfe1 : $44
	.db $13                                                  ; $cfe2 : $13
	.db $00                                                  ; $cfe3 : $00
	inc $02                                                  ; $cfe4 : $e6, $02
	.db $0c                                                  ; $cfe6 : $0c
	.db $44                                                  ; $cfe7 : $44
	.db $13                                                  ; $cfe8 : $13
	.db $00                                                  ; $cfe9 : $00
	ldy $0c02                                                  ; $cfea : $ac, $02, $0c
	.db $44                                                  ; $cfed : $44
	.db $13                                                  ; $cfee : $13
	.db $00                                                  ; $cfef : $00
	sta ($02), y                                                  ; $cff0 : $91, $02
	.db $0c                                                  ; $cff2 : $0c
	.db $44                                                  ; $cff3 : $44
	.db $13                                                  ; $cff4 : $13
	.db $00                                                  ; $cff5 : $00
	sta $0c02, y                                                  ; $cff6 : $99, $02, $0c
	.db $44                                                  ; $cff9 : $44
	.db $13                                                  ; $cffa : $13
	.db $00                                                  ; $cffb : $00
	.db $c2                                                  ; $cffc : $c2
	.db $02                                                  ; $cffd : $02
	.db $0c                                                  ; $cffe : $0c
	.db $44                                                  ; $cfff : $44
	.db $13                                                  ; $d000 : $13
	.db $00                                                  ; $d001 : $00
	ldy $0c02                                                  ; $d002 : $ac, $02, $0c
	ldy $13                                                  ; $d005 : $a4, $13
	.db $00                                                  ; $d007 : $00
	ora ($02, x)                                                  ; $d008 : $01, $02
	.db $0c                                                  ; $d00a : $0c
	bit $13                                                  ; $d00b : $24, $13
	ora ($59, x)                                                  ; $d00d : $01, $59
	.db $02                                                  ; $d00f : $02
	.db $0c                                                  ; $d010 : $0c
	bit $13                                                  ; $d011 : $24, $13
	ora ($cd, x)                                                  ; $d013 : $01, $cd
	.db $02                                                  ; $d015 : $02
	.db $0c                                                  ; $d016 : $0c
	bit $13                                                  ; $d017 : $24, $13
	ora ($59, x)                                                  ; $d019 : $01, $59
	.db $02                                                  ; $d01b : $02
	.db $0c                                                  ; $d01c : $0c
	bit $13                                                  ; $d01d : $24, $13
	ora ($cd, x)                                                  ; $d01f : $01, $cd
	.db $02                                                  ; $d021 : $02
	.db $0c                                                  ; $d022 : $0c
	bit $13                                                  ; $d023 : $24, $13
	ora ($59, x)                                                  ; $d025 : $01, $59
	.db $02                                                  ; $d027 : $02
	.db $0c                                                  ; $d028 : $0c
	bit $13                                                  ; $d029 : $24, $13
	ora ($cd, x)                                                  ; $d02b : $01, $cd
	.db $02                                                  ; $d02d : $02
	.db $0c                                                  ; $d02e : $0c
	bit $13                                                  ; $d02f : $24, $13
	ora ($59, x)                                                  ; $d031 : $01, $59
	.db $02                                                  ; $d033 : $02
	.db $0c                                                  ; $d034 : $0c
	bit $13                                                  ; $d035 : $24, $13
	ora ($cd, x)                                                  ; $d037 : $01, $cd
	.db $02                                                  ; $d039 : $02
	.db $0c                                                  ; $d03a : $0c
	bit $13                                                  ; $d03b : $24, $13
	ora ($59, x)                                                  ; $d03d : $01, $59
	.db $02                                                  ; $d03f : $02
	.db $0c                                                  ; $d040 : $0c
	ldy $13                                                  ; $d041 : $a4, $13
	.db $00                                                  ; $d043 : $00
	ora ($02, x)                                                  ; $d044 : $01, $02
	.db $0c                                                  ; $d046 : $0c
	bit $13                                                  ; $d047 : $24, $13
	ora ($cd, x)                                                  ; $d049 : $01, $cd
	.db $02                                                  ; $d04b : $02
	.db $0c                                                  ; $d04c : $0c
	ldy $13                                                  ; $d04d : $a4, $13
	.db $00                                                  ; $d04f : $00
	ora ($02, x)                                                  ; $d050 : $01, $02
	.db $0c                                                  ; $d052 : $0c
	bit $13                                                  ; $d053 : $24, $13
	ora ($59, x)                                                  ; $d055 : $01, $59
	.db $02                                                  ; $d057 : $02
	bit $a4                                                  ; $d058 : $24, $a4
	.db $13                                                  ; $d05a : $13
	.db $00                                                  ; $d05b : $00
	ora ($ff, x)                                                  ; $d05c : $01, $ff
	.db $ff                                                  ; $d05e : $ff
	.db $0c                                                  ; $d05f : $0c
	.db $a7                                                  ; $d060 : $a7
	.db $13                                                  ; $d061 : $13
	.db $00                                                  ; $d062 : $00
	ora ($00, x)                                                  ; $d063 : $01, $00
	.db $0c                                                  ; $d065 : $0c
	.db $a7                                                  ; $d066 : $a7
	.db $13                                                  ; $d067 : $13
	.db $02                                                  ; $d068 : $02
	.db $b3                                                  ; $d069 : $b3
	.db $ff                                                  ; $d06a : $ff
	.db $0c                                                  ; $d06b : $0c
	.db $a7                                                  ; $d06c : $a7
	.db $13                                                  ; $d06d : $13
	.db $02                                                  ; $d06e : $02
	eor $ff                                                  ; $d06f : $45, $ff
	.db $0c                                                  ; $d071 : $0c
	.db $a7                                                  ; $d072 : $a7
	.db $13                                                  ; $d073 : $13
	.db $02                                                  ; $d074 : $02
	.db $b3                                                  ; $d075 : $b3
	.db $ff                                                  ; $d076 : $ff
	.db $0c                                                  ; $d077 : $0c
	.db $a7                                                  ; $d078 : $a7
	.db $13                                                  ; $d079 : $13
	.db $00                                                  ; $d07a : $00
	ora ($00, x)                                                  ; $d07b : $01, $00
	.db $0c                                                  ; $d07d : $0c
	.db $a7                                                  ; $d07e : $a7
	.db $13                                                  ; $d07f : $13
	.db $02                                                  ; $d080 : $02
	.db $b3                                                  ; $d081 : $b3
	.db $ff                                                  ; $d082 : $ff
	.db $0c                                                  ; $d083 : $0c
	.db $a7                                                  ; $d084 : $a7
	.db $03                                                  ; $d085 : $03
	.db $02                                                  ; $d086 : $02
	eor $ff                                                  ; $d087 : $45, $ff
	.db $0c                                                  ; $d089 : $0c
	.db $a7                                                  ; $d08a : $a7
	.db $00                                                  ; $d08b : $00
	.db $02                                                  ; $d08c : $02
	.db $b3                                                  ; $d08d : $b3
	.db $ff                                                  ; $d08e : $ff
	.db $0c                                                  ; $d08f : $0c
	.db $a7                                                  ; $d090 : $a7
	.db $00                                                  ; $d091 : $00
	.db $00                                                  ; $d092 : $00
	ora ($00, x)                                                  ; $d093 : $01, $00
	.db $0c                                                  ; $d095 : $0c
	.db $a7                                                  ; $d096 : $a7
	.db $00                                                  ; $d097 : $00
	.db $02                                                  ; $d098 : $02
	eor $ff                                                  ; $d099 : $45, $ff
	.db $0c                                                  ; $d09b : $0c
	.db $a7                                                  ; $d09c : $a7
	.db $00                                                  ; $d09d : $00
	.db $00                                                  ; $d09e : $00
	ora ($ff, x)                                                  ; $d09f : $01, $ff
	.db $0c                                                  ; $d0a1 : $0c
	.db $a7                                                  ; $d0a2 : $a7
	.db $03                                                  ; $d0a3 : $03
	ora ($cd, x)                                                  ; $d0a4 : $01, $cd
	.db $ff                                                  ; $d0a6 : $ff
	.db $0c                                                  ; $d0a7 : $0c
	.db $a7                                                  ; $d0a8 : $a7
	.db $03                                                  ; $d0a9 : $03
	.db $00                                                  ; $d0aa : $00
	ora ($00, x)                                                  ; $d0ab : $01, $00
	.db $0c                                                  ; $d0ad : $0c
	.db $a7                                                  ; $d0ae : $a7
	.db $03                                                  ; $d0af : $03
	.db $03                                                  ; $d0b0 : $03
	php                                                  ; $d0b1 : $08
	.db $ff                                                  ; $d0b2 : $ff
	.db $0c                                                  ; $d0b3 : $0c
	.db $a7                                                  ; $d0b4 : $a7
	.db $03                                                  ; $d0b5 : $03
	.db $02                                                  ; $d0b6 : $02
	.db $b3                                                  ; $d0b7 : $b3
	.db $ff                                                  ; $d0b8 : $ff
	.db $0c                                                  ; $d0b9 : $0c
	.db $a7                                                  ; $d0ba : $a7
	.db $03                                                  ; $d0bb : $03
	.db $00                                                  ; $d0bc : $00
	ora ($ff, x)                                                  ; $d0bd : $01, $ff
	bit $bf                                                  ; $d0bf : $24, $bf
	.db $03                                                  ; $d0c1 : $03
	.db $00                                                  ; $d0c2 : $00
	.db $73                                                  ; $d0c3 : $73
	.db $00                                                  ; $d0c4 : $00
	.db $0c                                                  ; $d0c5 : $0c
	.db $af                                                  ; $d0c6 : $af
	.db $03                                                  ; $d0c7 : $03
	.db $00                                                  ; $d0c8 : $00
	sta ($ff), y                                                  ; $d0c9 : $91, $ff
	bit $bf                                                  ; $d0cb : $24, $bf
	.db $03                                                  ; $d0cd : $03
	.db $00                                                  ; $d0ce : $00
	ldy $0c00                                                  ; $d0cf : $ac, $00, $0c
	.db $af                                                  ; $d0d2 : $af
	.db $03                                                  ; $d0d3 : $03
	.db $00                                                  ; $d0d4 : $00
	ora ($ff, x)                                                  ; $d0d5 : $01, $ff
	bit $bf                                                  ; $d0d7 : $24, $bf
	.db $03                                                  ; $d0d9 : $03
	.db $00                                                  ; $d0da : $00
	inc $00                                                  ; $d0db : $e6, $00
	.db $0c                                                  ; $d0dd : $0c
	.db $af                                                  ; $d0de : $af
	.db $03                                                  ; $d0df : $03
	.db $00                                                  ; $d0e0 : $00
	sta ($ff), y                                                  ; $d0e1 : $91, $ff
	bit $af                                                  ; $d0e3 : $24, $af
	.db $03                                                  ; $d0e5 : $03
	.db $00                                                  ; $d0e6 : $00
	ldy $0c00                                                  ; $d0e7 : $ac, $00, $0c
	.db $af                                                  ; $d0ea : $af
	.db $03                                                  ; $d0eb : $03
	.db $00                                                  ; $d0ec : $00
	ora ($ff, x)                                                  ; $d0ed : $01, $ff
	.db $ff                                                  ; $d0ef : $ff
	.db $07                                                  ; $d0f0 : $07
	.db $a7                                                  ; $d0f1 : $a7
	.db $13                                                  ; $d0f2 : $13
	.db $00                                                  ; $d0f3 : $00
	lsr $02, x                                                  ; $d0f4 : $56, $02
	.db $07                                                  ; $d0f6 : $07
	.db $a7                                                  ; $d0f7 : $a7
	.db $13                                                  ; $d0f8 : $13
	.db $00                                                  ; $d0f9 : $00
	rts                                                  ; $d0fa : $60


	.db $02                                                  ; $d0fb : $02
	.db $07                                                  ; $d0fc : $07
	.db $a7                                                  ; $d0fd : $a7
	.db $13                                                  ; $d0fe : $13
	.db $00                                                  ; $d0ff : $00
	adc $0702                                                  ; $d100 : $6d, $02, $07
	.db $a7                                                  ; $d103 : $a7
	.db $13                                                  ; $d104 : $13
	.db $00                                                  ; $d105 : $00
	.db $73                                                  ; $d106 : $73
	.db $02                                                  ; $d107 : $02
	.db $07                                                  ; $d108 : $07
	.db $a7                                                  ; $d109 : $a7
	.db $13                                                  ; $d10a : $13
	.db $00                                                  ; $d10b : $00
	rts                                                  ; $d10c : $60


	.db $02                                                  ; $d10d : $02
	.db $07                                                  ; $d10e : $07
	.db $a7                                                  ; $d10f : $a7
	.db $13                                                  ; $d110 : $13
	.db $00                                                  ; $d111 : $00
	adc $0702                                                  ; $d112 : $6d, $02, $07
	.db $a7                                                  ; $d115 : $a7
	.db $13                                                  ; $d116 : $13
	.db $00                                                  ; $d117 : $00
	.db $73                                                  ; $d118 : $73
	.db $02                                                  ; $d119 : $02
	.db $07                                                  ; $d11a : $07
	.db $a7                                                  ; $d11b : $a7
	.db $13                                                  ; $d11c : $13
	.db $00                                                  ; $d11d : $00
	sta ($02, x)                                                  ; $d11e : $81, $02
	.db $07                                                  ; $d120 : $07
	.db $a7                                                  ; $d121 : $a7
	.db $13                                                  ; $d122 : $13
	.db $00                                                  ; $d123 : $00
	.db $73                                                  ; $d124 : $73
	.db $02                                                  ; $d125 : $02
	.db $07                                                  ; $d126 : $07
	.db $a7                                                  ; $d127 : $a7
	.db $13                                                  ; $d128 : $13
	.db $00                                                  ; $d129 : $00
	sta ($02, x)                                                  ; $d12a : $81, $02
	.db $07                                                  ; $d12c : $07
	.db $a7                                                  ; $d12d : $a7
	.db $13                                                  ; $d12e : $13
	.db $00                                                  ; $d12f : $00
	sta ($02), y                                                  ; $d130 : $91, $02
	.db $07                                                  ; $d132 : $07
	.db $a7                                                  ; $d133 : $a7
	.db $13                                                  ; $d134 : $13
	.db $00                                                  ; $d135 : $00
	sta $0702, y                                                  ; $d136 : $99, $02, $07
	.db $a7                                                  ; $d139 : $a7
	.db $13                                                  ; $d13a : $13
	.db $00                                                  ; $d13b : $00
	ldy $0702                                                  ; $d13c : $ac, $02, $07
	.db $a7                                                  ; $d13f : $a7
	.db $13                                                  ; $d140 : $13
	.db $00                                                  ; $d141 : $00
	.db $c2                                                  ; $d142 : $c2
	.db $02                                                  ; $d143 : $02
	.db $07                                                  ; $d144 : $07
	.db $a7                                                  ; $d145 : $a7
	.db $13                                                  ; $d146 : $13
	.db $00                                                  ; $d147 : $00
	cmp $0702                                                  ; $d148 : $cd, $02, $07
	.db $a7                                                  ; $d14b : $a7
	.db $13                                                  ; $d14c : $13
	.db $00                                                  ; $d14d : $00
	inc $02                                                  ; $d14e : $e6, $02
	.db $07                                                  ; $d150 : $07
	.db $a7                                                  ; $d151 : $a7
	.db $13                                                  ; $d152 : $13
	ora ($22, x)                                                  ; $d153 : $01, $22
	.db $02                                                  ; $d155 : $02
	.db $07                                                  ; $d156 : $07
	.db $a7                                                  ; $d157 : $a7
	.db $13                                                  ; $d158 : $13
	ora ($34, x)                                                  ; $d159 : $01, $34
	.db $02                                                  ; $d15b : $02
	.db $07                                                  ; $d15c : $07
	.db $a7                                                  ; $d15d : $a7
	.db $13                                                  ; $d15e : $13
	ora ($12, x)                                                  ; $d15f : $01, $12
	.db $02                                                  ; $d161 : $02
	.db $07                                                  ; $d162 : $07
	.db $a7                                                  ; $d163 : $a7
	.db $13                                                  ; $d164 : $13
	ora ($03, x)                                                  ; $d165 : $01, $03
	.db $02                                                  ; $d167 : $02
	.db $07                                                  ; $d168 : $07
	.db $a7                                                  ; $d169 : $a7
	.db $13                                                  ; $d16a : $13
	.db $00                                                  ; $d16b : $00
	inc $02                                                  ; $d16c : $e6, $02
	.db $07                                                  ; $d16e : $07
	.db $a7                                                  ; $d16f : $a7
	.db $13                                                  ; $d170 : $13
	ora ($03, x)                                                  ; $d171 : $01, $03
	.db $02                                                  ; $d173 : $02
	.db $07                                                  ; $d174 : $07
	.db $a7                                                  ; $d175 : $a7
	.db $13                                                  ; $d176 : $13
	.db $00                                                  ; $d177 : $00
	inc $02                                                  ; $d178 : $e6, $02
	.db $07                                                  ; $d17a : $07
	.db $a7                                                  ; $d17b : $a7
	.db $13                                                  ; $d17c : $13
	.db $00                                                  ; $d17d : $00
	.db $b7                                                  ; $d17e : $b7
	.db $02                                                  ; $d17f : $02
	.db $07                                                  ; $d180 : $07
	.db $a7                                                  ; $d181 : $a7
	.db $13                                                  ; $d182 : $13
	.db $00                                                  ; $d183 : $00
	ldy $0702                                                  ; $d184 : $ac, $02, $07
	.db $a7                                                  ; $d187 : $a7
	.db $13                                                  ; $d188 : $13
	.db $00                                                  ; $d189 : $00
	inc $02                                                  ; $d18a : $e6, $02
	.db $07                                                  ; $d18c : $07
	.db $a7                                                  ; $d18d : $a7
	.db $13                                                  ; $d18e : $13
	.db $00                                                  ; $d18f : $00
	ldy $0702                                                  ; $d190 : $ac, $02, $07
	.db $a7                                                  ; $d193 : $a7
	.db $13                                                  ; $d194 : $13
	.db $00                                                  ; $d195 : $00
	inc $02                                                  ; $d196 : $e6, $02
	.db $07                                                  ; $d198 : $07
	.db $a7                                                  ; $d199 : $a7
	.db $13                                                  ; $d19a : $13
	.db $00                                                  ; $d19b : $00
	sta ($02), y                                                  ; $d19c : $91, $02
	.db $07                                                  ; $d19e : $07
	.db $a7                                                  ; $d19f : $a7
	.db $13                                                  ; $d1a0 : $13
	.db $00                                                  ; $d1a1 : $00
	ldy $0702                                                  ; $d1a2 : $ac, $02, $07
	.db $a7                                                  ; $d1a5 : $a7
	.db $13                                                  ; $d1a6 : $13
	.db $00                                                  ; $d1a7 : $00
	sta ($02), y                                                  ; $d1a8 : $91, $02
	.db $07                                                  ; $d1aa : $07
	.db $a7                                                  ; $d1ab : $a7
	.db $13                                                  ; $d1ac : $13
	.db $00                                                  ; $d1ad : $00
	ldy $0702                                                  ; $d1ae : $ac, $02, $07
	.db $a7                                                  ; $d1b1 : $a7
	.db $13                                                  ; $d1b2 : $13
	.db $00                                                  ; $d1b3 : $00
	ldy $0702                                                  ; $d1b4 : $ac, $02, $07
	.db $a7                                                  ; $d1b7 : $a7
	.db $13                                                  ; $d1b8 : $13
	.db $00                                                  ; $d1b9 : $00
	inc $02                                                  ; $d1ba : $e6, $02
	.db $07                                                  ; $d1bc : $07
	.db $a7                                                  ; $d1bd : $a7
	.db $13                                                  ; $d1be : $13
	.db $00                                                  ; $d1bf : $00
	ldy $0702                                                  ; $d1c0 : $ac, $02, $07
	.db $a7                                                  ; $d1c3 : $a7
	.db $13                                                  ; $d1c4 : $13
	.db $00                                                  ; $d1c5 : $00
	inc $02                                                  ; $d1c6 : $e6, $02
	.db $07                                                  ; $d1c8 : $07
	.db $a7                                                  ; $d1c9 : $a7
	.db $13                                                  ; $d1ca : $13
	.db $00                                                  ; $d1cb : $00
	sta ($02), y                                                  ; $d1cc : $91, $02
	.db $07                                                  ; $d1ce : $07
	.db $a7                                                  ; $d1cf : $a7
	.db $13                                                  ; $d1d0 : $13
	.db $00                                                  ; $d1d1 : $00
	ldy $0702                                                  ; $d1d2 : $ac, $02, $07
	.db $a7                                                  ; $d1d5 : $a7
	.db $13                                                  ; $d1d6 : $13
	.db $00                                                  ; $d1d7 : $00
	sta ($02), y                                                  ; $d1d8 : $91, $02
	.db $07                                                  ; $d1da : $07
	.db $a7                                                  ; $d1db : $a7
	.db $13                                                  ; $d1dc : $13
	.db $00                                                  ; $d1dd : $00
	ldy $ff02                                                  ; $d1de : $ac, $02, $ff
	asl $03a7                                                  ; $d1e1 : $0e, $a7, $03
	.db $02                                                  ; $d1e4 : $02
	.db $b3                                                  ; $d1e5 : $b3
	.db $00                                                  ; $d1e6 : $00
	asl $03a7                                                  ; $d1e7 : $0e, $a7, $03
	ora ($cd, x)                                                  ; $d1ea : $01, $cd
	.db $00                                                  ; $d1ec : $00
	asl $03a7                                                  ; $d1ed : $0e, $a7, $03
	ora ($84, x)                                                  ; $d1f0 : $01, $84
	.db $00                                                  ; $d1f2 : $00
	asl $03a7                                                  ; $d1f3 : $0e, $a7, $03
	ora ($cd, x)                                                  ; $d1f6 : $01, $cd
	.db $00                                                  ; $d1f8 : $00
	asl $03a7                                                  ; $d1f9 : $0e, $a7, $03
	.db $02                                                  ; $d1fc : $02
	eor $00                                                  ; $d1fd : $45, $00
	asl $03a7                                                  ; $d1ff : $0e, $a7, $03
	.db $02                                                  ; $d202 : $02
	.db $b3                                                  ; $d203 : $b3
	.db $00                                                  ; $d204 : $00
	asl $03a7                                                  ; $d205 : $0e, $a7, $03
	.db $03                                                  ; $d208 : $03
	php                                                  ; $d209 : $08
	.db $00                                                  ; $d20a : $00
	asl $03a7                                                  ; $d20b : $0e, $a7, $03
	.db $03                                                  ; $d20e : $03
	.db $9b                                                  ; $d20f : $9b
	.db $00                                                  ; $d210 : $00
	asl $03a7                                                  ; $d211 : $0e, $a7, $03
	.db $04                                                  ; $d214 : $04
	.db $8b                                                  ; $d215 : $8b
	.db $00                                                  ; $d216 : $00
	asl $03a7                                                  ; $d217 : $0e, $a7, $03
	.db $04                                                  ; $d21a : $04
	.db $0c                                                  ; $d21b : $0c
	.db $00                                                  ; $d21c : $00
	asl $03a7                                                  ; $d21d : $0e, $a7, $03
	.db $03                                                  ; $d220 : $03
	.db $9b                                                  ; $d221 : $9b
	.db $00                                                  ; $d222 : $00
	asl $03a7                                                  ; $d223 : $0e, $a7, $03
	.db $03                                                  ; $d226 : $03
	php                                                  ; $d227 : $08
	.db $00                                                  ; $d228 : $00
	asl $03a7                                                  ; $d229 : $0e, $a7, $03
	.db $02                                                  ; $d22c : $02
	.db $b3                                                  ; $d22d : $b3
	.db $00                                                  ; $d22e : $00
	asl $03a7                                                  ; $d22f : $0e, $a7, $03
	.db $02                                                  ; $d232 : $02
	eor $00                                                  ; $d233 : $45, $00
	asl $03a7                                                  ; $d235 : $0e, $a7, $03
	ora ($cd, x)                                                  ; $d238 : $01, $cd
	.db $00                                                  ; $d23a : $00
	asl $03a7                                                  ; $d23b : $0e, $a7, $03
	.db $02                                                  ; $d23e : $02
	.db $b3                                                  ; $d23f : $b3
	.db $00                                                  ; $d240 : $00
	asl $03a7                                                  ; $d241 : $0e, $a7, $03
	.db $02                                                  ; $d244 : $02
	.db $b3                                                  ; $d245 : $b3
	.db $00                                                  ; $d246 : $00
	asl $03a7                                                  ; $d247 : $0e, $a7, $03
	.db $02                                                  ; $d24a : $02
	eor $00                                                  ; $d24b : $45, $00
	asl $03a7                                                  ; $d24d : $0e, $a7, $03
	ora ($cd, x)                                                  ; $d250 : $01, $cd
	.db $00                                                  ; $d252 : $00
	asl $03a7                                                  ; $d253 : $0e, $a7, $03
	.db $02                                                  ; $d256 : $02
	.db $b3                                                  ; $d257 : $b3
	.db $00                                                  ; $d258 : $00
	.db $ff                                                  ; $d259 : $ff
	.db $1a                                                  ; $d25a : $1a
	.db $67                                                  ; $d25b : $67
	.db $13                                                  ; $d25c : $13
	.db $03                                                  ; $d25d : $03
	php                                                  ; $d25e : $08
	.db $02                                                  ; $d25f : $02
	ora $1367                                                  ; $d260 : $0d, $67, $13
	.db $02                                                  ; $d263 : $02
	.db $b3                                                  ; $d264 : $b3
	.db $02                                                  ; $d265 : $02
	ora $1367                                                  ; $d266 : $0d, $67, $13
	.db $03                                                  ; $d269 : $03
	.db $9b                                                  ; $d26a : $9b
	.db $02                                                  ; $d26b : $02
	ora $1367                                                  ; $d26c : $0d, $67, $13
	.db $02                                                  ; $d26f : $02
	eor $02                                                  ; $d270 : $45, $02
	ora $1367                                                  ; $d272 : $0d, $67, $13
	.db $02                                                  ; $d275 : $02
	.db $b3                                                  ; $d276 : $b3
	.db $ff                                                  ; $d277 : $ff
	ora $13a7                                                  ; $d278 : $0d, $a7, $13
	.db $00                                                  ; $d27b : $00
	ora ($ff, x)                                                  ; $d27c : $01, $ff
	ora $13a7                                                  ; $d27e : $0d, $a7, $13
	.db $02                                                  ; $d281 : $02
	.db $dc                                                  ; $d282 : $dc
	.db $02                                                  ; $d283 : $02
	.db $1a                                                  ; $d284 : $1a
	.db $a7                                                  ; $d285 : $a7
	.db $13                                                  ; $d286 : $13
	.db $02                                                  ; $d287 : $02
	.db $b3                                                  ; $d288 : $b3
	.db $02                                                  ; $d289 : $02
	ora $13a7                                                  ; $d28a : $0d, $a7, $13
	.db $00                                                  ; $d28d : $00
	ora ($ff, x)                                                  ; $d28e : $01, $ff
	ora $13a7                                                  ; $d290 : $0d, $a7, $13
	.db $02                                                  ; $d293 : $02
	.db $dc                                                  ; $d294 : $dc
	.db $02                                                  ; $d295 : $02
	bmi -$49                                                  ; $d296 : $30, $b7

	.db $13                                                  ; $d298 : $13
	.db $02                                                  ; $d299 : $02
	.db $b3                                                  ; $d29a : $b3
	.db $02                                                  ; $d29b : $02
	.db $04                                                  ; $d29c : $04
	.db $b7                                                  ; $d29d : $b7
	.db $13                                                  ; $d29e : $13
	.db $00                                                  ; $d29f : $00
	ora ($ff, x)                                                  ; $d2a0 : $01, $ff
	.db $1a                                                  ; $d2a2 : $1a
	.db $67                                                  ; $d2a3 : $67
	.db $13                                                  ; $d2a4 : $13
	.db $03                                                  ; $d2a5 : $03
	php                                                  ; $d2a6 : $08
	.db $02                                                  ; $d2a7 : $02
	ora $1367                                                  ; $d2a8 : $0d, $67, $13
	.db $02                                                  ; $d2ab : $02
	.db $b3                                                  ; $d2ac : $b3
	.db $02                                                  ; $d2ad : $02
	ora $1367                                                  ; $d2ae : $0d, $67, $13
	.db $03                                                  ; $d2b1 : $03
	.db $9b                                                  ; $d2b2 : $9b
	.db $02                                                  ; $d2b3 : $02
	ora $1367                                                  ; $d2b4 : $0d, $67, $13
	ora ($cd, x)                                                  ; $d2b7 : $01, $cd
	.db $02                                                  ; $d2b9 : $02
	ora $1367                                                  ; $d2ba : $0d, $67, $13
	.db $02                                                  ; $d2bd : $02
	.db $b3                                                  ; $d2be : $b3
	.db $ff                                                  ; $d2bf : $ff
	ora $13a7                                                  ; $d2c0 : $0d, $a7, $13
	.db $00                                                  ; $d2c3 : $00
	ora ($ff, x)                                                  ; $d2c4 : $01, $ff
	ora $13a7                                                  ; $d2c6 : $0d, $a7, $13
	ora ($e9, x)                                                  ; $d2c9 : $01, $e9
	.db $02                                                  ; $d2cb : $02
	.db $1a                                                  ; $d2cc : $1a
	.db $a7                                                  ; $d2cd : $a7
	.db $13                                                  ; $d2ce : $13
	ora ($cd, x)                                                  ; $d2cf : $01, $cd
	.db $02                                                  ; $d2d1 : $02
	ora $13a7                                                  ; $d2d2 : $0d, $a7, $13
	.db $00                                                  ; $d2d5 : $00
	ora ($ff, x)                                                  ; $d2d6 : $01, $ff
	ora $13a7                                                  ; $d2d8 : $0d, $a7, $13
	ora ($e9, x)                                                  ; $d2db : $01, $e9
	.db $02                                                  ; $d2dd : $02
	bmi -$49                                                  ; $d2de : $30, $b7

	.db $13                                                  ; $d2e0 : $13
	ora ($cd, x)                                                  ; $d2e1 : $01, $cd
	.db $02                                                  ; $d2e3 : $02
	.db $04                                                  ; $d2e4 : $04
	.db $b7                                                  ; $d2e5 : $b7
	.db $13                                                  ; $d2e6 : $13
	.db $00                                                  ; $d2e7 : $00
	ora ($ff, x)                                                  ; $d2e8 : $01, $ff
	.db $ff                                                  ; $d2ea : $ff
	.db $5b                                                  ; $d2eb : $5b

br_00_d2ec:
	.db $a7                                                  ; $d2ec : $a7
	.db $13                                                  ; $d2ed : $13
	.db $00                                                  ; $d2ee : $00
	ora ($ff, x)                                                  ; $d2ef : $01, $ff
	ora $13a7                                                  ; $d2f1 : $0d, $a7, $13
	ora ($cd, x)                                                  ; $d2f4 : $01, $cd
	.db $00                                                  ; $d2f6 : $00
	.db $1a                                                  ; $d2f7 : $1a
	.db $a7                                                  ; $d2f8 : $a7
	.db $13                                                  ; $d2f9 : $13
	ora ($b3, x)                                                  ; $d2fa : $01, $b3
	.db $00                                                  ; $d2fc : $00
	ora $13a7                                                  ; $d2fd : $0d, $a7, $13
	.db $00                                                  ; $d300 : $00
	ora ($ff, x)                                                  ; $d301 : $01, $ff
	ora $13a7                                                  ; $d303 : $0d, $a7, $13
	ora ($cd, x)                                                  ; $d306 : $01, $cd
	.db $00                                                  ; $d308 : $00
	bmi -$49                                                  ; $d309 : $30, $b7

	.db $13                                                  ; $d30b : $13
	ora ($b3, x)                                                  ; $d30c : $01, $b3
	.db $00                                                  ; $d30e : $00
	.db $04                                                  ; $d30f : $04
	.db $b7                                                  ; $d310 : $b7
	.db $13                                                  ; $d311 : $13
	.db $00                                                  ; $d312 : $00
	ora ($ff, x)                                                  ; $d313 : $01, $ff
	.db $5b                                                  ; $d315 : $5b
	.db $a7                                                  ; $d316 : $a7
	.db $13                                                  ; $d317 : $13
	.db $00                                                  ; $d318 : $00
	ora ($ff, x)                                                  ; $d319 : $01, $ff
	ora $13a7                                                  ; $d31b : $0d, $a7, $13
	.db $02                                                  ; $d31e : $02
	pla                                                  ; $d31f : $68
	.db $00                                                  ; $d320 : $00
	.db $1a                                                  ; $d321 : $1a
	.db $a7                                                  ; $d322 : $a7
	.db $13                                                  ; $d323 : $13
	.db $02                                                  ; $d324 : $02
	eor $00                                                  ; $d325 : $45, $00
	ora $13a7                                                  ; $d327 : $0d, $a7, $13
	.db $00                                                  ; $d32a : $00
	ora ($ff, x)                                                  ; $d32b : $01, $ff
	ora $13a7                                                  ; $d32d : $0d, $a7, $13
	.db $02                                                  ; $d330 : $02
	pla                                                  ; $d331 : $68
	.db $00                                                  ; $d332 : $00
	bmi br_00_d2ec                                                  ; $d333 : $30, $b7

	.db $13                                                  ; $d335 : $13
	.db $02                                                  ; $d336 : $02
	eor $00                                                  ; $d337 : $45, $00
	.db $04                                                  ; $d339 : $04
	.db $b7                                                  ; $d33a : $b7
	.db $13                                                  ; $d33b : $13
	.db $00                                                  ; $d33c : $00
	ora ($ff, x)                                                  ; $d33d : $01, $ff
	.db $ff                                                  ; $d33f : $ff
	clc                                                  ; $d340 : $18
	.db $07                                                  ; $d341 : $07
	.db $13                                                  ; $d342 : $13
	.db $00                                                  ; $d343 : $00
	.db $b7                                                  ; $d344 : $b7
	.db $02                                                  ; $d345 : $02
	.db $0c                                                  ; $d346 : $0c
	.db $07                                                  ; $d347 : $07
	.db $13                                                  ; $d348 : $13
	.db $00                                                  ; $d349 : $00
	ldy $0c02                                                  ; $d34a : $ac, $02, $0c
	.db $07                                                  ; $d34d : $07
	.db $13                                                  ; $d34e : $13
	.db $00                                                  ; $d34f : $00
	inc $02                                                  ; $d350 : $e6, $02
	.db $0c                                                  ; $d352 : $0c
	.db $07                                                  ; $d353 : $07
	.db $13                                                  ; $d354 : $13
	.db $00                                                  ; $d355 : $00
	sta ($02), y                                                  ; $d356 : $91, $02
	.db $0c                                                  ; $d358 : $0c
	.db $07                                                  ; $d359 : $07
	.db $13                                                  ; $d35a : $13
	.db $00                                                  ; $d35b : $00
	ldy $0c02                                                  ; $d35c : $ac, $02, $0c
	.db $07                                                  ; $d35f : $07
	.db $13                                                  ; $d360 : $13
	.db $00                                                  ; $d361 : $00
	.db $73                                                  ; $d362 : $73
	.db $02                                                  ; $d363 : $02
	.db $0c                                                  ; $d364 : $0c
	.db $07                                                  ; $d365 : $07
	.db $13                                                  ; $d366 : $13
	.db $00                                                  ; $d367 : $00
	ldy $1802                                                  ; $d368 : $ac, $02, $18
	.db $07                                                  ; $d36b : $07
	.db $03                                                  ; $d36c : $03
	.db $00                                                  ; $d36d : $00
	.db $b7                                                  ; $d36e : $b7
	.db $02                                                  ; $d36f : $02
	.db $0c                                                  ; $d370 : $0c
	.db $07                                                  ; $d371 : $07
	.db $00                                                  ; $d372 : $00
	.db $00                                                  ; $d373 : $00
	ldy $0c02                                                  ; $d374 : $ac, $02, $0c
	.db $27                                                  ; $d377 : $27
	.db $00                                                  ; $d378 : $00
	.db $00                                                  ; $d379 : $00
	inc $02                                                  ; $d37a : $e6, $02
	.db $0c                                                  ; $d37c : $0c
	.db $27                                                  ; $d37d : $27
	.db $00                                                  ; $d37e : $00
	.db $00                                                  ; $d37f : $00
	.db $b7                                                  ; $d380 : $b7
	.db $02                                                  ; $d381 : $02
	.db $0c                                                  ; $d382 : $0c
	.db $27                                                  ; $d383 : $27
	.db $00                                                  ; $d384 : $00
	.db $00                                                  ; $d385 : $00
	inc $02                                                  ; $d386 : $e6, $02
	.db $0c                                                  ; $d388 : $0c
	.db $27                                                  ; $d389 : $27
	.db $03                                                  ; $d38a : $03
	.db $00                                                  ; $d38b : $00
	.db $f4                                                  ; $d38c : $f4
	.db $02                                                  ; $d38d : $02
	.db $0c                                                  ; $d38e : $0c
	.db $27                                                  ; $d38f : $27
	.db $03                                                  ; $d390 : $03
	.db $00                                                  ; $d391 : $00
	inc $02                                                  ; $d392 : $e6, $02
	clc                                                  ; $d394 : $18
	.db $67                                                  ; $d395 : $67
	.db $03                                                  ; $d396 : $03
	.db $00                                                  ; $d397 : $00
	ldy $0c02                                                  ; $d398 : $ac, $02, $0c
	.db $67                                                  ; $d39b : $67
	.db $03                                                  ; $d39c : $03
	.db $00                                                  ; $d39d : $00
	sta ($02), y                                                  ; $d39e : $91, $02
	.db $0c                                                  ; $d3a0 : $0c
	.db $67                                                  ; $d3a1 : $67
	.db $03                                                  ; $d3a2 : $03
	.db $00                                                  ; $d3a3 : $00
	ldy $3002                                                  ; $d3a4 : $ac, $02, $30
	.db $b7                                                  ; $d3a7 : $b7
	.db $03                                                  ; $d3a8 : $03
	.db $00                                                  ; $d3a9 : $00
	.db $73                                                  ; $d3aa : $73
	.db $02                                                  ; $d3ab : $02
	.db $0c                                                  ; $d3ac : $0c
	.db $47                                                  ; $d3ad : $47
	.db $03                                                  ; $d3ae : $03
	.db $00                                                  ; $d3af : $00
	cmp $0c02, y                                                  ; $d3b0 : $d9, $02, $0c
	.db $47                                                  ; $d3b3 : $47
	.db $03                                                  ; $d3b4 : $03
	.db $00                                                  ; $d3b5 : $00
	cmp $0c02                                                  ; $d3b6 : $cd, $02, $0c
	.db $47                                                  ; $d3b9 : $47
	.db $03                                                  ; $d3ba : $03
	.db $00                                                  ; $d3bb : $00
	.db $c2                                                  ; $d3bc : $c2
	.db $02                                                  ; $d3bd : $02
	.db $0c                                                  ; $d3be : $0c
	.db $47                                                  ; $d3bf : $47
	.db $03                                                  ; $d3c0 : $03
	.db $00                                                  ; $d3c1 : $00
	.db $b7                                                  ; $d3c2 : $b7
	.db $02                                                  ; $d3c3 : $02
	bmi br_00_d43d                                                  ; $d3c4 : $30, $77

	.db $03                                                  ; $d3c6 : $03
	.db $00                                                  ; $d3c7 : $00
	ldy $ff02                                                  ; $d3c8 : $ac, $02, $ff
	clc                                                  ; $d3cb : $18
	.db $47                                                  ; $d3cc : $47
	.db $03                                                  ; $d3cd : $03
	ora ($cd, x)                                                  ; $d3ce : $01, $cd
	.db $02                                                  ; $d3d0 : $02
	.db $0c                                                  ; $d3d1 : $0c
	.db $47                                                  ; $d3d2 : $47
	.db $03                                                  ; $d3d3 : $03
	.db $00                                                  ; $d3d4 : $00
	ora ($02, x)                                                  ; $d3d5 : $01, $02
	.db $0c                                                  ; $d3d7 : $0c
	.db $47                                                  ; $d3d8 : $47
	.db $03                                                  ; $d3d9 : $03
	ora ($cd, x)                                                  ; $d3da : $01, $cd
	.db $02                                                  ; $d3dc : $02
	.db $0c                                                  ; $d3dd : $0c
	.db $47                                                  ; $d3de : $47
	.db $03                                                  ; $d3df : $03
	.db $00                                                  ; $d3e0 : $00
	ora ($02, x)                                                  ; $d3e1 : $01, $02
	.db $0c                                                  ; $d3e3 : $0c
	.db $47                                                  ; $d3e4 : $47
	.db $03                                                  ; $d3e5 : $03
	ora ($59, x)                                                  ; $d3e6 : $01, $59
	.db $02                                                  ; $d3e8 : $02
	.db $0c                                                  ; $d3e9 : $0c
	.db $47                                                  ; $d3ea : $47
	.db $03                                                  ; $d3eb : $03
	ora ($84, x)                                                  ; $d3ec : $01, $84
	.db $02                                                  ; $d3ee : $02
	.db $0c                                                  ; $d3ef : $0c
	.db $47                                                  ; $d3f0 : $47
	.db $03                                                  ; $d3f1 : $03
	ora ($cd, x)                                                  ; $d3f2 : $01, $cd
	.db $02                                                  ; $d3f4 : $02
	clc                                                  ; $d3f5 : $18
	.db $67                                                  ; $d3f6 : $67
	.db $03                                                  ; $d3f7 : $03
	ora ($cd, x)                                                  ; $d3f8 : $01, $cd
	.db $02                                                  ; $d3fa : $02
	.db $0c                                                  ; $d3fb : $0c
	.db $67                                                  ; $d3fc : $67
	.db $03                                                  ; $d3fd : $03
	.db $00                                                  ; $d3fe : $00
	ora ($02, x)                                                  ; $d3ff : $01, $02
	.db $0c                                                  ; $d401 : $0c
	.db $67                                                  ; $d402 : $67
	.db $03                                                  ; $d403 : $03
	ora ($cd, x)                                                  ; $d404 : $01, $cd
	.db $02                                                  ; $d406 : $02
	.db $0c                                                  ; $d407 : $0c
	.db $67                                                  ; $d408 : $67
	.db $03                                                  ; $d409 : $03
	.db $00                                                  ; $d40a : $00
	ora ($02, x)                                                  ; $d40b : $01, $02
	.db $0c                                                  ; $d40d : $0c
	.db $67                                                  ; $d40e : $67
	.db $03                                                  ; $d40f : $03
	ora ($cd, x)                                                  ; $d410 : $01, $cd
	.db $02                                                  ; $d412 : $02
	.db $0c                                                  ; $d413 : $0c
	.db $67                                                  ; $d414 : $67
	.db $03                                                  ; $d415 : $03
	ora ($b3, x)                                                  ; $d416 : $01, $b3
	.db $02                                                  ; $d418 : $02
	.db $0c                                                  ; $d419 : $0c
	.db $67                                                  ; $d41a : $67
	.db $03                                                  ; $d41b : $03
	ora ($59, x)                                                  ; $d41c : $01, $59
	.db $02                                                  ; $d41e : $02
	clc                                                  ; $d41f : $18
	.db $27                                                  ; $d420 : $27
	.db $03                                                  ; $d421 : $03
	ora ($84, x)                                                  ; $d422 : $01, $84
	.db $ff                                                  ; $d424 : $ff
	.db $0c                                                  ; $d425 : $0c
	.db $27                                                  ; $d426 : $27
	.db $03                                                  ; $d427 : $03
	ora ($59, x)                                                  ; $d428 : $01, $59
	.db $ff                                                  ; $d42a : $ff
	.db $0c                                                  ; $d42b : $0c
	.db $27                                                  ; $d42c : $27
	.db $03                                                  ; $d42d : $03
	ora ($cd, x)                                                  ; $d42e : $01, $cd
	.db $ff                                                  ; $d430 : $ff
	.db $0c                                                  ; $d431 : $0c
	.db $27                                                  ; $d432 : $27
	.db $03                                                  ; $d433 : $03
	ora ($22, x)                                                  ; $d434 : $01, $22
	.db $ff                                                  ; $d436 : $ff
	.db $0c                                                  ; $d437 : $0c
	.db $27                                                  ; $d438 : $27
	.db $03                                                  ; $d439 : $03
	ora ($59, x)                                                  ; $d43a : $01, $59
	.db $ff                                                  ; $d43c : $ff

br_00_d43d:
	.db $0c                                                  ; $d43d : $0c
	.db $27                                                  ; $d43e : $27
	.db $03                                                  ; $d43f : $03
	.db $00                                                  ; $d440 : $00
	inc $02                                                  ; $d441 : $e6, $02
	.db $0c                                                  ; $d443 : $0c
	.db $27                                                  ; $d444 : $27
	.db $03                                                  ; $d445 : $03
	ora ($59, x)                                                  ; $d446 : $01, $59
	.db $02                                                  ; $d448 : $02
	clc                                                  ; $d449 : $18
	.db $27                                                  ; $d44a : $27
	.db $03                                                  ; $d44b : $03
	ora ($84, x)                                                  ; $d44c : $01, $84
	.db $02                                                  ; $d44e : $02
	.db $0c                                                  ; $d44f : $0c
	.db $27                                                  ; $d450 : $27
	.db $03                                                  ; $d451 : $03
	ora ($59, x)                                                  ; $d452 : $01, $59
	.db $02                                                  ; $d454 : $02
	.db $0c                                                  ; $d455 : $0c
	.db $27                                                  ; $d456 : $27
	.db $03                                                  ; $d457 : $03
	ora ($cd, x)                                                  ; $d458 : $01, $cd
	.db $02                                                  ; $d45a : $02
	.db $0c                                                  ; $d45b : $0c
	.db $27                                                  ; $d45c : $27
	.db $03                                                  ; $d45d : $03
	ora ($84, x)                                                  ; $d45e : $01, $84
	.db $02                                                  ; $d460 : $02
	.db $0c                                                  ; $d461 : $0c
	.db $27                                                  ; $d462 : $27
	.db $03                                                  ; $d463 : $03
	ora ($cd, x)                                                  ; $d464 : $01, $cd
	.db $02                                                  ; $d466 : $02
	.db $0c                                                  ; $d467 : $0c
	.db $27                                                  ; $d468 : $27
	.db $03                                                  ; $d469 : $03
	ora ($e9, x)                                                  ; $d46a : $01, $e9
	.db $02                                                  ; $d46c : $02
	.db $0c                                                  ; $d46d : $0c
	.db $27                                                  ; $d46e : $27
	.db $03                                                  ; $d46f : $03
	ora ($cd, x)                                                  ; $d470 : $01, $cd
	.db $02                                                  ; $d472 : $02
	asl a                                                  ; $d473 : $0a
	.db $a7                                                  ; $d474 : $a7
	.db $03                                                  ; $d475 : $03
	ora ($cd, x)                                                  ; $d476 : $01, $cd
	.db $02                                                  ; $d478 : $02
	asl a                                                  ; $d479 : $0a
	.db $a7                                                  ; $d47a : $a7
	.db $03                                                  ; $d47b : $03
	.db $03                                                  ; $d47c : $03
	.db $9b                                                  ; $d47d : $9b
	.db $02                                                  ; $d47e : $02
	asl a                                                  ; $d47f : $0a
	.db $a7                                                  ; $d480 : $a7
	.db $03                                                  ; $d481 : $03
	ora ($cd, x)                                                  ; $d482 : $01, $cd
	.db $02                                                  ; $d484 : $02
	asl a                                                  ; $d485 : $0a
	.db $a7                                                  ; $d486 : $a7
	.db $03                                                  ; $d487 : $03
	.db $00                                                  ; $d488 : $00
	and $05ff, y                                                  ; $d489 : $39, $ff, $05
	.db $a7                                                  ; $d48c : $a7
	.db $03                                                  ; $d48d : $03
	.db $00                                                  ; $d48e : $00
	.db $44                                                  ; $d48f : $44
	.db $ff                                                  ; $d490 : $ff
	ora $a7                                                  ; $d491 : $05, $a7
	.db $03                                                  ; $d493 : $03
	.db $00                                                  ; $d494 : $00
	and $0aff, y                                                  ; $d495 : $39, $ff, $0a
	.db $a7                                                  ; $d498 : $a7
	.db $03                                                  ; $d499 : $03
	.db $00                                                  ; $d49a : $00
	.db $33                                                  ; $d49b : $33
	.db $ff                                                  ; $d49c : $ff
	asl a                                                  ; $d49d : $0a
	.db $a7                                                  ; $d49e : $a7
	.db $03                                                  ; $d49f : $03
	.db $00                                                  ; $d4a0 : $00
	and $0aff, y                                                  ; $d4a1 : $39, $ff, $0a
	.db $a7                                                  ; $d4a4 : $a7
	.db $03                                                  ; $d4a5 : $03
	.db $02                                                  ; $d4a6 : $02
	.db $b3                                                  ; $d4a7 : $b3
	.db $02                                                  ; $d4a8 : $02
	asl a                                                  ; $d4a9 : $0a
	.db $a7                                                  ; $d4aa : $a7
	.db $03                                                  ; $d4ab : $03
	ora ($59, x)                                                  ; $d4ac : $01, $59
	.db $02                                                  ; $d4ae : $02
	asl a                                                  ; $d4af : $0a
	.db $a7                                                  ; $d4b0 : $a7
	.db $03                                                  ; $d4b1 : $03
	.db $02                                                  ; $d4b2 : $02
	.db $b3                                                  ; $d4b3 : $b3
	.db $02                                                  ; $d4b4 : $02
	asl a                                                  ; $d4b5 : $0a
	.db $a7                                                  ; $d4b6 : $a7
	.db $03                                                  ; $d4b7 : $03
	ora ($59, x)                                                  ; $d4b8 : $01, $59
	.db $02                                                  ; $d4ba : $02
	asl a                                                  ; $d4bb : $0a
	.db $a7                                                  ; $d4bc : $a7
	.db $03                                                  ; $d4bd : $03
	.db $02                                                  ; $d4be : $02
	.db $b3                                                  ; $d4bf : $b3
	.db $02                                                  ; $d4c0 : $02
	asl a                                                  ; $d4c1 : $0a
	.db $a7                                                  ; $d4c2 : $a7
	.db $03                                                  ; $d4c3 : $03
	ora ($59, x)                                                  ; $d4c4 : $01, $59
	.db $02                                                  ; $d4c6 : $02
	asl a                                                  ; $d4c7 : $0a
	.db $a7                                                  ; $d4c8 : $a7
	.db $03                                                  ; $d4c9 : $03
	.db $02                                                  ; $d4ca : $02
	.db $b3                                                  ; $d4cb : $b3
	.db $02                                                  ; $d4cc : $02
	asl a                                                  ; $d4cd : $0a
	.db $a7                                                  ; $d4ce : $a7
	.db $03                                                  ; $d4cf : $03
	ora ($59, x)                                                  ; $d4d0 : $01, $59
	.db $02                                                  ; $d4d2 : $02
	asl a                                                  ; $d4d3 : $0a
	.db $a7                                                  ; $d4d4 : $a7
	.db $03                                                  ; $d4d5 : $03
	.db $02                                                  ; $d4d6 : $02
	.db $b3                                                  ; $d4d7 : $b3
	.db $02                                                  ; $d4d8 : $02
	asl a                                                  ; $d4d9 : $0a
	.db $a7                                                  ; $d4da : $a7
	.db $03                                                  ; $d4db : $03
	ora ($59, x)                                                  ; $d4dc : $01, $59
	.db $02                                                  ; $d4de : $02
	asl a                                                  ; $d4df : $0a
	.db $a7                                                  ; $d4e0 : $a7
	.db $03                                                  ; $d4e1 : $03
	.db $02                                                  ; $d4e2 : $02
	.db $b3                                                  ; $d4e3 : $b3
	.db $02                                                  ; $d4e4 : $02
	asl a                                                  ; $d4e5 : $0a
	.db $a7                                                  ; $d4e6 : $a7
	.db $03                                                  ; $d4e7 : $03
	ora ($59, x)                                                  ; $d4e8 : $01, $59
	.db $02                                                  ; $d4ea : $02
	asl a                                                  ; $d4eb : $0a
	.db $a7                                                  ; $d4ec : $a7
	.db $03                                                  ; $d4ed : $03
	.db $00                                                  ; $d4ee : $00
	.db $33                                                  ; $d4ef : $33
	.db $ff                                                  ; $d4f0 : $ff
	ora $a7                                                  ; $d4f1 : $05, $a7
	.db $03                                                  ; $d4f3 : $03
	.db $00                                                  ; $d4f4 : $00
	rti                                                  ; $d4f5 : $40


	.db $ff                                                  ; $d4f6 : $ff
	ora $a7                                                  ; $d4f7 : $05, $a7
	.db $03                                                  ; $d4f9 : $03
	.db $00                                                  ; $d4fa : $00
	.db $33                                                  ; $d4fb : $33
	.db $ff                                                  ; $d4fc : $ff
	asl a                                                  ; $d4fd : $0a
	.db $a7                                                  ; $d4fe : $a7
	.db $03                                                  ; $d4ff : $03
	.db $00                                                  ; $d500 : $00
	and $0aff, y                                                  ; $d501 : $39, $ff, $0a
	.db $a7                                                  ; $d504 : $a7
	.db $03                                                  ; $d505 : $03
	.db $00                                                  ; $d506 : $00
	.db $44                                                  ; $d507 : $44
	.db $ff                                                  ; $d508 : $ff
	asl a                                                  ; $d509 : $0a
	.db $a7                                                  ; $d50a : $a7
	.db $03                                                  ; $d50b : $03
	.db $02                                                  ; $d50c : $02
	.db $b3                                                  ; $d50d : $b3
	.db $02                                                  ; $d50e : $02
	asl a                                                  ; $d50f : $0a
	.db $a7                                                  ; $d510 : $a7
	.db $03                                                  ; $d511 : $03
	ora ($59, x)                                                  ; $d512 : $01, $59
	.db $02                                                  ; $d514 : $02
	asl a                                                  ; $d515 : $0a
	.db $a7                                                  ; $d516 : $a7
	.db $03                                                  ; $d517 : $03
	.db $02                                                  ; $d518 : $02
	.db $b3                                                  ; $d519 : $b3
	.db $02                                                  ; $d51a : $02
	asl a                                                  ; $d51b : $0a
	.db $a7                                                  ; $d51c : $a7
	.db $03                                                  ; $d51d : $03
	ora ($59, x)                                                  ; $d51e : $01, $59
	.db $02                                                  ; $d520 : $02
	asl a                                                  ; $d521 : $0a
	.db $a7                                                  ; $d522 : $a7
	.db $03                                                  ; $d523 : $03
	.db $03                                                  ; $d524 : $03
	.db $9b                                                  ; $d525 : $9b
	.db $02                                                  ; $d526 : $02
	asl a                                                  ; $d527 : $0a
	.db $a7                                                  ; $d528 : $a7
	.db $03                                                  ; $d529 : $03
	ora ($cd, x)                                                  ; $d52a : $01, $cd
	.db $02                                                  ; $d52c : $02
	asl a                                                  ; $d52d : $0a
	.db $a7                                                  ; $d52e : $a7
	.db $03                                                  ; $d52f : $03
	.db $03                                                  ; $d530 : $03
	.db $9b                                                  ; $d531 : $9b
	.db $02                                                  ; $d532 : $02
	asl a                                                  ; $d533 : $0a
	.db $a7                                                  ; $d534 : $a7
	.db $03                                                  ; $d535 : $03
	ora ($cd, x)                                                  ; $d536 : $01, $cd
	.db $02                                                  ; $d538 : $02
	asl a                                                  ; $d539 : $0a
	.db $a7                                                  ; $d53a : $a7
	.db $00                                                  ; $d53b : $00
	ora ($59, x)                                                  ; $d53c : $01, $59
	.db $02                                                  ; $d53e : $02
	asl a                                                  ; $d53f : $0a
	.db $a7                                                  ; $d540 : $a7
	.db $00                                                  ; $d541 : $00
	ora ($59, x)                                                  ; $d542 : $01, $59
	.db $02                                                  ; $d544 : $02
	asl a                                                  ; $d545 : $0a
	.db $a7                                                  ; $d546 : $a7
	.db $00                                                  ; $d547 : $00
	ora ($59, x)                                                  ; $d548 : $01, $59
	.db $02                                                  ; $d54a : $02
	asl a                                                  ; $d54b : $0a
	.db $a7                                                  ; $d54c : $a7
	.db $00                                                  ; $d54d : $00
	ora ($59, x)                                                  ; $d54e : $01, $59
	.db $02                                                  ; $d550 : $02
	asl a                                                  ; $d551 : $0a
	.db $a7                                                  ; $d552 : $a7
	.db $00                                                  ; $d553 : $00
	ora ($59, x)                                                  ; $d554 : $01, $59
	.db $02                                                  ; $d556 : $02
	asl a                                                  ; $d557 : $0a
	.db $a7                                                  ; $d558 : $a7
	.db $00                                                  ; $d559 : $00
	ora ($59, x)                                                  ; $d55a : $01, $59
	.db $02                                                  ; $d55c : $02
	asl a                                                  ; $d55d : $0a
	.db $a7                                                  ; $d55e : $a7
	.db $00                                                  ; $d55f : $00
	ora ($59, x)                                                  ; $d560 : $01, $59
	.db $02                                                  ; $d562 : $02
	asl a                                                  ; $d563 : $0a
	.db $a7                                                  ; $d564 : $a7
	.db $13                                                  ; $d565 : $13
	.db $00                                                  ; $d566 : $00
	ora ($ff, x)                                                  ; $d567 : $01, $ff
	asl a                                                  ; $d569 : $0a
	.db $a7                                                  ; $d56a : $a7
	.db $13                                                  ; $d56b : $13
	.db $00                                                  ; $d56c : $00
	cmp $0502                                                  ; $d56d : $cd, $02, $05
	.db $a7                                                  ; $d570 : $a7
	.db $13                                                  ; $d571 : $13
	ora ($03, x)                                                  ; $d572 : $01, $03
	.db $02                                                  ; $d574 : $02
	ora $a7                                                  ; $d575 : $05, $a7
	.db $13                                                  ; $d577 : $13
	.db $00                                                  ; $d578 : $00
	cmp $0a02                                                  ; $d579 : $cd, $02, $0a
	.db $a7                                                  ; $d57c : $a7
	.db $13                                                  ; $d57d : $13
	.db $00                                                  ; $d57e : $00
	ldy $0a02                                                  ; $d57f : $ac, $02, $0a
	.db $a7                                                  ; $d582 : $a7
	.db $13                                                  ; $d583 : $13
	.db $00                                                  ; $d584 : $00
	cmp $0a02                                                  ; $d585 : $cd, $02, $0a
	.db $a7                                                  ; $d588 : $a7
	.db $13                                                  ; $d589 : $13
	ora ($03, x)                                                  ; $d58a : $01, $03
	.db $02                                                  ; $d58c : $02
	asl a                                                  ; $d58d : $0a
	.db $a7                                                  ; $d58e : $a7
	.db $13                                                  ; $d58f : $13
	.db $00                                                  ; $d590 : $00
	cmp $0a02                                                  ; $d591 : $cd, $02, $0a
	.db $a7                                                  ; $d594 : $a7
	.db $13                                                  ; $d595 : $13
	.db $00                                                  ; $d596 : $00
	ldy $0a02                                                  ; $d597 : $ac, $02, $0a
	.db $a7                                                  ; $d59a : $a7
	.db $13                                                  ; $d59b : $13
	.db $00                                                  ; $d59c : $00
	cmp $0a02                                                  ; $d59d : $cd, $02, $0a
	.db $a7                                                  ; $d5a0 : $a7
	.db $13                                                  ; $d5a1 : $13
	.db $00                                                  ; $d5a2 : $00
	inc $02                                                  ; $d5a3 : $e6, $02
	ora $a7                                                  ; $d5a5 : $05, $a7
	.db $13                                                  ; $d5a7 : $13
	ora ($34, x)                                                  ; $d5a8 : $01, $34
	.db $02                                                  ; $d5aa : $02
	ora $a7                                                  ; $d5ab : $05, $a7
	.db $13                                                  ; $d5ad : $13
	.db $00                                                  ; $d5ae : $00
	inc $02                                                  ; $d5af : $e6, $02
	asl a                                                  ; $d5b1 : $0a
	.db $a7                                                  ; $d5b2 : $a7
	.db $13                                                  ; $d5b3 : $13
	.db $00                                                  ; $d5b4 : $00
	.db $b7                                                  ; $d5b5 : $b7
	.db $02                                                  ; $d5b6 : $02
	asl a                                                  ; $d5b7 : $0a
	.db $a7                                                  ; $d5b8 : $a7
	.db $13                                                  ; $d5b9 : $13
	.db $00                                                  ; $d5ba : $00
	inc $02                                                  ; $d5bb : $e6, $02
	asl a                                                  ; $d5bd : $0a
	.db $a7                                                  ; $d5be : $a7
	.db $13                                                  ; $d5bf : $13
	ora ($34, x)                                                  ; $d5c0 : $01, $34
	.db $02                                                  ; $d5c2 : $02
	asl a                                                  ; $d5c3 : $0a
	.db $a7                                                  ; $d5c4 : $a7
	.db $13                                                  ; $d5c5 : $13
	.db $00                                                  ; $d5c6 : $00
	.db $b7                                                  ; $d5c7 : $b7
	.db $02                                                  ; $d5c8 : $02
	asl a                                                  ; $d5c9 : $0a
	.db $a7                                                  ; $d5ca : $a7
	.db $13                                                  ; $d5cb : $13
	.db $00                                                  ; $d5cc : $00
	inc $02                                                  ; $d5cd : $e6, $02
	asl a                                                  ; $d5cf : $0a
	.db $a7                                                  ; $d5d0 : $a7
	.db $13                                                  ; $d5d1 : $13
	ora ($34, x)                                                  ; $d5d2 : $01, $34
	.db $02                                                  ; $d5d4 : $02
	asl a                                                  ; $d5d5 : $0a
	.db $a7                                                  ; $d5d6 : $a7
	.db $13                                                  ; $d5d7 : $13
	.db $00                                                  ; $d5d8 : $00
	ldy $0a02                                                  ; $d5d9 : $ac, $02, $0a
	.db $a7                                                  ; $d5dc : $a7
	.db $13                                                  ; $d5dd : $13
	.db $00                                                  ; $d5de : $00
	cmp $0a02                                                  ; $d5df : $cd, $02, $0a
	.db $a7                                                  ; $d5e2 : $a7
	.db $13                                                  ; $d5e3 : $13
	ora ($03, x)                                                  ; $d5e4 : $01, $03
	.db $02                                                  ; $d5e6 : $02
	asl a                                                  ; $d5e7 : $0a
	.db $a7                                                  ; $d5e8 : $a7
	.db $13                                                  ; $d5e9 : $13
	.db $00                                                  ; $d5ea : $00
	cmp $0a02                                                  ; $d5eb : $cd, $02, $0a
	.db $a7                                                  ; $d5ee : $a7
	.db $13                                                  ; $d5ef : $13
	.db $00                                                  ; $d5f0 : $00
	ldy $0a02                                                  ; $d5f1 : $ac, $02, $0a
	.db $a7                                                  ; $d5f4 : $a7
	.db $13                                                  ; $d5f5 : $13
	.db $00                                                  ; $d5f6 : $00
	inc $02                                                  ; $d5f7 : $e6, $02
	asl a                                                  ; $d5f9 : $0a
	.db $a7                                                  ; $d5fa : $a7
	.db $13                                                  ; $d5fb : $13
	ora ($12, x)                                                  ; $d5fc : $01, $12
	.db $02                                                  ; $d5fe : $02
	asl a                                                  ; $d5ff : $0a
	.db $a7                                                  ; $d600 : $a7
	.db $13                                                  ; $d601 : $13
	.db $00                                                  ; $d602 : $00
	inc $02                                                  ; $d603 : $e6, $02
	asl a                                                  ; $d605 : $0a
	.db $a7                                                  ; $d606 : $a7
	.db $13                                                  ; $d607 : $13
	.db $00                                                  ; $d608 : $00
	ldy $0a02                                                  ; $d609 : $ac, $02, $0a
	.db $a7                                                  ; $d60c : $a7
	.db $13                                                  ; $d60d : $13
	.db $00                                                  ; $d60e : $00
	cmp $0a02                                                  ; $d60f : $cd, $02, $0a
	.db $a7                                                  ; $d612 : $a7
	.db $13                                                  ; $d613 : $13
	ora ($03, x)                                                  ; $d614 : $01, $03
	.db $02                                                  ; $d616 : $02
	asl a                                                  ; $d617 : $0a
	.db $a7                                                  ; $d618 : $a7
	.db $13                                                  ; $d619 : $13
	.db $00                                                  ; $d61a : $00
	cmp $0a02                                                  ; $d61b : $cd, $02, $0a
	.db $a7                                                  ; $d61e : $a7
	.db $13                                                  ; $d61f : $13
	.db $00                                                  ; $d620 : $00
	inc $02                                                  ; $d621 : $e6, $02
	asl a                                                  ; $d623 : $0a
	.db $a7                                                  ; $d624 : $a7
	.db $13                                                  ; $d625 : $13
	ora ($12, x)                                                  ; $d626 : $01, $12
	.db $02                                                  ; $d628 : $02
	.db $14                                                  ; $d629 : $14
	.db $a7                                                  ; $d62a : $a7
	.db $13                                                  ; $d62b : $13
	ora ($59, x)                                                  ; $d62c : $01, $59
	.db $02                                                  ; $d62e : $02
	asl a                                                  ; $d62f : $0a
	.db $a7                                                  ; $d630 : $a7
	.db $13                                                  ; $d631 : $13
	.db $00                                                  ; $d632 : $00
	cmp $0502                                                  ; $d633 : $cd, $02, $05
	.db $a7                                                  ; $d636 : $a7
	.db $13                                                  ; $d637 : $13
	ora ($03, x)                                                  ; $d638 : $01, $03
	.db $02                                                  ; $d63a : $02
	ora $a7                                                  ; $d63b : $05, $a7
	.db $13                                                  ; $d63d : $13
	.db $00                                                  ; $d63e : $00
	cmp $0a02                                                  ; $d63f : $cd, $02, $0a
	.db $a7                                                  ; $d642 : $a7
	.db $13                                                  ; $d643 : $13
	.db $00                                                  ; $d644 : $00
	ldy $0a02                                                  ; $d645 : $ac, $02, $0a
	.db $a7                                                  ; $d648 : $a7
	.db $13                                                  ; $d649 : $13
	.db $00                                                  ; $d64a : $00
	cmp $0a02                                                  ; $d64b : $cd, $02, $0a
	.db $a7                                                  ; $d64e : $a7
	.db $13                                                  ; $d64f : $13
	ora ($03, x)                                                  ; $d650 : $01, $03
	.db $02                                                  ; $d652 : $02
	asl a                                                  ; $d653 : $0a
	.db $a7                                                  ; $d654 : $a7
	.db $13                                                  ; $d655 : $13
	.db $00                                                  ; $d656 : $00
	cmp $0a02                                                  ; $d657 : $cd, $02, $0a
	.db $a7                                                  ; $d65a : $a7
	.db $13                                                  ; $d65b : $13
	.db $00                                                  ; $d65c : $00
	ldy $0a02                                                  ; $d65d : $ac, $02, $0a
	.db $a7                                                  ; $d660 : $a7
	.db $13                                                  ; $d661 : $13
	.db $00                                                  ; $d662 : $00
	cmp $0a02                                                  ; $d663 : $cd, $02, $0a
	.db $a7                                                  ; $d666 : $a7
	.db $13                                                  ; $d667 : $13
	.db $00                                                  ; $d668 : $00
	inc $02                                                  ; $d669 : $e6, $02
	ora $a7                                                  ; $d66b : $05, $a7
	.db $13                                                  ; $d66d : $13
	ora ($34, x)                                                  ; $d66e : $01, $34
	.db $02                                                  ; $d670 : $02
	ora $a7                                                  ; $d671 : $05, $a7
	.db $13                                                  ; $d673 : $13
	.db $00                                                  ; $d674 : $00
	inc $02                                                  ; $d675 : $e6, $02
	asl a                                                  ; $d677 : $0a
	.db $a7                                                  ; $d678 : $a7
	.db $13                                                  ; $d679 : $13
	.db $00                                                  ; $d67a : $00
	.db $b7                                                  ; $d67b : $b7
	.db $02                                                  ; $d67c : $02
	asl a                                                  ; $d67d : $0a
	.db $a7                                                  ; $d67e : $a7
	.db $13                                                  ; $d67f : $13
	.db $00                                                  ; $d680 : $00
	inc $02                                                  ; $d681 : $e6, $02
	asl a                                                  ; $d683 : $0a
	.db $a7                                                  ; $d684 : $a7
	.db $13                                                  ; $d685 : $13
	ora ($34, x)                                                  ; $d686 : $01, $34
	.db $02                                                  ; $d688 : $02
	asl a                                                  ; $d689 : $0a
	.db $a7                                                  ; $d68a : $a7
	.db $13                                                  ; $d68b : $13
	.db $00                                                  ; $d68c : $00
	.db $b7                                                  ; $d68d : $b7
	.db $02                                                  ; $d68e : $02
	asl a                                                  ; $d68f : $0a
	.db $a7                                                  ; $d690 : $a7
	.db $13                                                  ; $d691 : $13
	.db $00                                                  ; $d692 : $00
	inc $02                                                  ; $d693 : $e6, $02
	asl a                                                  ; $d695 : $0a
	.db $a7                                                  ; $d696 : $a7
	.db $13                                                  ; $d697 : $13
	ora ($34, x)                                                  ; $d698 : $01, $34
	.db $02                                                  ; $d69a : $02
	asl a                                                  ; $d69b : $0a
	.db $a7                                                  ; $d69c : $a7
	.db $03                                                  ; $d69d : $03
	.db $00                                                  ; $d69e : $00
	ldy $0a02                                                  ; $d69f : $ac, $02, $0a
	.db $a7                                                  ; $d6a2 : $a7
	.db $03                                                  ; $d6a3 : $03
	.db $00                                                  ; $d6a4 : $00
	cmp $0a02                                                  ; $d6a5 : $cd, $02, $0a
	.db $a7                                                  ; $d6a8 : $a7
	.db $13                                                  ; $d6a9 : $13
	ora ($03, x)                                                  ; $d6aa : $01, $03
	.db $02                                                  ; $d6ac : $02
	asl a                                                  ; $d6ad : $0a
	.db $a7                                                  ; $d6ae : $a7
	.db $13                                                  ; $d6af : $13
	.db $00                                                  ; $d6b0 : $00
	cmp $0a02                                                  ; $d6b1 : $cd, $02, $0a
	.db $a7                                                  ; $d6b4 : $a7
	.db $13                                                  ; $d6b5 : $13
	.db $00                                                  ; $d6b6 : $00
	ldy $0a02                                                  ; $d6b7 : $ac, $02, $0a
	.db $a7                                                  ; $d6ba : $a7
	.db $13                                                  ; $d6bb : $13
	.db $00                                                  ; $d6bc : $00
	inc $02                                                  ; $d6bd : $e6, $02
	asl a                                                  ; $d6bf : $0a
	.db $a7                                                  ; $d6c0 : $a7
	.db $13                                                  ; $d6c1 : $13
	ora ($12, x)                                                  ; $d6c2 : $01, $12
	.db $02                                                  ; $d6c4 : $02
	asl a                                                  ; $d6c5 : $0a
	.db $a7                                                  ; $d6c6 : $a7
	.db $13                                                  ; $d6c7 : $13
	.db $00                                                  ; $d6c8 : $00
	inc $02                                                  ; $d6c9 : $e6, $02
	asl a                                                  ; $d6cb : $0a
	.db $a7                                                  ; $d6cc : $a7
	.db $13                                                  ; $d6cd : $13
	.db $00                                                  ; $d6ce : $00
	ldy $0a02                                                  ; $d6cf : $ac, $02, $0a
	.db $a7                                                  ; $d6d2 : $a7
	.db $13                                                  ; $d6d3 : $13
	.db $00                                                  ; $d6d4 : $00
	cmp $0a02                                                  ; $d6d5 : $cd, $02, $0a
	.db $a7                                                  ; $d6d8 : $a7
	.db $13                                                  ; $d6d9 : $13
	ora ($03, x)                                                  ; $d6da : $01, $03
	.db $02                                                  ; $d6dc : $02
	asl a                                                  ; $d6dd : $0a
	.db $a7                                                  ; $d6de : $a7
	.db $13                                                  ; $d6df : $13
	.db $00                                                  ; $d6e0 : $00
	cmp $0a02                                                  ; $d6e1 : $cd, $02, $0a
	.db $a7                                                  ; $d6e4 : $a7
	.db $13                                                  ; $d6e5 : $13
	.db $00                                                  ; $d6e6 : $00
	inc $02                                                  ; $d6e7 : $e6, $02
	asl a                                                  ; $d6e9 : $0a
	.db $a7                                                  ; $d6ea : $a7
	.db $13                                                  ; $d6eb : $13
	ora ($12, x)                                                  ; $d6ec : $01, $12
	.db $02                                                  ; $d6ee : $02
	.db $14                                                  ; $d6ef : $14
	.db $a7                                                  ; $d6f0 : $a7
	.db $13                                                  ; $d6f1 : $13
	ora ($59, x)                                                  ; $d6f2 : $01, $59
	.db $00                                                  ; $d6f4 : $00
	.db $ff                                                  ; $d6f5 : $ff