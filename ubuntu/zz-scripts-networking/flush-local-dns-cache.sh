#!/usr/bin/bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


# Ubuntu 17.04 and higher
# https://askubuntu.com/questions/2219/how-do-i-clear-the-dns-cache/929478#929478

echo "flushing local dns cache"
sudo systemd-resolve --flush-caches
