# :fzf-tab:complete:(\\|*/|)(g|b|d|p|freebsd-|)make:
case $group in
  'make target')
    make -n $word | bat --color=always -plsh
    ;;
  'make variable')
    make -pq | rg -Ns "^$word = " | bat --color=always -plsh
    ;;
  file)
    less ${realpath#--*=}
    ;;
esac
