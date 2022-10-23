# :fzf-tab:complete:(\\|*/|)help2man:
[[ -f $realpath ]] \
  && help2man $realpath | man --local-file - | bat --color=always -plman \
  || less $realpath
