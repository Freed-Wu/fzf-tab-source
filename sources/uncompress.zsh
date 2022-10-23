# :fzf-tab:complete:(\\|*/|)uncompress:argument-rest
[[ -f $realpath ]] && uncompress -c $realpath || less $realpath
