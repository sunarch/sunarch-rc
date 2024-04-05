#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# ---------------------------------------------------------------------------- #
# TeamViewer:

# https://www.teamviewer.com/en/
# https://www.teamviewer.com/en/download/linux/

# ------------------------------------ #
# local DEB:

# package: teamviewer # Remote control and meeting solution.

# ------------------------------------ #
# PPA:
# - added automatically when installing from downloaded DEB package

# repository: https://linux.teamviewer.com/deb

# ---------------------------------------------------------------------------- #

###   TeamViewer DEB repository list

### NOTE: Manual changes to this file
###        - prevent it from being updated by TeamViewer package updates
###        - will be lost after using the 'teamviewer repo' command
###       The original file can be restored with this command:
###       cp /opt/teamviewer/tv_bin/script/teamviewer.list /etc/apt/sources.list.d/teamviewer.list
###       which has the same effect as 'teamviewer repo default'

### NOTE: It is preferred to use the following commands to edit this file:
###       teamviewer repo                - show current repository configuration
###       teamviewer repo default        - restore default configuration
###       teamviewer repo disable        - disable the repository
###       teamviewer repo stable         - make all regular TeamViewer packages available (default)
###       teamviewer repo preview        - additionally, make feature preview packages available
###       teamviewer repo development    - additionally, make the latest development packages available

# Modified via 'teamviewer repo' command
### deb https://linux.teamviewer.com/deb stable main #TeamViewer
### deb https://linux.teamviewer.com/deb preview main
### deb https://linux.teamviewer.com/deb development main

# ---------------------------------------------------------------------------- #
