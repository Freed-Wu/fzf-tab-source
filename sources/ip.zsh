# :fzf-tab:complete:(\\|*/|)ip:
case $group in
'ip command')
  grc --colour=on ip $word
  ;;
*' command')
  ip ${group%% *} help 2>&1 | bat --color=always -plhelp
  ;;
esac
