# :fzf-tab:complete:(\\|*/|)pacsort:argument-rest
[[ -f $realpath ]] && pacsort $realpath | bat -lbash || less $realpath
