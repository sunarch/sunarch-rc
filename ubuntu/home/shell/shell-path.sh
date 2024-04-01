# ---------------------------------------------------------------------------- #
# includes for shell: PATH

CUSTOM_PATH_INCLUDES=(\
    "$HOME/.local/bin"\
    "$HOME/bin"\
)

for item in $CUSTOM_PATH_INCLUDES; do
    case $PATH
      in *$item*) ;; # do nothing, it's there
         *) if [ -d $item ] ; then
                PATH="$item:$PATH"
            fi
    esac
done

# ---------------------------------------------------------------------------- #
