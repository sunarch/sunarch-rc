# ---------------------------------------------------------------------------- #
# includes for shell: ANSI escape sequences

# ---------------------------------------------------------------------------- #

ansi_escape_sequence() {
    local begin='\033['
    local sep=';'
    local end='m'

    local effect='00'
    local fg_color_sep=''
    local fg_color=''
    local bg_color_sep=''
    local bg_color=''

    case "${1}" in
        reset) effect='00';;
         bold) effect='01';;
            *)            ;;
    esac

    case "${2}" in
        green) fg_color_sep="$sep" ; fg_color='32' ;;
         blue) fg_color_sep="$sep" ; fg_color='34' ;;
            *) fg_color_sep=''     ; fg_color=''   ;;
    esac

    case "${3}" in
        *) bg_color_sep='' ; bg_color='';;
    esac

    echo -nE "${begin}${effect}${fg_color_sep}${fg_color}${bg_color_sep}${bg_color}${end}"
}

# ---------------------------------------------------------------------------- #
