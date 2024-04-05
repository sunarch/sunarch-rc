#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

echo "Updating in /boot/grub/themes/"

echo "-> Theme: matrix"
sudo cp -ruv ./matrix/ /boot/grub/themes/
