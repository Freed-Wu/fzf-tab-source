# :fzf-tab:complete:(\\|*/|)(kill|ps):argument-rest --preview-window=down:3:wrap
[[ $group == 'process ID' ]] \
  && ps -p$word -wocmd --no-headers | bat --color=always -plsh
