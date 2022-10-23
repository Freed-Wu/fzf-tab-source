# :fzf-tab:complete:(\\|*/|)troff:
[[ -f $realpath ]] && troff $realpath || less $realpath
