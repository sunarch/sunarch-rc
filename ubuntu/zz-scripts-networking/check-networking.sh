#!/usr/bin/bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


# ANSI escape sequences ########################################################

STYLE_ERROR='\x1b[1;31m'
STYLE_OK='\x1b[1;32m'
STYLE_RESET='\x1b[0m'

# checking networking status ###################################################

echo ""
echo "===== checking networking status via Network Manager CLI (nmcli) ====="
LVAR_NETWORKING_STATUS=$(nmcli networking)
echo "'nmcli networking' : '${LVAR_NETWORKING_STATUS}'"

if [ ${LVAR_NETWORKING_STATUS} != "enabled" ]
then
    echo -e "${STYLE_ERROR}ERROR${STYLE_RESET}"
    echo "networking is disabled, type 'nmcli networking on' to turn it on"
    exit
else
    echo -e "${STYLE_OK}OK${STYLE_RESET}"
fi

# checking networking connectivity #############################################

echo ""
echo "===== checking networking connectivity via Network Manager CLI (nmcli) ====="
LVAR_NETWORKING_CONNECTIVITY=$(nmcli networking connectivity)
echo "'nmcli networking connectivity' : '${LVAR_NETWORKING_CONNECTIVITY}'"

if [ ${LVAR_NETWORKING_CONNECTIVITY} != "full" ]
then
    echo -e "${STYLE_ERROR}ERROR${STYLE_RESET}"
    echo "networking connectivity is not full"
    exit
else
    echo -e "${STYLE_OK}OK${STYLE_RESET}"
fi

# checking device status #######################################################

echo ""
echo "===== checking the status of devices via Network Manager CLI (nmcli) ====="
echo "'nmcli device status' :"
nmcli device status
echo "(to connect to wired network, type 'nmcli device connect eth0')"

# END ##########################################################################
