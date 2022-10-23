# :fzf-tab:complete:(\\|*/|)7z:
[[ -f $realpath ]] && 7z l $realpath || less $realpath
