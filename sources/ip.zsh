# :fzf-tab:complete:(\\|*/|)ip:
case $group in
  'ip command')
    ip $word help 2>&1 | bat --color=always -plhelp
    ;;
esac
