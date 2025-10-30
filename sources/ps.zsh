# :fzf-tab:complete:(\\|*/|)(kill|ps):argument-rest --preview-window=down:3:wrap
if [[ $OSTYPE == darwin* ]]; then
  alias -g -- --no-headers='| tail -n1'
fi
[[ $group == 'process ID' ]] && ps -p$word -wocommand --no-headers | bat -lsh
