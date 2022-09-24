# ANSI escape sequences #

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


# variants of the escape code character: #######################################

# shell                   (e) - (for "escape") : example ('\e[0m')
# ASCII hex (hexadecimal) (x) - value (1b|1B)  : example ('\x1b[0m')
# ASCII oct (octal)       (0) - value (33)     : example ('\033[0m')

# styled text ##################################################################

# 0  -  Reset / Normal  -  all attributes off
AE_RESET='\x1b[0m' # color off / text reset

# 1  -  Bold or increased intensity
AE_BOLD='\x1b[1m'

# 2  -  Faint (decreased intensity)  -  Not widely supported.
AE_FAINT='\x1b[2m'

# 3  -  Italic  -  Not widely supported. Sometimes treated as inverse.
AE_ITALIC='\x1b[3m'

# 4  -  Underline
AE_UNDERLINE='\x1b[4m'

# 5  -  Slow Blink  -  less than 150 per minute
AE_BLINKING='\x1b[5m'

# 6  -  Rapid Blink  -  MS-DOS ANSI.SYS; 150+ per minute; not widely supported
AE_RAPID_BLINK='\x1b[6m'

# 7  -  reverse video  -  swap foreground and background colors
AE_REVERSE='\x1b[7m'

# 8  -  Conceal  -  Not widely supported.
AE_CONCEAL='\x1b[8m'  # invisible

# 9  -  Crossed-out  -  Characters legible, but marked for deletion. Not widely supported.
AE_CROSSED_OUT='\x1b[9m'

# 10  -  Primary(default) font
AE_PRIMARY_FONT='\x1b[10m'

# 11–19  -  Alternative font  -  Select alternative font n − 10
AE_ALTERNATE_FONT_1='\x1b[11m'
AE_ALTERNATE_FONT_2='\x1b[12m'
AE_ALTERNATE_FONT_3='\x1b[13m'
AE_ALTERNATE_FONT_4='\x1b[14m'
AE_ALTERNATE_FONT_5='\x1b[15m'
AE_ALTERNATE_FONT_6='\x1b[16m'
AE_ALTERNATE_FONT_7='\x1b[17m'
AE_ALTERNATE_FONT_8='\x1b[18m'
AE_ALTERNATE_FONT_9='\x1b[19m'

# 20  -  Fraktur  -  hardly ever supported
AE_FRAKTUR='\x1b[20m'

# 21  -  Bold off or Double Underline  -  Bold off not widely supported; double underline hardly ever supported.
AE_BOLD_OFF='\x1b[20m'

# 22  -  Normal color or intensity  -  Neither bold nor faint
AE_NORMAL_COLOR='\x1b[20m'

# 23  -  Not italic, not Fraktur
AE_NORMAL_ANGLE='\x1b[20m'

# 24  -  Underline off  -  Not singly or doubly underlined
AE_UNDERLINE_OFF='\x1b[20m'

# 25  -  Blink off
AE_BLINK_OFF='\x1b[20m'

# 27  -  Inverse off
AE_INVERSE_OFF='\x1b[20m'

# 28  -  Reveal  -  conceal off
AE_REVEAL='\x1b[20m'

# 29  -  Not crossed out
AE_NOT_CROSSED_OUT='\x1b[20m'

# colored text (foreground) ####################################################

# 30–37  -  Set foreground color  -  See color table below
# 3/4 bit (8 colors)
AE_BLACK='\x1b[30m'
AE_RED='\x1b[31m'
AE_GREEN='\x1b[32m'
AE_YELLOW='\x1b[33m'
AE_BLUE='\x1b[34m'
AE_MAGENTA='\x1b[35m'  # magenta / purple
AE_CYAN='\x1b[36m'
AE_WHITE='\x1b[37m'

# 38  -  Set foreground color  -  Next arguments are 5;n or 2;r;g;b, see below
# 8-bit (256-color lookup table) '\x1b[38;5;<n>m' with n in 0..255
# 24-bit ("true color" / RGB) '\x1b[38;2;<r>;<g>;<b>m' with r/g/b in 0..255

# 39  -  Default foreground color  -  implementation defined (according to standard)
AE_DEFAULT_FG_COLOR='\x1b[39m'

# colored text (background) ####################################################

