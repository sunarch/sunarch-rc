# ---------------------------------------------------------------------------- #
# includes for shell: prompt

# currently only for Bash

# ---------------------------------------------------------------------------- #
# dependencies

shell-source-include "$HOME/shell/ansi-escape.sh"

# ---------------------------------------------------------------------------- #

__prompt_construct_nonprinting() {
    local begin='\['
    local value="${1}"
    local end='\]'

    echo -nE "${begin}${value}${end}"
}

__prompt_construct() {

    local color_prompt=no

    case "$TERM" in
        xterm-color|*-256color) color_prompt=yes;;
    esac

    if [ "$color_prompt" = no ] && [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	    # We have color support; assume it's compliant with Ecma-48
	    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	    # a case would tend to support setf rather than setaf.)
	    color_prompt=yes
    fi

    local prefix_debian_chroot='${debian_chroot:+($debian_chroot)}'
    local item_user_at_host='\u@\h'
    local item_pwd='\w'
    local item_end='\$ '

    local escape_reset="$(ansi_escape_sequence "reset")"
    local fmt_reset="$(__prompt_construct_nonprinting "${escape_reset}")"
    local escape_bold_green="$(ansi_escape_sequence "bold" "green")"
    local fmt_bold_green=$(__prompt_construct_nonprinting "${escape_bold_green}")
    local escape_bold_blue="$(ansi_escape_sequence "bold" "blue")"
    local fmt_bold_blue=$(__prompt_construct_nonprinting "${escape_bold_blue}")

    local prompt=''
    if [ "$color_prompt" = yes ]; then
        prompt="${fmt_bold_green}${item_user_at_host}${fmt_reset}:${fmt_bold_blue}${item_pwd}${fmt_reset}"
    else
        prompt="${item_user_at_host}:${item_pwd}"
    fi

    echo -nE "${prefix_debian_chroot}${prompt}${item_end}"
}

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

PS1=$(__prompt_construct)

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*) PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1" ;;
               *) ;;
esac

# ---------------------------------------------------------------------------- #
# remove unnecessary globals from environment

unset __prompt_construct_nonprinting
unset debian_chroot

# ---------------------------------------------------------------------------- #
