# ---------------------------------------------------------------------------- #
# includes for shell: aliases - C compiler
# ---------------------------------------------------------------------------- #

# helper --------------------------------------------------------------------- #

compile-c-choose-flag-std() {
    case "$1" in
	c90 | c89 | ansi)
	    # , iso9899:1990 , -ansi , gnu90 , gnu89
		echo "-std=c90 -Wc90-c99-compat"
		;;
	c94)
		echo "-std=iso9899:199409 -Wc90-c99-compat"
		;;
	c99)
	    # , iso9899:1999 , gnu99
		echo "-std=c99 -Wc99-c11-compat"
		;;
	c11)
	    # , iso9899:2011 , gnu11
		echo "-std=c11 -Wc11-c2x-compat"
		;;
	c17 | c18)
	    # , iso9899:2017 , iso9899:2018 , gnu17 , gnu18
		echo "-std=c17"
		;;
	c2x)
	    # , gnu2x
		echo "-std=c2x"
		;;
	*)
	    echo "-std=c99 -Wc99-c11-compat"
	    ;;
    esac
}

# general -------------------------------------------------------------------- #

compile-c() { 

    local C_COMPILER=gcc
    
    # Position Independent Executable (PIE)
    local C_FLAG_PIE_NO=-no-pie
    
    local C_FLAGS_WARNING=(\
        -Wall -Wextra -Wpedantic \
        -Waggregate-return \
        -Wbad-function-cast \
        -Wcast-align -Wcast-qual \
        -Wconversion \
        -Wfloat-equal \
        -Wpointer-arith \
        -Wredundant-decls \
        -Wshadow \
        -Wstrict-prototypes \
        -Wswitch-default -Wswitch-enum \
        -Wundef \
        -Wunreachable-code \
        -Wwrite-strings
    )

    if [ ! -f "$1" ] ; then
        echo 'Argument not a file'
        return
    fi

    c_compiler_std=$(compile-c-choose-flag-std $2)

    echo $c_compiler_std | xargs $C_COMPILER ${C_FLAGS_WARNING[@]} $C_FLAG_PIE_NO ${3[@]} -o ${1%.*} $1
}

# specific ------------------------------------------------------------------- #

compile-c-optimize() {

    local C_FLAG_OPTIMIZE=(-O2)

    compile-c $1 $2 $C_FLAG_OPTIMIZE
}


compile-c-debug() {

    # Og: optimizations that don't interfere with debugging
    local C_FLAGS_DEBUG=(-g -Og)

    compile-c $1 $2 $C_FLAGS_DEBUG
}


compile-c-all() { 

    for i in *.c; do
        compile-c $i $1
    done
}

# ---------------------------------------------------------------------------- #
