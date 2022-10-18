# :fzf-tab:complete:(\\|*/|)journalctl:values
case $group in
  'boot '*) journalctl -b $word | bat --color=always -pllog;;
  '/dev files') journalctl -b /dev/$word | bat --color=always -pllog;;
  commands) journalctl $word | bat --color=always -pllog;;
esac
