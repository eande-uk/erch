echo "Move erch Package Repository after Arch core/extra/multilib and remove AUR"

erch-refresh-pacman
sudo pacman -Syu --noconfirm
