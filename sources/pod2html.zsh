# :fzf-tab:complete:(\\|*/|)pod2html:
[[ -f $realpath ]] &&
  pod2html $realpath | bat -lhtml ||
  less $realpath
