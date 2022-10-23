# :fzf-tab:complete:(\\|)run-help:argument-rest
# Note run-help usually is an alias, remember:
#
# ```zsh
# (($+aliases[run-help]))
    && unalias run-help
# autoload -Uz run-help
# ```
run-help $word
