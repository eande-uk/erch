echo "Migrate to proper packages for localsend and asdcontrol"

if erch-pkg-present localsend-bin; then
  erch-pkg-drop localsend-bin
  erch-pkg-add localsend
fi

if erch-pkg-present asdcontrol-git; then
  erch-pkg-drop asdcontrol-git
  erch-pkg-add asdcontrol
fi
