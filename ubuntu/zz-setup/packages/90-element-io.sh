#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# Element.io:

# https://element.io
# https://element.io/download

sudo apt-get install -y wget apt-transport-https
‍
sudo wget -O /usr/share/keyrings/element-io-archive-keyring.gpg https://packages.element.io/debian/element-io-archive-keyring.gpg
‍
echo "deb [signed-by=/usr/share/keyrings/element-io-archive-keyring.gpg] https://packages.element.io/debian/ default main" | sudo tee /etc/apt/sources.list.d/element-io.list

sudo apt-get update

sudo apt-get install element-desktop # A feature-rich client for Matrix.org

# ---------------------------------------------------------------------------- #
