# :fzf-tab:complete:(\\|*/|)flatpak:
case $group in
argument)
  flatpak $word --help
  ;;
esac
