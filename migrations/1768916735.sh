echo "Fix microphone gain and audio mixing on Asus ROG laptops"

source "$ERCH_PATH/install/config/hardware/asus/fix-mic.sh"
source "$ERCH_PATH/install/config/hardware/asus/fix-audio-mixer.sh"

if erch-hw-asus-rog; then
  erch-restart-pipewire
fi
