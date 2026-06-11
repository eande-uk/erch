#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define erch locations
export ERCH_PATH="$HOME/.local/share/erch"
export ERCH_INSTALL="$ERCH_PATH/install"
export ERCH_INSTALL_LOG_FILE="/var/log/erch-install.log"
export PATH="$ERCH_PATH/bin:$PATH"

# Install
source "$ERCH_INSTALL/helpers/all.sh"
source "$ERCH_INSTALL/preflight/all.sh"
source "$ERCH_INSTALL/packaging/all.sh"
source "$ERCH_INSTALL/config/all.sh"
source "$ERCH_INSTALL/login/all.sh"
source "$ERCH_INSTALL/post-install/all.sh"
