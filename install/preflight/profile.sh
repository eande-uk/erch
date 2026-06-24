echo ""
echo "┌─────────────────────────────────────────────┐"
echo "│  Select system profile                      │"
echo "│                                             │"
echo "│  Packages are grouped by use-case.          │"
echo "│  Common packages are always installed.      │"
echo "│                                             │"
echo "│  work   — Dev, office, AI, Docker           │"
echo "│  school — Education, writing, research      │"
echo "│  game   — Steam, gaming tools               │"
echo "│  all    — Everything above                  │"
echo "└─────────────────────────────────────────────┘"
echo ""

PS3="Profile: "
select profile in work school game all; do
  case $profile in
    work|school|game|all)
      export ERCH_PROFILE=$profile
      echo ""
      echo "  ✓ Profile: $profile"
      break
      ;;
    *)
      echo "  Invalid selection. Choose 1-4."
      ;;
  esac
done
