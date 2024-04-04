#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# ---------------------------------------------------------------------------- #

DCONF_BACKUP_KEYS_PATHS=(\
    'org/gnome/terminal'                 'gnome-terminal'\
    'org/gnome/TextEditor'               'gnome-text-editor'\
    'org/gnome/clocks'                   'gnome-clocks'\
    'org/gnome/desktop/app-folders'      'gnome-desktop-app-folders'\
    'org/gnome/desktop/background'       'gnome-desktop-background'\
    'org/gnome/desktop/calendar'         'gnome-desktop-calendar'\
    'org/gnome/desktop/input-sources'    'gnome-desktop-input-sources'\
    'org/gnome/desktop/interface'        'gnome-desktop-interface'\
    'org/gnome/desktop/privacy'          'gnome-desktop-privacy'\
    'org/gnome/evince'                   'evince'\
    'org/gnome/file-roller'              'gnome-file-roller'\
    'org/gnome/gedit'                    'gedit'\
    'org/gnome/nautilus/preferences'     'nautilus'\
    'org/gnome/settings-daemon/plugins'  'gnome-settings-daemon-plugins'\
)

# ---------------------------------------------------------------------------- #

for ((i = 0 ; i < ${#DCONF_BACKUP_KEYS_PATHS[@]} ; i += 2)); do
    DCONF_BACKUP_KEY="/${DCONF_BACKUP_KEYS_PATHS[$i]}/"
    DCONF_BACKUP_PATH="./dconf-${DCONF_BACKUP_KEYS_PATHS[$i+1]}.preferences"
    echo "'${DCONF_BACKUP_KEY}' -> '${DCONF_BACKUP_PATH}'"
    dconf dump "${DCONF_BACKUP_KEY}" > "${DCONF_BACKUP_PATH}"
done

# ---------------------------------------------------------------------------- #
# remove variables from environment

unset DCONF_BACKUP_KEYS_PATHS
unset DCONF_BACKUP_KEY
unset DCONF_BACKUP_PATH

# ---------------------------------------------------------------------------- #
