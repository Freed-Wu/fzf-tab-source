# :fzf-tab:complete:(\\|*/|)neocmakelsp(|neocmakelsp-command-help):argument-1
case $group in
'neocmakelsp '(help |)'commands')
  neocmakelsp help $word | bat -plhelp
  ;;
esac
