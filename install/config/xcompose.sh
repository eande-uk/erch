# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
# Run erch-restart-xcompose to apply changes

# Include fast emoji access
include "%H/.local/share/erch/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$ERCH_USER_NAME"
<Multi_key> <space> <e> : "$ERCH_USER_EMAIL"
EOF
