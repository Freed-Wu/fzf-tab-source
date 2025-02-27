# :fzf-tab:complete:(\\|*/|)ruff(|ruff-command-help):argument-1
case $group in
'ruff '(help |)'commands')
  ruff help $word | bat -plhelp
  ;;
esac
