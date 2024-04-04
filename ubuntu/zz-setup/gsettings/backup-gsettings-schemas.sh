#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

CURRENT_DATE=$(date +"%Y-%m-%d")

gsettings list-schemas --print-paths > all-backup-gsettings-schemas-${CURRENT_DATE}.txt
