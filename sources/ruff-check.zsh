# :fzf-tab:complete:(\\|*/|)ruff-command-check:argument-rest
[[ -f $realpath ]] && ruff check --show-fixes --show-source -e $realpath || less $realpath
