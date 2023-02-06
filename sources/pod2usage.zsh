# :fzf-tab:complete:(\\|*/|)pod2usage:
[[ -f $realpath ]] &&
  pod2usage $realpath | bat --color=always -plhelp ||
  less $realpath
