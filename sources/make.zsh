# :fzf-tab:complete:(\\|*/|)(g|b|d|p|freebsd-|)make:
case $group in
'make target')
  make -n $word | bat -lsh
  ;;
'make variable')
  make -pq | rg -Ns "^$word = " | bat -lsh
  ;;
file)
  less ${realpath#--*=}
  ;;
esac
