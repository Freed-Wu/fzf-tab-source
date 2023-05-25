# :fzf-tab:complete:(\\|*/|)fq:
[[ -f $realpath ]] && fq -Cr . $realpath 2>/dev/null || less $realpath
