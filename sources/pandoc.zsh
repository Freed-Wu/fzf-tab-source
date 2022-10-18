# :fzf-tab:complete:(\\|*/|)pandoc:argument-rest
[[ $group == file && -f $realpath ]] \
  && pandoc -tmarkdown $realpath | bat --color=always -plmarkdown \
  || less $realpath
