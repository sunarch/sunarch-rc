# ---------------------------------------------------------------------------- #
# includes for shell: ANSI escape sequences

# https://stackoverflow.com/questions/4842424/list-of-ansi-color-escape-sequences

# ---------------------------------------------------------------------------- #

ansi_escape_sequence() {
    local begin='\033['
    local sep=';'
    local end='m'

    local effect='00'
    local fg_color_sep="$sep"
    local fg_color=''
    local bg_color_sep="$sep"
    local bg_color=''
    local font_sep="$sep"
    local font=''

    case "${1}" in
        reset | normal | all-off ) effect='00';;
        bold | increased-intensity ) effect='01';;
        faint | decreased-intensity ) effect='02';; # Not widely supported.
        italic | inverse ) effect='03';; # Not widely supported.
        underline ) effect='04';;
        blink-slow ) effect='05';; # less than 150 per minute
        blink-rapid ) effect='06';; # Not widely supported.
        reverse-video ) effect='07';; # swap FG and BG colors
        conceal ) effect='08';; # Not widely supported.
        crossed-out ) effect='09';; # Not widely supported.
        fraktur ) effect='20';; # hardly ever supported
        bold-off | double-underline ) effect='21';; # Bold off not widely supported; double underline hardly ever supported.
        normal-color | normal-intensity ) effect='22';; # Neither bold nor faint
        not-italic-not-fraktur ) effect='23';;
        underline-off ) effect='24';; # Not singly or doubly underlined
        blink-off ) effect='25';;
        inverse-off ) effect='27';;
        reveal | conceal-off ) effect='28';;
        not-crossed-out ) effect='29';;
        framed ) effect='51';;
        encircled ) effect='52';;
        overlined ) effect='53';;
        not-framed-or-encircled ) effect='54';;
        not-overlined ) effect='55';;
        ideogram-underline ) effect='60';; # hardly ever supported
        ideogram-double-underline ) effect='61';; # hardly ever supported
        ideogram-overline ) effect='62';; # hardly ever supported
        ideogram-double-overline ) effect='63';; # hardly ever supported
        ideogram-stress-marking ) effect='64';; # hardly ever supported
        ideogram-attributes-off ) effect='65';; # reset the effects of all of 60-64
        * ) ;;
    esac

    case "${2}" in
        black   ) fg_color='30' ;;
        red     ) fg_color='31' ;;
        green   ) fg_color='32' ;;
        yellow  ) fg_color='33' ;;
        blue    ) fg_color='34' ;;
        magenta ) fg_color='35' ;;
        cyan    ) fg_color='36' ;;
        white   ) fg_color='37' ;;
        default ) fg_color='39' ;;
        bright-black   ) fg_color='90' ;;
        bright-red     ) fg_color='91' ;;
        bright-green   ) fg_color='92' ;;
        bright-yellow  ) fg_color='93' ;;
        bright-blue    ) fg_color='94' ;;
        bright-magenta ) fg_color='95' ;;
        bright-cyan    ) fg_color='96' ;;
        bright-white   ) fg_color='97' ;;
        *              ) fg_color=''    ; fg_color_sep='' ;;
    esac
    fg_color="${fg_color_sep}${fg_color}"

    case "${3}" in
        black   ) bg_color='40' ;;
        red     ) bg_color='41' ;;
        green   ) bg_color='42' ;;
        yellow  ) bg_color='43' ;;
        blue    ) bg_color='44' ;;
        magenta ) bg_color='45' ;;
        cyan    ) bg_color='46' ;;
        white   ) bg_color='47' ;;
        default ) bg_color='49' ;;
        bright-black   ) bg_color='100' ;;
        bright-red     ) bg_color='101' ;;
        bright-green   ) bg_color='102' ;;
        bright-yellow  ) bg_color='103' ;;
        bright-blue    ) bg_color='104' ;;
        bright-magenta ) bg_color='105' ;;
        bright-cyan    ) bg_color='106' ;;
        bright-white   ) bg_color='107' ;;
        *              ) bg_color=''    ; bg_color_sep='' ;;
    esac
    bg_color="${bg_color_sep}${bg_color}"
    
    case "${4}" in
        0 | zero | primary | default ) font='10' ;;
        1 | one   ) font='11' ;;
        2 | two   ) font='12' ;;
        3 | three ) font='13' ;;
        4 | four  ) font='14' ;;
        5 | five  ) font='15' ;;
        6 | six   ) font='16' ;;
        7 | seven ) font='17' ;;
        8 | eight ) font='18' ;;
        9 | nine  ) font='19' ;;
        *         ) font=''    ; font_sep='' ;;
    esac
    font="${font_sep}${font}"

    echo -nE "${begin}${effect}${fg_color}${bg_color}${font}${end}"
}

# ---------------------------------------------------------------------------- #
