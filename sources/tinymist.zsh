# :fzf-tab:complete:(\\|*/|)tinymist(|-command-help):argument-1
case $group in
  'tinymist '(help |)'commands')
    tinymist help $word | bat -plhelp
  ;;
esac
