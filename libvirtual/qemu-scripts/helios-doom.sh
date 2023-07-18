#!/bin/sh -e

# created by Drew Devault
# https://drewdevault.com/2022/07/01/Porting-DOOM-to-Helios.html

# ISO: https://mirror.drewdevault.com/doom.iso

qemu-system-x86_64 -m 1G -no-reboot -no-shutdown \
    -drive file=doom.iso,format=raw \
    -display sdl \
    -chardev stdio,id=char0 \
    -serial chardev:char0
