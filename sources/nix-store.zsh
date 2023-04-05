# :fzf-tab:complete:(\\|*/|)nix-store:*
case $group in
'Store Paths')
  nix-store -q --tree $realpath
  ;;
esac
