# First-run setup scripts, sourced by erch-first-run on first login
# after a fresh install. Execution order matters.

run_logged "$ERCH_INSTALL/first-run/battery-monitor.sh"
run_logged "$ERCH_INSTALL/first-run/recover-internal-monitor.sh"
run_logged "$ERCH_INSTALL/first-run/cleanup-reboot-sudoers.sh"
run_logged "$ERCH_INSTALL/first-run/firewall.sh"
run_logged "$ERCH_INSTALL/first-run/dns-resolver.sh"
run_logged "$ERCH_INSTALL/first-run/gnome-theme.sh"
run_logged "$ERCH_INSTALL/first-run/swayosd.sh"
run_logged "$ERCH_INSTALL/first-run/gtk-primary-paste.sh"
run_logged "$ERCH_INSTALL/first-run/elephant.sh"
erch-hook-install post-update "$ERCH_INSTALL/first-run/install-voxtype.hook"
sudo rm -f /etc/sudoers.d/first-run

run_logged "$ERCH_INSTALL/first-run/welcome.sh"
run_logged "$ERCH_INSTALL/first-run/wifi.sh"
