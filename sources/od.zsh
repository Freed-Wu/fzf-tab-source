# :fzf-tab:complete:(\\|*/|)od:argument-rest
[[ $group == file && -f $realpath ]] && od -Ax -tx1 $realpath || less $realpath
