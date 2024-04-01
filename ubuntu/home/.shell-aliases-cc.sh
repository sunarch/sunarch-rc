# ---------------------------------------------------------------------------- #
# includes for shell: aliases - C compiler
# ---------------------------------------------------------------------------- #

# compiler #####################################################################

C_COMPILER=gcc

# C standard ###################################################################

choose_c_std() {
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

# common #######################################################################

# warnings ---------------------------------------------------------------------

C_FLAGS_WARNING=(\
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

# other-------------------------------------------------------------------------

# Position Independent Executable (PIE)
C_FLAG_PIE_NO=-no-pie

# optimization / debug #########################################################

C_FLAG_OPTIMIZE=(-O2)

# Og: optimizations that don't interfere with debugging
C_FLAGS_DEBUG=(-g -Og)

# FUNCTIONS ####################################################################

compile-c() { 

    if [ ! -f "$1" ] ; then
        echo 'Argument not a file'
        return
    fi

    c_compiler_std=$(choose_c_std $2)

    echo $c_compiler_std | xargs $C_COMPILER ${C_FLAGS_WARNING[@]} $C_FLAG_PIE_NO ${3[@]} -o ${1%.*} $1
}


compile-c-optimize() {

    compile-c $1 $2 $C_FLAG_OPTIMIZE
}


compile-c-debug() {

    compile-c $1 $2 $C_FLAGS_DEBUG
}


compile-c-all() { 

    for i in *.c; do
        compile-c $i $1
    done
}

# ---------------------------------------------------------------------------- #
