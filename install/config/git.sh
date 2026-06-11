# Set identification from install inputs
if [[ -n ${ERCH_USER_NAME//[[:space:]]/} ]]; then
  git config --global user.name "$ERCH_USER_NAME"
fi

if [[ -n ${ERCH_USER_EMAIL//[[:space:]]/} ]]; then
  git config --global user.email "$ERCH_USER_EMAIL"
fi
