# Copy over erch configs
mkdir -p ~/.config
cp -R ~/.local/share/erch/config/* ~/.config/

# Use default bashrc from erch
cp ~/.local/share/erch/default/bashrc ~/.bashrc
