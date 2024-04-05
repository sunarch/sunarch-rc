# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# ---------------------------------------------------------------------------- #
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# ---------------------------------------------------------------------------- #
# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# ---------------------------------------------------------------------------- #
# include function

shell-source-include() {
    if [ ! -z "$1" ] && [ -f $1 ]; then
        . "$1"
    else
        echo "CUSTOM SCRIPT NOT FOUND: '$1'"
    fi
}

# ---------------------------------------------------------------------------- #
# list of include sources

CUSTOM_SOURCE_INCLUDES=($(find "$HOME/shell/" -maxdepth 1 -type f | sort))

# ---------------------------------------------------------------------------- #
# source list items

for item in "${CUSTOM_SOURCE_INCLUDES[@]}"; do
    if [ -f $item ]; then
        . "$item"
    else
        echo "CUSTOM SCRIPT NOT FOUND: '$item'"
    fi
done

# ---------------------------------------------------------------------------- #
# remove list from environment

unset CUSTOM_SOURCE_INCLUDES

# ---------------------------------------------------------------------------- #
