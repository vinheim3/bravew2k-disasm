.memorymap
	defaultslot 1

	slotsize $800
	slot 0 $0000

	slotsize $2000
	slot 1 $6000

    slotsize $8000
    slot 2 $8000
.endme

.banksize $8000
.ifdef HACK
.rombanks 32
.else
.rombanks 16
.endif

.asciitable
.enda

.emptyfill $00
