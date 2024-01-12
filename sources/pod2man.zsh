# :fzf-tab:complete:(\\|*/|)pod2man:
[[ -f $realpath ]] &&
  pod2man $realpath | bat -lnroff ||
  less $realpath
