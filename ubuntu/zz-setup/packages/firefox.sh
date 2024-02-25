#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# Mozilla Firefox:

# https://support.mozilla.org/en-US/kb/install-firefox-linux#w_install-firefox-deb-package-for-debian-based-distributions

sudo snap remove firefox

# Import the Mozilla APT repository signing key:
sudo apt-get install wget
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null

# The fingerprint should be 35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3. You may check it with the following command:
gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); if($0 == "35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3") print "\nThe key fingerprint matches ("$0").\n"; else print "\nVerification failed: the fingerprint ("$0") does not match the expected one.\n"}'

# Next, add the Mozilla APT repository to your sources list:
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null

# Configure APT to prioritize packages from the Mozilla repository
echo '
Package: firefox*
Pin: origin packages.mozilla.org
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla

# Update your package list and install the Firefox .deb package:

sudo apt-get update

sudo apt-get install firefox # Safe and easy web browser from Mozilla

# ---------------------------------------------------------------------------- #
