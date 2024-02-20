# :fzf-tab:complete:(\\|*/|)vimpager:
[[ -f $realpath ]] && vimpager $realpath || less $realpath
