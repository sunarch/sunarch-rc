# ---------------------------------------------------------------------------- #
# includes for shell: prompt

# currently only for Bash

# ---------------------------------------------------------------------------- #
# dependencies

shell-source-include "$HOME/shell/ansi-escape.sh"

# ---------------------------------------------------------------------------- #

# https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Controlling-the-Prompt

__prompt_construct_special() {
    local format=$2
    local s=''

    case "$1" in
        bell)        s='\a'   ;; # A bell character.
        'date')      s='\d'   ;; # The date, in "Weekday Month Date" format (e.g., "Tue May 26").
        date-fmt)    s='\D{' $format '}' ;; # The format is passed to strftime(3) and the result is inserted into the prompt string; an empty format results in a locale-specific time representation. The braces are required.
        escape)      s='\e'   ;; # An escape character.
        host)        s='\h'   ;; # The hostname, up to the first ‘.’.
        host-full)   s='\H'   ;; # The hostname.
        'jobs')      s='\j'   ;; # The number of jobs currently managed by the shell.
        terminal)    s='\l'   ;; # The basename of the shell’s terminal device name.
        lf)          s='\n'   ;; # A newline.
        cr)          s='\r'   ;; # A carriage return.
        shell)       s='\s'   ;; # The name of the shell, the basename of $0 (the portion following the final slash).
        time-sec-24) s='\t'   ;; # The time, in 24-hour HH:MM:SS format.
        time-sec-12) s='\T'   ;; # The time, in 12-hour HH:MM:SS format.
        time-12)     s='\@'   ;; # The time, in 12-hour am/pm format.
        time-24)     s='\A'   ;; # The time, in 24-hour HH:MM format.
        username)    s='\u'   ;; # The username of the current user.
        bash-v)      s='\v'   ;; # The version of Bash (e.g., 2.00)
        bash-v-full) s='\V'   ;; # The release of Bash, version + patchlevel (e.g., 2.00.0) 
        'pwd')       s='\w'   ;; # The value of the PWD shell variable ($PWD), with $HOME abbreviated with a tilde (uses the $PROMPT_DIRTRIM variable).
        pwd-short)   s='\W'   ;; # The basename of $PWD, with $HOME abbreviated with a tilde.
        history-no)  s='\!'   ;; # The history number of this command.
        command-no)  s='\#'   ;; # The command number of this command.
        prompt)      s='\$'   ;; # If the effective uid is 0, #, otherwise $.
        ascii-oct)   s='\nnn' ;; # The character whose ASCII code is the octal value nnn.
        backslash)   s='\\'   ;; # A backslash.
        non-print-begin) s='\['   ;; # Begin a sequence of non-printing characters. This could be used to embed a terminal control sequence into the prompt.
        non-print-end)   s='\]'   ;; # End a sequence of non-printing characters.
                      *) s=''
    esac

    echo $s
}

__prompt_construct_nonprinting() {
    local begin="$(__prompt_construct_special 'non-print-begin')"
    local value="${1}"
    local end="$(__prompt_construct_special 'non-print-end')"

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

    local escape_reset="$(ansi_escape_sequence 'reset')"
    local fmt_reset="$(__prompt_construct_nonprinting "${escape_reset}")"
    local escape_bold_green="$(ansi_escape_sequence 'bold' 'green')"
    local fmt_bold_green=$(__prompt_construct_nonprinting "${escape_bold_green}")
    local escape_bold_blue="$(ansi_escape_sequence 'bold' 'blue')"
    local fmt_bold_blue=$(__prompt_construct_nonprinting "${escape_bold_blue}")

    local prefix_debian_chroot='${debian_chroot:+($debian_chroot)}'

    local item_user="$(__prompt_construct_special 'username')"
    local item_host="$(__prompt_construct_special 'host')"
    local item_user_at_host="${item_user}@${item_host}"

    local item_pwd="$(__prompt_construct_special 'pwd')"

    local item_end="$(__prompt_construct_special 'prompt')"

    local prompt=''
    if [ "$color_prompt" = yes ]; then
        local item_user_at_host_fmt="${fmt_bold_green}${item_user_at_host}${fmt_reset}"
        local item_pwd_fmt="${fmt_bold_blue}${item_pwd}${fmt_reset}"
        prompt="${item_user_at_host_fmt}:${item_pwd_fmt}"
    else
        prompt="${item_user_at_host}:${item_pwd}"
    fi

    echo -nE "${prefix_debian_chroot}${prompt} ${item_end} "
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

unset __prompt_construct_special
unset __prompt_construct_nonprinting
unset debian_chroot

# ---------------------------------------------------------------------------- #
