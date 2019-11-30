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
usa: 3ds_ropkit/build/usa/payload.bin build/usa/game_00.dat
jpn: 3ds_ropkit/build/jpn/payload.bin build/jpn/game_00.dat
eur: 3ds_ropkit/build/eur/payload.bin build/eur/game_00.dat
clean:
	rm -rf build
	$(MAKE) -C 3ds_ropkit clean

3ds_ropkit/build/usa/payload.bin: DEFINES := usa
3ds_ropkit/build/jpn/payload.bin: DEFINES := jpn
3ds_ropkit/build/eur/payload.bin: DEFINES := eur

3ds_ropkit/build/%/payload.bin:
	$(MAKE) -C 3ds_ropkit $< $(DEFINES)

build/usa/RPwnG3.elf: DEFINES := -DUSA
build/jpn/RPwnG3.elf: DEFINES := -DJPN
build/eur/RPwnG3.elf: DEFINES := -DEUR

build/%/RPwnG3.elf: RPwnG3.s
	mkdir -p $(dir $@)
	arm-none-eabi-gcc -x assembler-with-cpp -nostartfiles -nostdlib -g -o $@ $< $(DEFINES)

build/%/game_00.dat: build/%/RPwnG3.elf
	arm-none-eabi-objcopy -O binary $< $@
