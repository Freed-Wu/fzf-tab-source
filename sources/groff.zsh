# :fzf-tab:complete:(\\|*/|)groff:argument-1
[[ -f $realpath ]] && groff $realpath -T html &>/dev/null | pandoc -tmarkdown -o- | mdcat ||
  less $realpath
