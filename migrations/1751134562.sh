echo "Ensure all indexes and packages are up to date"

erch-update-keyring
erch-refresh-pacman
sudo pacman -Syu --noconfirm
