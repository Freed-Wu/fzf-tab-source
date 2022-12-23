# :fzf-tab:complete:(\\|)run-help:argument-rest
# NOTE: `run-help` is an alias of `man` in zsh by default,
# which means `run-help` will use `man`'s completion.
# you must add the following code to your `~/.zshrc` to enable and unalias it:
#
# ```zsh
# autoload -Uz run-help && (($+aliases[run-help])) && unalias run-help
# ```
#
# true `run-help` can display the help of zsh built-in commands
# while `man` can display the help of external commands
run-help $word
