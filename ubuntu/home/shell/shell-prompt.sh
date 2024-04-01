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

# option: color -------------------------------------------------------------- #
__PROMPT_OPTION_COLOR=false
setup_prompt_option_color() {
    case "$TERM" in
        xterm-color|*-256color) __PROMPT_OPTION_COLOR=true;;
    esac
    if [ "$__PROMPT_OPTION_COLOR" = false ] && [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	    # We have color support; assume it's compliant with Ecma-48
	    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	    # a case would tend to support setf rather than setaf.)
	    __PROMPT_OPTION_COLOR=true
    fi
}
setup_prompt_option_color
unset setup_prompt_option_color

# component: reset ----------------------------------------------------------- #
__PROMPT_COMPONENT_RESET=''
setup_prompt_component_reset() {
    local fmt_reset="$(ansi_escape_sequence 'reset')"
    __PROMPT_COMPONENT_RESET="$(__prompt_construct_nonprinting "${fmt_reset}")"
}
setup_prompt_component_reset
unset setup_prompt_component_reset

# component: prefix - chroot ------------------------------------------------- #
__PROMPT_COMPONENT_PREFIX_CHROOT='${debian_chroot:+($debian_chroot)}'

# component: shell ----------------------------------------------------------- #
__PROMPT_COMPONENT_SHELL=''
setup_prompt_component_shell() {
    local fmt_current=''
    local item_shell="$(__prompt_construct_special 'shell')"
    if [ "$__PROMPT_OPTION_COLOR" = true ]; then
        fmt_current="$(ansi_escape_sequence 'bold' 'magenta')"
        fmt_current="$(__prompt_construct_nonprinting "${fmt_current}")"
        item_shell="${fmt_current}${item_shell}${__PROMPT_COMPONENT_RESET}"
    fi
    __PROMPT_COMPONENT_SHELL=">${item_shell}"
}
setup_prompt_component_shell
unset setup_prompt_component_shell

# component: user ------------------------------------------------------------ #
__PROMPT_COMPONENT_USER=''
setup_prompt_component_user() {
    local fmt_current=''
    local item_user="$(__prompt_construct_special 'username')"
    if [ "$__PROMPT_OPTION_COLOR" = true ]; then
        fmt_current="$(ansi_escape_sequence 'bold' 'yellow')"
        fmt_current="$(__prompt_construct_nonprinting "${fmt_current}")"
        item_user="${fmt_current}${item_user}${__PROMPT_COMPONENT_RESET}"
    fi
    __PROMPT_COMPONENT_USER=" ~${item_user}"
}
setup_prompt_component_user
unset setup_prompt_component_user

# component: directory ------------------------------------------------------- #
__PROMPT_COMPONENT_DIR=''
setup_prompt_component_dir() {
    local fmt_current=''
    local item_dir="$(__prompt_construct_special 'pwd-short')"
    item_dir="${item_dir##*/}"
    if [ "$__PROMPT_OPTION_COLOR" = true ]; then
        fmt_current="$(ansi_escape_sequence 'bold' 'cyan')"
        fmt_current="$(__prompt_construct_nonprinting "${fmt_current}")"
        item_dir="${fmt_current}${item_dir}${__PROMPT_COMPONENT_RESET}"
    fi
    __PROMPT_COMPONENT_DIR=" ./${item_dir}"
}
setup_prompt_component_dir
unset setup_prompt_component_dir

# component: Git ------------------------------------------------------------- #
__PROMPT_COMPONENT_GIT_PREFIX=''
setup_prompt_component_git_prefix() {
    local fmt_current=''
    local item_git_prefix='git:'
    if [ "$__PROMPT_OPTION_COLOR" = true ]; then
        fmt_current="$(ansi_escape_sequence 'bold' 'blue')"
        fmt_current="$(__prompt_construct_nonprinting "${fmt_current}")"
        item_git_prefix="${fmt_current}${item_git_prefix}${__PROMPT_COMPONENT_RESET}"
    fi
    __PROMPT_COMPONENT_GIT_PREFIX=" ${item_git_prefix}${item_git_branch}"
}
setup_prompt_component_git_prefix
unset setup_prompt_component_git_prefix

__PROMPT_COMPONENT_GIT_BRANCH_CLEAN=''
setup_prompt_component_git_branch_clean() {
    local fmt_current="$(ansi_escape_sequence 'bold' 'green')"
    fmt_current="$(__prompt_construct_nonprinting "${fmt_current}")"
    __PROMPT_COMPONENT_GIT_BRANCH_CLEAN="${fmt_current}"
}
setup_prompt_component_git_branch_clean
unset setup_prompt_component_git_branch_clean

__PROMPT_COMPONENT_GIT_BRANCH_NOT_CLEAN=''
setup_prompt_component_git_branch_not_clean() {
    local fmt_current="$(ansi_escape_sequence 'bold' 'red')"
    fmt_current="$(__prompt_construct_nonprinting "${fmt_current}")"
    __PROMPT_COMPONENT_GIT_BRANCH_NOT_CLEAN="${fmt_current}"
}
setup_prompt_component_git_branch_not_clean
unset setup_prompt_component_git_branch_not_clean

__prompt_component_git_branch() {
    local fmt_current=''
    local item_git_branch="$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
    local git_status_line="$(git status | tail -n 1)"
    local git_status_clean='nothing to commit, working tree clean'
    if [ "$__PROMPT_OPTION_COLOR" = true ]; then
        if [ "$git_status_line" = "$git_status_clean" ]; then
            fmt_current="${__PROMPT_COMPONENT_GIT_BRANCH_CLEAN}"
        else
            fmt_current="${__PROMPT_COMPONENT_GIT_BRANCH_NOT_CLEAN}"
        fi
        item_git_branch="${fmt_current}${item_git_branch}${__PROMPT_COMPONENT_RESET}"
    fi
    echo "${item_git_branch}"
}

__prompt_component_git() {
    local is_in_git_wt="$(git rev-parse --is-inside-work-tree 2> /dev/null)"
    if [ "$is_in_git_wt" = true ]; then
        echo "\
${__PROMPT_COMPONENT_GIT_PREFIX}\
$(__prompt_component_git_branch)"
    fi
}

# component: end ------------------------------------------------------------- #
__PROMPT_COMPONENT_END=" $(__prompt_construct_special 'prompt')"

# construct ------------------------------------------------------------------ #
__prompt_construct() {
    echo -nE "\
${__PROMPT_COMPONENT_PREFIX_CHROOT}\
${__PROMPT_COMPONENT_SHELL}\
${__PROMPT_COMPONENT_USER}\
${__PROMPT_COMPONENT_DIR}\
$(__prompt_component_git)\
${__PROMPT_COMPONENT_END} "
}

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# ---------------------------------------------------------------------------- #
# remove unnecessary globals from environment

unset __prompt_construct_special
unset __prompt_construct_nonprinting

# ---------------------------------------------------------------------------- #
# PROMPT_COMMAND
PROMPT_COMMAND='PS1=$(__prompt_construct)'

# ---------------------------------------------------------------------------- #
# PS1 – Default interaction prompt

PS1=$(__prompt_construct)

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*) PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1" ;;
               *) ;;
esac

# ---------------------------------------------------------------------------- #
# PS2 – Continuation interactive prompt

PS2='> '

# ---------------------------------------------------------------------------- #
# PS3 – Prompt used by “select” inside shell script

PS3=''

# ---------------------------------------------------------------------------- #
# PS4 – Used by “set -x” to prefix tracing output

PS4='+ '

# ---------------------------------------------------------------------------- #
