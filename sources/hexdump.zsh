# :fzf-tab:complete:(\\|*/|)hexdump:argument-rest
[[ $group == file && -f $realpath ]] && hexdump $realpath || less $realpath
