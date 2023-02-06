# :fzf-tab:complete:(\\|*/|)md(cat|less):argument-rest
[[ -f $realpath ]] && mdcat $realpath || less $realpath
