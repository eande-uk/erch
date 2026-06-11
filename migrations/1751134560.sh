echo "Add UWSM env"

export ERCH_PATH="$HOME/.local/share/erch"
export PATH="$ERCH_PATH/bin:$PATH"

mkdir -p "$HOME/.config/uwsm/"
cat <<EOF | tee "$HOME/.config/uwsm/env"
export ERCH_PATH=$HOME/.local/share/erch
export PATH=$ERCH_PATH/bin/:$PATH
EOF

# Ensure we have the latest repos and are ready to pull
erch-update-keyring
erch-refresh-pacman
sudo systemctl restart systemd-timesyncd
sudo pacman -Sy # Normally not advisable, but we'll do a full -Syu before finishing

mkdir -p ~/.local/state/erch/migrations
touch ~/.local/state/erch/migrations/1751134560.sh

# Remove old AUR packages to prevent a super lengthy build on old erch installs
erch-pkg-drop zoom qt5-remoteobjects wf-recorder wl-screenrec

# Get rid of old AUR packages
bash $ERCH_PATH/migrations/1756060611.sh
touch ~/.local/state/erch/migrations/1756060611.sh

bash erch-update-perform
