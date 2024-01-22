# :fzf-tab:complete:(\\|*/|)ruff(|ruff-command-help):argument-1
case $group in
'ruff commands'|'ruff help commands')
  ruff help $word | bat -plhelp
  ;;
esac
