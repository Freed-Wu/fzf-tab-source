# :fzf-tab:complete:(\\|*/|)nvimpager:*
case $group in
file)
  [[ -f $realpath ]] && nvimpager -c $realpath || less $realpath
  ;;
esac
