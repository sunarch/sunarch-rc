#!/bin/sh -e

# created by Drew DeVault
# from https://drewdevault.com/2018/09/10/Getting-started-with-qemu.html

ISO="$HOME/Documents/vmiso/alpine-standard.iso"
DRIVE="$HOME/Documents/vmiso/alpine.qcow2"
RAM='2G'

qemu-system-x86_64 \
    -drive file="${DRIVE}",media=disk,if=virtio \
    -cdrom "${ISO}" \
    -m "${RAM}" \
    -enable-kvm \
    -nic user,model=virtio \
    -sdl
