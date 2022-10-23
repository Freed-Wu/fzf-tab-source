# :fzf-tab:complete:(\\|*/|)unlzma:argument-rest
[[ -f $realpath ]] && unlzma -c $realpath || less $realpath
