echo "Replace buggy native Zoom client with webapp"

if erch-pkg-present zoom; then
  erch-pkg-drop zoom
  erch-webapp-install "Zoom" https://app.zoom.us/wc/home https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/zoom.png
fi
