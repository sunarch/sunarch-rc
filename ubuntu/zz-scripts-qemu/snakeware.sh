#!/bin/sh -e

# created by Josh Moore
# https://github.com/joshiemoore/snakeware

# ISO: https://github.com/joshiemoore/snakeware/releases

ISO="$HOME/opsys-iso/snakeware/snakeware.iso"
RAM='2G'
AUDIO='pa' # also available: alsa

qemu-system-x86_64 \
    -drive file="${ISO}",media=cdrom,if=virtio \
    -m "${RAM}" \
    -cpu host \
    -machine type=q35,accel=kvm \
    -smp $(nproc) \
    -audiodev "${AUDIO},id=snd" \
    -device ich9-intel-hda \
    -device hda-output,audiodev=snd
