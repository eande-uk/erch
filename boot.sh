#!/bin/bash

set -e

# Set install mode to online since boot.sh is used for curl installations
export ERCH_ONLINE_INSTALL=true
ansi_art='
                             █████
                            ░░███
  ██████  ████████   ██████  ░███████
 ███░░███░░███░░███ ███░░███ ░███░░███
░███████  ░███ ░░░ ░███ ░░░  ░███ ░███
░███░░░   ░███     ░███  ███ ░███ ░███
░░██████  █████    ░░██████  ████ █████
 ░░░░░░  ░░░░░      ░░░░░░  ░░░░ ░░░░░
'

clear
echo -e "\n$ansi_art\n"

# Use custom branch if instructed, otherwise default to master
ERCH_REF="${ERCH_REF:-master}"

# Set mirror based on branch
if [[ $ERCH_REF == "dev" ]]; then
  export ERCH_MIRROR=edge
  echo 'Server = https://mirror.erch.eande.uk/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
elif [[ $ERCH_REF == "rc" ]]; then
  export ERCH_MIRROR=rc
  echo 'Server = https://rc-mirror.erch.eande.uk/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
else
  export ERCH_MIRROR=stable
  echo 'Server = https://stable-mirror.erch.eande.uk/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
fi

sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified, otherwise default to eande-uk/erch
ERCH_REPO="${ERCH_REPO:-eande-uk/erch}"

echo -e "\nCloning erch from: https://github.com/${ERCH_REPO}.git"
echo -e "\e[32mUsing branch: $ERCH_REF\e[0m"
rm -rf ~/.local/share/erch/
git clone --branch "$ERCH_REF" "https://github.com/${ERCH_REPO}.git" ~/.local/share/erch >/dev/null

echo -e "\nInstallation starting..."
source ~/.local/share/erch/install.sh
