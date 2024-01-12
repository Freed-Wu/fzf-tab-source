# :fzf-tab:complete:(\\|*/|)journalctl:*
case $group in
'boot '*)
  journalctl -b $word | bat -llog
  ;;
'/dev files')
  journalctl -b /dev/$word | bat -llog
  ;;
commands)
  journalctl $word | bat -llog
  ;;
'possible values')
  journalctl -u $word | bat -llog
  ;;
esac
