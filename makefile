
zrun.bin: zrun.asm
	asm02 -L -b zrun.asm

clean:
	-rm zrun.bin
	-rm zrun.build
	-rm zrun.lst

