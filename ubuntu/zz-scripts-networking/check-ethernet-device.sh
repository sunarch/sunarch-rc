#!/usr/bin/bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


# status
echo "'nmcli device status' : "
nmcli device status

# details
echo "'nmcli device show eth0' : "
nmcli device show eth0
