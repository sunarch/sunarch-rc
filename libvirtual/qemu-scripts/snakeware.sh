#!/bin/sh -e

# create by Josh Moore
# https://github.com/joshiemoore/snakeware

# ISO: https://github.com/joshiemoore/snakeware/releases

RAM="2G"
ISO="snakeware_x86-64.iso"

AUDIO="pa" # also available: alsa

exec qemu-system-x86_64 \
    -drive file="$ISO",media=cdrom,if=virtio \
    -m "$RAM" \
    -cpu host \
    -machine type=q35,accel=kvm \
    -smp $(nproc) \
    -audiodev "$AUDIO,id=snd" \
    -device ich9-intel-hda \
    -device hda-output,audiodev=snd
