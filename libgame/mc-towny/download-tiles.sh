#!/usr/bin/bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


rm ./tiles-download/*.png
echo "removed images from tiles-download/"

HOST="..."

XSTART=-703
XFINISH=-694

YSTART=-506
YFINISH=-500

echo "downloading from ${HOST}/tiles/world/flat/..."


for (( x = ${XSTART}; x <= ${XFINISH}; x++ )) 
do
    echo "------------------------------------------"
    echo "iteration for x = $x"
    
    for (( y = ${YSTART}; y <= ${YFINISH}; y++ )) 
    do
        echo "    instance y = $y"
        
        echo "        -22_-16/${x}_${y}.png"
        
        wget -P tiles-download/ -o download-tiles.log "${HOST}/tiles/world/flat/-22_-16/${x}_${y}.png"
    done
done


# -P prefix
# --directory-prefix=prefix
#     Set directory prefix to prefix. The directory prefix is the directory where all other files and subdirectories will be saved to, i.e. the top of the retrieval tree. The default is . (the current directory). 

# -o logfile
# --output-file=logfile
#     Log all messages to logfile. The messages are normally reported to standard error. 

