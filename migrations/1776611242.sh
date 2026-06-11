echo "Install socat so we can reactivate internal display when external display is removed"

erch-pkg-add socat
uwsm-app -- erch-hyprland-monitor-watch &
