#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# Docker:

# https://www.docker.com
# https://docs.docker.com/desktop/install/linux-install/
# https://docs.docker.com/desktop/install/ubuntu/

# Prerequisites:
sudo apt-get install gnome-shell-extension-appindicator

# For non-Gnome Desktop environments, gnome-terminal must be installed:
sudo apt-get install gnome-terminal

# Uninstall the tech preview or beta version of Docker Desktop for Linux. Run:
sudo apt-get remove docker-desktop

# For a complete cleanup, remove configuration and data files at $HOME/.docker/desktop, the symlink at /usr/local/bin/com.docker.cli, and purge the remaining systemd service files.

rm -r $HOME/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt-get purge docker-desktop

# Install Docker Desktop:

# 1. Set up Docker’s package repository.
# https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository

# 1/a. Update the apt package index and install packages to allow apt to use a repository over HTTPS:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg

# 1/b. Add Docker’s official GPG key:
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# 1/c. Use the following command to set up the repository:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$UBUNTU_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# If you use an Ubuntu derivative distro, such as Linux Mint, you may need to use UBUNTU_CODENAME instead of VERSION_CODENAME.

# 2. Download latest DEB package.
# https://desktop.docker.com/linux/main/amd64/docker-desktop-<version>-<arch>.deb

# 3. Install the package with apt as follows:

sudo apt-get update
#sudo apt-get install ./docker-desktop-<version>-<arch>.deb

# At the end of the installation process, apt displays an error due to installing a downloaded package. You can ignore this error message.
# N: Download is performed unsandboxed as root, as file '/home/user/Downloads/docker-desktop.deb' couldn't be accessed by user '_apt'. - pkgAcquire::Run (13: Permission denied)

# ------------------------------------ #
# Launch Docker Desktop:
#systemctl --user start docker-desktop

# ---------------------------------------------------------------------------- #
