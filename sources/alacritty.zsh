# :fzf-tab:complete:(\\|*/|)alacritty:argument-1
case $group in
'alacritty commands')
  alacritty help $word | bat --color=always -plhelp
  ;;
esac
