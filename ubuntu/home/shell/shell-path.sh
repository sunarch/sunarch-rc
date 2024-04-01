# ---------------------------------------------------------------------------- #
# includes for shell: PATH

# ---------------------------------------------------------------------------- #
# aliases for display

alias path-listed='echo "$PATH" | tr ":" "\n" | nl'
alias path-sorted='echo "$PATH" | tr ":" "\n" | sort | nl'

# ---------------------------------------------------------------------------- #
# include function

__shell-path-include() {
    local INCLUDE_POSITION=$2

    case $PATH in
        *$1*) ;; # do nothing, it's there
           *) if [ -d $1 ] ; then
                  case "$INCLUDE_POSITION" in
                      first) export PATH="$1:$PATH" ;;
                          *) export PATH="$PATH:$1"
                  esac
              else
                  echo "FOLDER FOR PATH NOT FOUND: '$item'"
              fi
    esac
}

shell-path-include-first() {
    __shell-path-include $1 'first'
}

shell-path-include() {
    __shell-path-include $1 'last'
}

# ---------------------------------------------------------------------------- #
# list of includes

CUSTOM_PATH_INCLUDES=(\
    "$HOME/.local/bin"\
    "$HOME/bin"\
)

# ---------------------------------------------------------------------------- #
# include list items if not already included

for item in "${CUSTOM_PATH_INCLUDES[@]}"; do
    shell-path-include-first $item
done

# ---------------------------------------------------------------------------- #
