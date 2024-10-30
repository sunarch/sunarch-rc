#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

sudo apt-get update

# ---------------------------------------------------------------------------- #
# programming languages

# ------------------------------------ #
# C/C++

sudo apt-get install cpp # GNU C preprocessor (cpp)
sudo apt-get install gcc # GNU C compiler
sudo apt-get install g++ # GNU C++ compiler

# ------------------------------------ #
# C/C++ (LLVM)

sudo apt-get install clang # C, C++ and Objective-C compiler (LLVM based), clang binary
sudo apt-get install llvm # Low-Level Virtual Machine (LLVM)
sudo apt-get install lld # LLVM-based linker

# ------------------------------------ #
# Clojure

#sudo apt-get install clojure # Lisp dialect for the JVM

# ------------------------------------ #
# Fortran

sudo apt-get install gfortran # GNU Fortran 95 compiler
sudo apt-get install gfortran-doc # Documentation for the GNU Fortran compiler (gfortran)

# ------------------------------------ #
# Go

sudo apt-get install golang # Go programming language compiler - metapackage

# ------------------------------------ #
# Guile

sudo apt-get install guile-3.0 # GNU extension language and Scheme interpreter

# ------------------------------------ #
# Lua

sudo apt-get install lua5.4 # Simple, extensible, embeddable programming language

# ------------------------------------ #
# Python

sudo apt-get install python3 # interactive high-level object-oriented language (default python3 version)
sudo apt-get install idle # IDE for Python using Tkinter (default version)

# ---------------------------------------------------------------------------- #
