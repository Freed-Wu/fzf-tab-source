# :fzf-tab:complete:(\\|*/|)chafa:
[[ -f $realpath ]] && chafa -f symbols $realpath || less $realpath
