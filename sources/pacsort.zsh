# :fzf-tab:complete:(\\|*/|)pacsort:argument-rest
[[ -f $realpath ]] && pacsort $realpath | bat --color=always -plbash || less $realpath
