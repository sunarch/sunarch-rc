# ---------------------------------------------------------------------------- #
# includes for shell: MANPATH

# ---------------------------------------------------------------------------- #
# aliases for display

alias man-listed='echo "$MANPATH" | tr ":" "\n" | nl'
alias man-sorted='echo "$MANPATH" | tr ":" "\n" | sort | nl'

# ---------------------------------------------------------------------------- #
# include function

__manpath_include() {
    local INCLUDE_POSITION=$2

    case $MANPATH in
        *$1*) ;; # do nothing, it's there
           *) if [ -d $1 ] ; then
                  export MANPATH="$MANPATH:$1"
              else
                  echo "FOLDER FOR MANPATH NOT FOUND: '$item'"
              fi
    esac
}

# ---------------------------------------------------------------------------- #
# list of includes

CUSTOM_MANPATH_INCLUDES=(\
    "$HOME/man"\
)

# ---------------------------------------------------------------------------- #
# include list items if not already included

for item in "${CUSTOM_MANPATH_INCLUDES[@]}"; do
    __manpath_include $item
done

# ---------------------------------------------------------------------------- #
# remove list from environment

unset __manpath_include
unset CUSTOM_MANPATH_INCLUDES

# ---------------------------------------------------------------------------- #
