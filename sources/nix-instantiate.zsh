# :fzf-tab:complete:(\\|*/|)nix-instantiate:*
case $group in
(shortcuts|'Local file'))
  nix-instantiate --eval $word | bat -lnix
  ;;
esac