# 40–47  -  Set background color  -  See color table below
# 3/4 bit (8 colors)
AE_BG_BLACK='\x1b[40m'
AE_BG_RED='\x1b[41m'
AE_BG_GREEN='\x1b[42m'
AE_BG_YELLOW='\x1b[43m'
AE_BG_BLUE='\x1b[44m'
AE_BG_MAGENTA='\x1b[45m'  # magenta / purple
AE_BG_CYAN='\x1b[46m'
AE_BG_WHITE='\x1b[47m'

# 48  -  Set background color  -  Next arguments are 5;n or 2;r;g;b, see below
# 8-bit (256-color lookup table) '\x1b[48;5;<n>m' with n in 0..255
# 24-bit ("true color" / RGB) '\x1b[48;2;<r>;<g>;<b>m' with r/g/b in 0..255

# 49  -  Default background color  -  implementation defined (according to standard)
AE_DEFAULT_BG_COLOR='\x1b[49m'

# special styled text ##########################################################

# 51  -  Framed
AE_FRAMED='\x1b[51m'

# 52  -  Encircled
AE_ENCIRCLED='\x1b[52m'

# 53  -  Overlined
AE_OVERLINED='\x1b[53m'

# 54  -  Not framed or encircled
AE_NOT_FRAMED='\x1b[54m'

# 55  -  Not overlined
AE_NOT_OVERLINED='\x1b[55m'

# ideogram styles ##############################################################

# 60  -  ideogram underline or right side line  -  hardly ever supported
AE_IG_UL_RL='\x1b[60m'

# 61  -  ideogram double underline or double line on the right side  -  hardly ever supported
AE_IG_DUL_DRL='\x1b[61m'

# 62  -  ideogram overline or left side line  -  hardly ever supported
AE_IG_OL_LL='\x1b[62m'

# 63  -  ideogram double overline or double line on the left side  -  hardly ever supported
AE_IG_DOL_DLL='\x1b[63m'

# 64  -  ideogram stress marking  -  hardly ever supported
AE_IG_SM='\x1b[64m'

# 65  -  ideogram attributes off  -  reset the effects of all of 60–64
AE_IG_RESET='\x1b[60m'

# colored text - High Intensity (foreground) ###################################

# 90–97  -  Set bright foreground color  -  aixterm (not in standard)
AE_HI_BLACK='\x1b[90m'
AE_HI_RED='\x1b[91m'
AE_HI_GREEN='\x1b[92m'
AE_HI_YELLOW='\x1b[93m'
AE_HI_BLUE='\x1b[94m'
AE_HI_MAGENTA='\x1b[95m'  # magenta / purple
AE_HI_CYAN='\x1b[96m'
AE_HI_WHITE='\x1b[97m'

# colored text - High Intensity (background) ###################################

# 100–107  -  Set bright background color  -  aixterm (not in standard)
AE_HI_BG_BLACK='\x1b[100m'
AE_HI_BG_RED='\x1b[101m'
AE_HI_BG_GREEN='\x1b[102m'
AE_HI_BG_YELLOW='\x1b[103m'
AE_HI_BG_BLUE='\x1b[104m'
AE_HI_BG_MAGENTA='\x1b[105m'  # magenta / purple
AE_HI_BG_CYAN='\x1b[106m'
AE_HI_BG_WHITE='\x1b[107m'

# Bracketed paste mode #########################################################

# When a terminal is running in bracketed paste mode, text pasted into the
# terminal will be surrounded by the sequence ESC [200~ and ESC [201~.
# This indicates to programs that support it that the text within was pasted and
# should not be treated specially (for example, as command keypresses in vim).[14]

# The sequence ESC [?2004h echoed to a terminal enables bracketed paste mode, and ESC [?2004l disables it.

AE_ENABLE_BRACKETED_PASTE_MODE='\x1b[?2004h'
AE_DISABLE_BRACKETED_PASTE_MODE='\x1b[?2004l'

# "ANSI-Rainbow" ###############################################################

rainbow() {
    for (( i = 30; i < 38; i++ )); do echo -e "\033[0;"$i"m Normal: (0;$i); \033[1;"$i"m Light: (1;$i)"; done
}

# show all colors ##############################################################

color_list() {
    for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done
}

# END ##########################################################################
