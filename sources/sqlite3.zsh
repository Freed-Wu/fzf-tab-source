# :fzf-tab:complete:(\\|*/|)sqlite3:argument-1
[[ -f $realpath ]] &&
  yes .q | sqlite3 $realpath | bat -lsql ||
  less $realpath
