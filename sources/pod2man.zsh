# :fzf-tab:complete:(\\|*/|)pod2man:
[[ -f $realpath ]] &&
  pod2man $realpath | bat --color=always -plnroff ||
  less $realpath
