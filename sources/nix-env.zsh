# :fzf-tab:complete:(\\|*/|)nix-env:*
(($+commands[jq])) && view_json() {
    ${src:h:h}/bin/nix-env.jq | mdcat
  } || view_json() {
      bat -ljson
    }

case $group in
'Attribute path')
  nix-env -qa --out-path --json --meta -A $ctxt[hpre]$word | view_json
  ;;
'Installed package'*)
  nix-env -q --out-path --json --meta $word | view_json
  ;;
'Store path to package')
  less $realpath
  ;;
esac
