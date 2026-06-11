echo "Change to erch-nvim package"
erch-pkg-drop erch-lazyvim
erch-pkg-add erch-nvim

# Will trigger to overwrite configs or not to pickup new hot-reload themes
erch-nvim-setup
