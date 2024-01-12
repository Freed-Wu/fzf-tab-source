# :fzf-tab:complete:(\\|*/|)pygmentize:*
case $group in
L)
  pygmentize -L $word | bat -lrst
  ;;
*)
  [[ -f ${realpath#--*=} ]] && pygmentize ${realpath#--*=} || less ${realpath#--*=}
  ;;
esac
