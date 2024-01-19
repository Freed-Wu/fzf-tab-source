# :fzf-tab:complete:(\\|)zinit-*
case $group in
plugins)
  less ~/.local/share/zinit/plugins/$word/README*
  ;;
esac
