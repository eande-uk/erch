source $ERCH_INSTALL/preflight/guard.sh
source $ERCH_INSTALL/preflight/begin.sh
run_logged $ERCH_INSTALL/preflight/show-env.sh
run_logged $ERCH_INSTALL/preflight/pacman.sh
run_logged $ERCH_INSTALL/preflight/migrations.sh
run_logged $ERCH_INSTALL/preflight/first-run-mode.sh
run_logged $ERCH_INSTALL/preflight/disable-mkinitcpio.sh
