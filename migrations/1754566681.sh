echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/erch/themes/osaka-jade ]]; then
  rm -rf ~/.config/erch/themes/osaka-jade
  git -C ~/.local/share/erch checkout -f themes/osaka-jade
  ln -nfs ~/.local/share/erch/themes/osaka-jade ~/.config/erch/themes/osaka-jade
fi
