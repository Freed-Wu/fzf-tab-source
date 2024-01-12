# :fzf-tab:complete:(\\|*/|)help2man:
[[ -f $realpath ]] &&
  help2man $realpath | man --local-file - | bat -lman ||
  less $realpath
