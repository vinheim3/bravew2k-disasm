OBJS = $(shell find code/ -name '*.s' | sed "s/code/build/" | sed "s/\.s/.o/")
RAM_OBJS = build/wram.o 

all: bravew2k.nes

build/wram.o: include/wram.s
	wla-6502 -o $@ $<

build/%.o: code/%.s
	wla-6502 -o $@ $<

bravew2k.bin: $(OBJS) $(RAM_OBJS)
	wlalink -S linkfile $@

bravew2k.nes: bravew2k.bin
	cat original/header.bin $< > $@
