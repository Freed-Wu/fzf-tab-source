# :fzf-tab:complete:(\\|*/|)alacritty-command-msg:argument-1
case $group in
'alacritty msg commands')
  alacritty msg help $word | bat --color=always -plhelp
  ;;
esac
