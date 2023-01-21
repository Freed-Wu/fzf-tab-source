# :fzf-tab:complete:(\\|*/|)kitty:
case $group in
'external command')
  less =$word
  ;;
'%BEntry points%b')
  kitty $word --help | bat --color=always -plhelp
  ;;
esac
