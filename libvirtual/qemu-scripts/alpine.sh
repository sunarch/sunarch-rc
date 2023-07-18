#!/bin/sh -e

# created by Drew DeVault
# from https://drewdevault.com/2018/09/10/Getting-started-with-qemu.html

qemu-system-x86_64 \
    -enable-kvm \
    -m 2048 \
    -nic user,model=virtio \
    -drive file=alpine.qcow2,media=disk,if=virtio \
    -cdrom alpine-standard-3.8.0-x86_64.iso \
    -sdl
