# :fzf-tab:complete:(\\|*/|)snap:
case $group in
option)
  snap help $word | bat -lhelp
  ;;
argument)
  snap list $word 2>/dev/null
  ;;
esac
