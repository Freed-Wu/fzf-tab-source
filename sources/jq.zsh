# :fzf-tab:complete:(\\|*/|)jq:argument-rest
[[ -f $realpath ]] && jq -Cr . $realpath 2>/dev/null || less $realpath
