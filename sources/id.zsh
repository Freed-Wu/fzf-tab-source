# :fzf-tab:complete:(\\|*/|)id:options
case $word in
--*)
  id -n $word
  ;;
-*)
  id $word
  ;;
esac
