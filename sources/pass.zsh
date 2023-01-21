# :fzf-tab:complete:(\\|*/|)pass:*
case $group in
passwords)
  pass ls $word
  ;;
pass)
  pass help $word
  ;;
esac
