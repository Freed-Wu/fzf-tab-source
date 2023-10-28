# :fzf-tab:complete:(\\|*/|)lsof:option-i-1
case $group in
  port)
    lsof -i :$word
    ;;
  *)
    lsof -i $word
    ;;
esac
