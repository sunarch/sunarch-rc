#!/usr/bin/bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


# check distro info

echo "hostnamectl"
echo ""
hostnamectl

echo ""
echo "lsb_release -a"
echo ""
lsb_release -a

echo ""
echo "cat /etc/*-release"
echo ""
cat /etc/*-release

