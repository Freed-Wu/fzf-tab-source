# :fzf-tab:complete:(\\|*/|)ldd:argument-rest
[[ -f $realpath ]] && ldd $realpath || less $realpath
