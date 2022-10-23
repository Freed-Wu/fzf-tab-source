# :fzf-tab:complete:(\\|*/|)gunzip:argument-rest
[[ -f $realpath ]] && gunzip -c $realpath || less $realpath
