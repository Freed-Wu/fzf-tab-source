# :fzf-tab:complete:(\\|*/|)cowsay:
case $group in
  'cow file')
    cowsay -f $word hello
    ;;
esac
