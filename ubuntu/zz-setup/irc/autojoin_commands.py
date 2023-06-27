#!/usr/bin/env python3
# -*- coding: utf-8, vim: expandtab:ts=4 -*-

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

from distutils.util import strtobool

NETWORKS: list[tuple[str, str]] = [
    ('libera', 'libera'),
    ('oftc', 'oftc'),
    ('ircnet', 'ircnet'),
    ('ircnet_cloak', 'ircnet')
]


def create_autojoin_command(server_name: str, filename_slug: str) -> None:
    filename = f'irc-channels-{filename_slug}.csv'

    with open(filename, 'r', encoding='UTF-8') as fh_chanlist:
        data = fh_chanlist.readlines()
    
    data = map(lambda x: x.split(','), data)
    data = map(lambda x: list(map(lambda y: y.strip(), x)), data)
    data = map(lambda x: [x[0], bool(strtobool(x[1])), x[2]], data)
    data_filtered = filter(lambda x: x[1] == True, data)
    channel_list = map(lambda x: x[0], data_filtered)
    channel_list = ','.join(channel_list)

    return f'/set irc.server.{server_name}.autojoin "{channel_list}"'


def main() -> None:
    for server_name, filename_slug in NETWORKS:
        print()
        print(server_name.upper())
        print('-' * len(server_name))
        print(create_autojoin_command(server_name, filename_slug))
    print()


if __name__ == '__main__':
    main()


