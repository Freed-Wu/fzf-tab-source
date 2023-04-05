# :fzf-tab:complete:(\\|*/|)ninja:argument-rest
case $group in
targets)
  ninja -n $word
  ;;
esac
