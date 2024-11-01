#!/usr/bin/env python3

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

import os
import os.path
import string
import sys

DIGIT_SET: set[str] = set(string.digits)

def create_mapping_phone(filename: str) -> tuple[str, str]:
    """Create mapping for 'phone' template"""

    name, ext = os.path.splitext(filename)

    components: list[str] = name.split('_')
    iteration: str = ""
    if len(components) == 1:
        print(f'Invalid format: no underscore - "{filename}"')
        exit()
    elif len(components) == 2:
        pass
    elif len(components) == 3:
        iteration = '-{}'.format(components[2])
    else:
        print(f'Invalid format: "{filename}"')
        exit()

    date = components[0]
    date_set: set[str] = set(date)
    time = components[1]
    time_set: set[str] = set(time)
    if len(date) != 8:
        print(f'Invalid date length: "{filename}"')
        exit()
    if not date_set.issubset(DIGIT_SET):
        diff: set[str] = date_set - DIGIT_SET
        print(f'Invalid date character in "{filename}": "{diff}"')
        exit()
    if len(time) != 6:
        print(f'Invalid time length: "{filename}"')
        exit()
    if not time_set.issubset(DIGIT_SET):
        diff: set[str] = time_set - DIGIT_SET
        print(f'Invalid time character in "{filename}": "{diff}"')
        exit()

    year: str = date[0:4]
    month: str = date[4:6]
    day: str = date[6:8]

    hours_and_mins: str = time[0:4]
    secs: str = time[4:6]

    new_filename: str = f'{year}-{month}-{day}-{hours_and_mins}-{secs}{iteration}{ext}'

    return filename, new_filename

def main():
    """Main"""

    arguments: list[str] = sys.argv[1:]
    if not arguments:
        print('No arguments provided!')
        exit()

    filenames: list[str] = list(sorted(os.listdir()))

    command: str = arguments[0]
    match command:
        case 'phone':
            mapping: list[tuple[str, str]] = list(map(create_mapping_phone, filenames))
        case _:
            print(f'Invalid command: {command}')
            exit()

    for old_filename, new_filename in mapping:
        print(f'Renaming: "{old_filename}" -> "{new_filename}"')
        os.rename(old_filename, new_filename)

if __name__ == '__main__':
    main()
