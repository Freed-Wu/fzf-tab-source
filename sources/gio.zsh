# :fzf-tab:complete:(\\|*/|)gio:argument-1
[[ -f $realpath ]] && less $realpath ||
  gio help $word 2>&1 | bat -lhelp
