# :fzf-tab:complete:(\\|*/|)pod2text:
[[ -f $realpath ]] &&
  pod2text $realpath | bat --color=always -plman ||
  less $realpath
