# :fzf-tab:complete:(\\|*/|)nix-env:*
case $group in
'Attribute path')
  nix-env -qa --out-path --json --meta -A $ctxt[hpre]$word |
    ${src:h:h}/bin/nix-env.jq | mdcat
  ;;
'Installed package'*)
  nix-env -q --out-path --json --meta $word | ${src:h:h}/bin/nix-env.jq | mdcat
  ;;
'Local file')
  less $realpath
  ;;
esac
