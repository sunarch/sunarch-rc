#!/usr/bin/env python3

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

import os
import os.path
import string
import sys

DIGIT_SET: set[str] = set(string.digits)

def validate_digits_only(value: str, type_comment: str, location_comment: str):
    """Check that string only contains digits"""

    value_set: set[str] = set(value)

    if not value_set.issubset(DIGIT_SET):
        diff: set[str] = value_set - DIGIT_SET
        print(f'Invalid {type_comment} character in "{location_comment}": "{diff}"')
        exit()

def validate_length(correct: int, value: str, type_comment: str, location_comment: str):
    """Check that string is correct length"""

    if len(value) != correct:
        print(f'Invalid {type_comment} length in "{location_comment}"')
        exit()

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
    validate_length(8, date, 'date', filename)
    validate_digits_only(date, 'date', filename)

    time = components[1]
    validate_length(6, time, 'time', filename)
    validate_digits_only(time, 'time', filename)

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
