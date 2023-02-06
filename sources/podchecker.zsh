# :fzf-tab:complete:(\\|*/|)podchecker:
[[ -f $realpath ]] &&
  podchecker $realpath ||
  less $realpath
