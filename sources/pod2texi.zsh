# :fzf-tab:complete:(\\|*/|)pod2texi:
[[ -f $realpath ]] &&
  pod2texi $realpath ||
  less $realpath
