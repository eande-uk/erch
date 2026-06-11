echo "Change erch-screenrecord to use gpu-screen-recorder"
erch-pkg-drop wf-recorder wl-screenrec

# Add slurp in case it hadn't been picked up from an old migration
erch-pkg-add slurp gpu-screen-recorder
