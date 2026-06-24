echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/erch/themes/osaka-jade ]]; then
  rm -rf ~/.config/erch/themes/osaka-jade
  git -C $ERCH_PATH checkout -f themes/osaka-jade
  ln -nfs $ERCH_PATH/themes/osaka-jade ~/.config/erch/themes/osaka-jade
fi
