# :fzf-tab:complete:(\\|*/|)pod2html:
[[ -f $realpath ]] &&
  pod2html $realpath | bat --color=always -plhtml ||
  less $realpath
