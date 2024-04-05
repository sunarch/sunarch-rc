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

# shell-programs.sh depends on shell-path.sh 

CUSTOM_SOURCE_INCLUDES=(\
    "$HOME/shell/shell-path.sh"\
    "$HOME/shell/shell-path-man.sh"\
    "$HOME/shell/shell-aliases.sh"\
    "$HOME/shell/shell-aliases-nav.sh"\
    "$HOME/shell/shell-aliases-cc.sh"\
    "$HOME/shell/shell-launchers.sh"\
    "$HOME/shell/shell-programs.sh"\
    "$HOME/shell/shell-environments.sh"\
)

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
