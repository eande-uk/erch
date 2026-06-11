echo "Add Logout option to system menu"

erch-refresh-sddm

if [[ -f /etc/sddm.conf.d/autologin.conf ]]; then
  sudo sed -i 's/^Current=.*/Current=erch/' /etc/sddm.conf.d/autologin.conf
fi
