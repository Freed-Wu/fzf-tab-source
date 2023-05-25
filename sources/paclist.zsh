# :fzf-tab:complete:(\\|*/|)paclist:values
case $group in
repository)
  paclist $word
  ;;
esac
