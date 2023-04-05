# :fzf-tab:complete:(\\|*/|)checkmk:
[[ -f $realpath ]] && checkmk $realpath | bat --color=always -plc ||
  less $realpath
