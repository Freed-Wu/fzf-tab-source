# :fzf-tab:complete:(\\|*/|)gio:
[[ -f $realpath ]] && less $realpath ||
  gio help $word 2>&1 | bat -lhelp
