# :fzf-tab:complete:(\\|*/|)pandoc:argument-rest
[[ $group == file && -f $realpath ]] &&
  pandoc -tmarkdown $realpath | bat -lmarkdown ||
  less $realpath
