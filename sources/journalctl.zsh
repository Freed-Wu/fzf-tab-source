# :fzf-tab:complete:(\\|*/|)journalctl:*
case $group in
'boot '*)
  journalctl -b $word | bat --color=always -pllog
  ;;
'/dev files')
  journalctl -b /dev/$word | bat --color=always -pllog
  ;;
commands)
  journalctl $word | bat --color=always -pllog
  ;;
'possible values')
  journalctl -u $word | bat --color=always -pllog
  ;;
esac
