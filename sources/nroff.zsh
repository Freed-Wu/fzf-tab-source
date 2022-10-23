# :fzf-tab:complete:(\\|*/|)nroff:
[[ -f $realpath ]] && nroff $realpath || less $realpath
