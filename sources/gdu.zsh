# :fzf-tab:complete:(\\|*/|)gdu:argument-rest
  [ -d $realpath ] && gdu -n $realpath || grc --colour=on du -sh $realpath
