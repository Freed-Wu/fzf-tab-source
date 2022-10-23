# :fzf-tab:complete:(\\|*/|)libreoffice:
[[ -f $realpath ]] && libreoffice --headless --cat $realpath || less $realpath
