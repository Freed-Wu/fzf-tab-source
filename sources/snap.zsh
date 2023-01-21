# :fzf-tab:complete:(\\|*/|)snap:
case $group in
option)
  snap help $word | bat --color=always -plhelp
  ;;
argument)
  snap list $word 2>/dev/null
  ;;
esac
