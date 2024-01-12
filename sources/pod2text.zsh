# :fzf-tab:complete:(\\|*/|)pod2text:
[[ -f $realpath ]] &&
  pod2text $realpath | bat -lman ||
  less $realpath
