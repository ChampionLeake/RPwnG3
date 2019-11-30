include $(DEVKITARM)/base_tools
#---------------------------------------------------------------------------------
# path to tools
#---------------------------------------------------------------------------------
export PATH  :=    $(DEVKITARM)/bin:$(PATH)
export CC    :=    gcc
#---------------------------------------------------------------------------------
# the prefix on the compiler executables
#---------------------------------------------------------------------------------
PREFIX       :=    arm-none-eabi-
#---------------------------------------------------------------------------------

.PHONY: all usa jpn eur

all: usa jpn eur
usa: build/usa/payload.bin
jpn: build/jpn/payload.bin
eur: build/eur/payload.bin
clean:
	rm -rf build

build/usa/payload.elf: DEFINES := -DUSA
build/jpn/payload.elf: DEFINES := -DJPN
build/eur/payload.elf: DEFINES := -DEUR

build/%/payload.elf: payload.s
	mkdir -p $(dir $@)
	arm-none-eabi-gcc -x assembler-with-cpp -nostartfiles -nostdlib -Ttext=0x08D8FA6C -o $@ $< $(DEFINES)
	
build/%/payload.bin: build/%/payload.elf
	arm-none-eabi-objcopy -O binary $< $@
