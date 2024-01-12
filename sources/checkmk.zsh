# :fzf-tab:complete:(\\|*/|)checkmk:
[[ -f $realpath ]] && checkmk $realpath | bat -lc ||
  less $realpath
