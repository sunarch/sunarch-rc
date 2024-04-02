#!/bin/sh -e

# created by Drew Devault
# https://drewdevault.com/2022/07/01/Porting-DOOM-to-Helios.html

# ISO: https://mirror.drewdevault.com/doom.iso

ISO="$HOME/Documents/vmiso/helios-doom.iso"
RAM='1G'

qemu-system-x86_64 \
    -drive file="${ISO}",format=raw \
    -m "${RAM}" \
    -display sdl \
    -chardev stdio,id=char0 \
    -serial chardev:char0 \
    -no-reboot \
    -no-shutdown
