OBJS = $(shell find code/ -name '*.s' | sed "s/code/build/" | sed "s/\.s/.o/")
RAM_OBJS = build/wram.o 
DEFINES = -D HACK

all: bravew2k.nes

build/wram.o: include/wram.s
	wla-6502 -o $@ ${DEFINES} $<

build/%.o: code/%.s
	wla-6502 -o $@ ${DEFINES} $<

bravew2k.bin: $(OBJS) $(RAM_OBJS)
ifndef DEFINES
	wlalink -S linkfile $@
else
	wlalink -S newLinkfile $@
endif

bravew2k.nes: bravew2k.bin
ifndef DEFINES
	cat original/header.bin $< > $@
else
	cat original/newHeader.bin $< > $@
endif