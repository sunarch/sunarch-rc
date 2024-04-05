#!/usr/bin/bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


echo "IPv6 disabled on interface 'all':";
cat /proc/sys/net/ipv6/conf/all/disable_ipv6;

echo "IPv6 disabled on interface 'default':";
cat /proc/sys/net/ipv6/conf/default/disable_ipv6;

echo "IPv6 disabled on interface 'eth0':";
cat /proc/sys/net/ipv6/conf/eth0/disable_ipv6;

echo "IPv6 disabled on interface 'lo':";
cat /proc/sys/net/ipv6/conf/lo/disable_ipv6;

echo "IPv6 disabled on interface 'wlan0':";
cat /proc/sys/net/ipv6/conf/wlan0/disable_ipv6;

### Possible alternative display (does not work):
# result = $(cat /proc/sys/net/ipv6/conf/all/disable_ipv6);
# if [ $result = 1 ]
#     then echo "SUCCESS"
#     else echo "FAILURE"
# fi

echo "(The value 1 means success.)"
