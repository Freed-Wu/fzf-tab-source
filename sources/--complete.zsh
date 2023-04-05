# :fzf-tab:complete:*
# `${realpath#--*=}` aims to handle `--long-option=/the/path/of/a/file`
less ${realpath#-*=}
