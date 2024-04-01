# ---------------------------------------------------------------------------- #
# includes for shell: PATH

# ---------------------------------------------------------------------------- #
# aliases for display

alias path-listed='echo "$PATH" | tr ":" "\n" | nl'
alias path-sorted='echo "$PATH" | tr ":" "\n" | sort | nl'

# ---------------------------------------------------------------------------- #
# list of includes

CUSTOM_PATH_INCLUDES=(\
    "$HOME/.local/bin"\
    "$HOME/bin"\
)

# ---------------------------------------------------------------------------- #
# include list items if not already included

for item in $CUSTOM_PATH_INCLUDES; do
    case $PATH
      in *$item*) ;; # do nothing, it's there
         *) if [ -d $item ] ; then
                PATH="$item:$PATH"
            fi
    esac
done

# ---------------------------------------------------------------------------- #
