#!/usr/bin/env python3

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

from functools import reduce
import os
import os.path
from string import digits, ascii_lowercase
import sys

DIGITS_IN_DATE: int = 14
LEGAL_CHARACTERS: set[str] = set(ascii_lowercase).union(set(digits)).union({'-'})
LEGAL_CHARACTERS_EXT: set[str] = LEGAL_CHARACTERS.union({'.'})
QUOTES_COUNT: int = 2

def formatter_for_mapping_item(max_length: int) -> str:
    """Format mapping item"""
    return '{} : {:<' + str(max_length + QUOTES_COUNT) + '} -> "{}"'

def rename_and_print(mapping: list[tuple[str, str]],
                     formatter: str,
                     dry_run: bool = False
                     ) -> None:
    """Rename file and print mapping"""

    for old_filename, new_filename in mapping:
        if new_filename == old_filename:
            if dry_run:
                print(formatter.format('Unchanged', '', new_filename))
        else:
            if not dry_run:
                os.rename(old_filename, new_filename)
            intro: str = 'Renamed  ' if not dry_run else 'Mapping  '
            old_filename = f'"{old_filename}"'
            print(formatter.format(intro, old_filename, new_filename))

def validate_legal_characters(value: str, legal_character_set: set[str]) -> None:
    """Check that string only contains the legal characters"""

    value_set: set[str] = set(value)

    if not value_set.issubset(legal_character_set):
        diff: set[str] = value_set - legal_character_set
        print(f'Illegal character(s) in "{value}": {diff}')
        exit()

def validate_mapping(mapping: list[tuple[str, str]]) -> None:
    """Validate legal characters in mapping"""

    for _, new_filename in mapping:
        name, ext = os.path.splitext(new_filename)
        validate_legal_characters(name, LEGAL_CHARACTERS)
        validate_legal_characters(ext, LEGAL_CHARACTERS_EXT)

def create_mapping(filename: str) -> tuple[str, str]:
    """Create mapping for 'phone' template"""

    return filename, filename

def update_mapping_dateblock(filename_tuple: tuple[str, str]) -> tuple[str, str]:
    """Create mapping for 'phone' template"""

    old_filename, filename = filename_tuple
    name, ext = os.path.splitext(filename)

    year: str = ''
    month: str = ''
    day: str = ''

    hours_and_mins: str = ''
    secs: str = ''

    comments: str = ''

    found_digits: int = 0
    for character in list(name):
        if found_digits >= DIGITS_IN_DATE:
            comments += character
            continue

        if character not in digits:
            if character == '-':
                continue
            print(f'Illegal character in date/time section of "{old_filename}": "{character}"')
            exit()

        match found_digits:
            case 0 | 1 | 2 | 3:
                year += character
            case 4 | 5:
                month += character
            case 6 | 7:
                day += character
            case 8 | 9 | 10 | 11:
                hours_and_mins += character
            case 12 | 13:
                secs += character
            case _:
                print(f'Error: Overrun found digits count: "{found_digits}"')
                exit()

        found_digits += 1

    if found_digits != DIGITS_IN_DATE:
        print(f'Too few digits in "{old_filename}"')
        exit()

    comments = comments.lstrip('-')
    if len(comments) > 0:
        comments = f'-{comments}'

    new_filename: str = f'{year}-{month}-{day}-{hours_and_mins}-{secs}{comments}{ext}'

    return old_filename, new_filename

def update_mapping_normalize(filename_tuple: tuple[str, str]) -> tuple[str, str]:
    """Create mapping for 'phone' template"""

    old_filename, filename = filename_tuple
    name, ext = os.path.splitext(filename)

    new_name: str = (
        name
        .lower()
        .replace(' ', '-')
        .replace('_', '-')
        .replace('.', '-')
    )

    new_ext: str = ext.lower()

    new_filename: str = f'{new_name}{new_ext}'

    return old_filename, new_filename

def main():
    """Main"""

    arguments: list[str] = sys.argv[1:]
    if not arguments:
        print('No arguments provided!')
        exit()

    if len(arguments) > 1:
        print('Too many arguments!')
        exit()

    filenames: list[str] = list(sorted(os.listdir()))
    max_length: int = reduce(max, map(lambda x: len(x), filenames))
    formatter: str = formatter_for_mapping_item(max_length)

    template: str = arguments[0]
    mapping: list[tuple[str, str]] = list(map(create_mapping, filenames))
    mapping: list[tuple[str, str]] = list(map(update_mapping_normalize, mapping))
    match template:
        case 'dateblock' | 'date':
            mapping: list[tuple[str, str]] = list(map(update_mapping_dateblock, mapping))
        case 'normalize' | 'normal' | 'norm':
            pass  # this is the default template
        case _:
            print(f'Invalid template: {template}')
            exit()

    to_be_renamed_count: int = sum(map(lambda x: 1 if x[0] != x[1] else 0, mapping))
    if not to_be_renamed_count:
        print()
        print('Nothing has to be renamed.')
        exit()

    validate_mapping(mapping)

    print()
    rename_and_print(mapping, formatter, dry_run=True)

    print()
    confirmation: str = input('Run batch renaming? (yes/No) ')

    print()

    if confirmation.lower() != 'yes':
        print('Aborted. Nothing was renamed.')
        exit()

    rename_and_print(mapping, formatter, dry_run=False)

if __name__ == '__main__':
    main()
