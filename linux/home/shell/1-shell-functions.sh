# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# ---------------------------------------------------------------------------- #
# includes for shell: functions

# ---------------------------------------------------------------------------- #
# websearch

function clew {
    local searchstring item
    for item in "$@"
    do
        searchstring+="+$item"
    done
    searchstring="${searchstring#+}"
    w3m "https://clew.se/search?q=$searchstring"
}

# ---------------------------------------------------------------------------- #
