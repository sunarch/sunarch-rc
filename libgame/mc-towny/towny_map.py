#!/usr/bin/env python3

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


import requests

# x_start  = -703
# x_finish = -694

# z_start  = -506
# z_finish = -500

# tile coordinates URL conversion:
# https://github.com/webbukkit/DynmapCore/blob/master/src/main/java/org/dynmap/storage/filetree/FileTreeMapStorage.java
# build format:
# baseURI = map.getPrefix() + var.variantSuffix + "/"+
#           (x >> 5) + "_" + (y >> 5) + "/" + x + "_" + y;

# outermost tiles:
# tiles/world/flat/41_41/1328_1328.png
# tiles/world/flat/-42_-42/-1329_-1329.png

def download_tile(self,
                  host: str,
                  x: int, z: int
                  ) -> None:

    url = f'{host}/tiles/world/flat/-22_-16/{x}_{z}.png'
    path = f'tiles-download-py/{x}_{z}.png'

    response = requests.get(url, stream=True)

    if response.status_code != 200:
        raide RuntimeError('Response not OK')
        
    with open(path, 'wb') as target_file:
        for data_chunk in response:
            target_file.write(data_chunk)

def download_grid(self,
                  host: str,
                  x_start: int, x_finish: int,
                  z_start: int, z_finish: int
                  ) -> None:

    print("downloading town tile grid")
    for x in range(x_start, x_finish + 1):
        print('------------------------------------------')
        print(f'iteration for x = {x}')

        for z in range(z_start, z_finish + 1):
            print(f'    instance z = {z}')
            print(f'        -22_-16/{x}_{z}.png')

            self.download_tile(host, x, z)
