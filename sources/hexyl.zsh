# :fzf-tab:complete:(\\|*/|)hexyl:
[[ $group == file && -f $realpath ]] && hexyl $realpath || less $realpath
