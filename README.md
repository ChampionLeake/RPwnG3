# RPwnG3
RPwnG strikes back yet again!<br><br>
RPwnG3 is a secondary 3DS userland exploit for the game __"RPG Maker Player/RPG Maker Fes"__ on the Nintendo 3DS. This exploit allows users to access the [Homebrew Launcher](https://smealum.github.io/3ds/) from their SD Card.

## Exploit/Vulnerability Detail:
Flaw description comes from 3dbrew, written by MrNbaYoh: (https://www.3dbrew.org/wiki/3DS_Userland_Flaws)
> Buffer overflow via unchecked file size<br>
> *"When loading a project, the game loads the file to a 0x200000 bytes long buffer. However the size remains unchecked, so with a big enough file one can overflow the buffer and overwrite a thread stack and then achieve ROP."*

## Requirements:
* Any Nintendo 3DS System on any System Firmware.
* A Digital/Physical copy of __"RPGMaker Fes Player/RPGMaker Fes"__ (USA/JPN 1.1.2 or lower | EUR 1.1.4 or lower).
* Access to the 3DS Homebrew Launcher through another [Homebrew Exploit](https://www.3dbrew.org/wiki/Homebrew_Exploits).

## Installation:
* Download the homebrew starter kit from smealum's [homebrew launcher website](https://smealum.github.io/3ds/) and put it onto the root of your SD Card.
* Download the __"RPwnG3_v1.zip"__ archive and extract the appropriate contents onto your SD card. Be sure to read the "Instructions.txt" file first.
	- Make sure to download the otherapp.bin payload from smealum's [homebrew launcher website](https://smealum.github.io/3ds/) and place it inside this directory: `/3ds/extdata_dump/`.
	- EUR users 11.9 or above, use (https://deadphoenix8091.github.io/3ds/#otherapp)
* Download the Free DLC that's in-game from __"RPGMaker Fes Player/RPGMaker Fes"__ 
	- (*"Download content"* > *Select the Free DLC*) (this makes the exploit more stable.)
* Use an exisiting Homebrew Exploit to launch into the "extdata_dump" application.
	- *"Restore extdata specified in config"* and exit out of the application.

## Triggering the RPwnG3 Exploit:
* Select the `RPwnG3 - USA/JPN/EUR` project file and load it. :)

## Troubleshooting:
1. Q: When I try to load the RPwnG3 project file, I get an error saying *"Initial position map does not exist"*.
	- __A:__ You're on a updated version of __"RPGMaker Fes Player/RPGMaker Fes"__ so the exploit will not work. Use [MrNbaYoh's RPwnG2](https://github.com/MrNbaYoh/rpwng2).
2. Q: RPwnG3 keeps crashing on me and get stuck on a yellow screen.
	- __A:__ Make sure you have the right RPwnG3 project file according to your region; make sure you have an updated otherapp.bin file to install using "extdata_dump".
3. Q: I get a red screen after triggering RPwnG3.
	- __A:__ Make sure the boot.3dsx file is on the root of your SD Card.

## FAQ:
1. Q: Why did you exploit this game even though we have better alternative methods to access homebrew?
	- __A:__ I always wanted to exploit a 3DS userland game; it was a thing on my mind when other devs came out with their own entrypoints.
2. Q: Can I immediately download this game off the eShop and install RPwnG3?
	- __A:__ No, since the eShop supplies the updated version of RPGMaker Fes Player; If you choose to get this game anyway for sake of it, check out [MrNbaYoh's RPwnG2](https://github.com/MrNbaYoh/rpwng2).
3. Q: What can you do with this exploit?
	- __A:__ Launch the homebrew launcher and play homebrew commercial games from the SD card.
4. Q: Can I install this exploit via seedminer?
	- __A:__ No, the exploitable files are located where extra save data is stored and seedminer relies on injecting modified saves from title savedata.
5. Q: How do I uninstall this exploit?
	- __A:__ Hover over the RPwnG3 file and press X to delete it.

## Special Thanks:
* MrNbaYoh: Discovering the flaw, assisting me with A LOT of things and putting up with my stupidity for 3 years straight x).
* yellows8: [3ds_ropkit](https://github.com/yellows8/3ds_ropkit) making things easier.
* smealum: hax payload(otherapp.bin) and the Homebrew Launcher.
* zoogie: Providing helpful Luma3DS tricks(finding heap/code addresses), 3ds_ropkit codebase.
* plutoo: Giving helpful advice about FS functions.
* Kartik: Helped debug issues for 3ds_ropkit.
* luigoalma: Helping with EUR tester, CMP gadget finder for EUR, Makefile assisting.
* stuckpixel: Explaining stack frames and many other things to help me debug.
* Stary2001: Introducing 3ds_ropkit to me.
* Nedwill: Giving helpful advice about gadget debugging.
* MrCheeze: [extdata_dump](https://github.com/MrCheeze/extdata_dump) homebrew application.
* everyone once who has supported/assisted me :)

## Video Demonstration:
<a href="http://www.youtube.com/watch?feature=player_embedded&v=YP6kmU9qW5k
" target="_blank"><img src="http://img.youtube.com/vi/YP6kmU9qW5k/0.jpg" 
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10" /></a>