# :fzf-tab:complete:(\\|*/|)xxd:
[[ $group == file && -f $realpath ]] && xxd $realpath || less $realpath
