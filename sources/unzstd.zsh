# :fzf-tab:complete:(\\|*/|)unzstd:
[[ -f $realpath ]] && unzstd -c $realpath || less $realpath
