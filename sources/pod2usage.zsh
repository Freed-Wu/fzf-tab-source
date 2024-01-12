# :fzf-tab:complete:(\\|*/|)pod2usage:
[[ -f $realpath ]] &&
  pod2usage $realpath | bat -lhelp ||
  less $realpath
