#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

HOST_TO_CHECK="example.com"

CHECK_TAHELY_EU=true

CHECK_GOOGLE=true

# Tarhely.eu:
# 79.172.252.100

# GitHub Pages:
# 185.199.108.153
# 185.199.109.153
# 185.199.110.153
# 185.199.111.153

SECTION_SEPARATOR="------------------------------------------------------------------------"
TARGET_PREFIX="target: . . . . . . . . . . . . . . . . . . . . " # 36 chars

ORIGINAL_VALUE="79.172.252.100" # Tarhely.eu
TARGET_VALUE="185.199.111.153" # GitHub Pages

DISPLAY_OPTIONS_LOCAL=" +noall +answer +stats"

NAMESERVER_TARHELY_EU_1="ns.tdns1.net"
NAMESERVER_TARHELY_EU_2="ns.tdns2.net"
DISPLAY_OPTIONS_TARHELY_EU=" +noall +answer +stats"

NAMESERVER_GOOGLE_1="8.8.8.8"
NAMESERVER_GOOGLE_2="8.8.4.4"
DISPLAY_OPTIONS_GOOGLE=" +noall +answer +stats"

function dnstest {
    # $1 : test url
    # $2 : test name
    
    
    echo "testing $2 on local name server"
    echo $TARGET_PREFIX $TARGET_VALUE
    dig $1 $DISPLAY_OPTIONS_LOCAL
    
    echo "Check Tarhely.eu DNS? -- $CHECK_TAHELY_EU"
    if $CHECK_TAHELY_EU ; then
        echo "testing $2 on name server $NAMESERVER_TARHELY_EU_1"
        echo $TARGET_PREFIX $TARGET_VALUE
        dig $1 @$NAMESERVER_TARHELY_EU_1 $DISPLAY_OPTIONS_TARHELY_EU
        
        echo "testing $2 on name server $NAMESERVER_TARHELY_EU_2"
        echo $TARGET_PREFIX $TARGET_VALUE
        dig $1 @$NAMESERVER_TARHELY_EU_2 $DISPLAY_OPTIONS_TARHELY_EU
    fi
    
    echo "Check google DNS? -- $CHECK_GOOGLE"
    if $CHECK_GOOGLE ; then
        echo "testing $2 on name server $NAMESERVER_GOOGLE_1"
        echo $TARGET_PREFIX $TARGET_VALUE
        dig $1 @$NAMESERVER_GOOGLE_1 $DISPLAY_OPTIONS_GOOGLE
        
        echo "testing $2 on name server $NAMESERVER_GOOGLE_2"
        echo $TARGET_PREFIX $TARGET_VALUE
        dig $1 @$NAMESERVER_GOOGLE_2 $DISPLAY_OPTIONS_GOOGLE
    fi
    
    echo $SECTION_SEPARATOR
}

# OUTPUT #

echo $SECTION_SEPARATOR
echo "Tarhely.eu: $ORIGINAL_VALUE"
echo "GitHub Pages: $TARGET_VALUE"
echo $SECTION_SEPARATOR

dnstest "$HOST_TO_CHECK"        "apex domain"
dnstest "www.$HOST_TO_CHECK"    "www subdomain"
dnstest "www2.$HOST_TO_CHECK"   "www2 subdomain"
dnstest "pelda.$HOST_TO_CHECK"  "pelda subdomain"

# END #


