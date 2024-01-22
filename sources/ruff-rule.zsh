# :fzf-tab:complete:(\\|*/|)ruff-command-rule:argument-1
case $group in
'rule -- Rule to explain')
  ruff rule $word | mdcat
  ;;
esac
