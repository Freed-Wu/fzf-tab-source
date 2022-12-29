# :fzf-tab:complete:(\\|*/|)pygmentize:*
case $group in
  L)
    pygmentize -L $word | bat --color=always -plrst
    ;;
  *)
    [[ -f ${realpath#--*=} ]] && pygmentize ${realpath#--*=} || less ${realpath#--*=}
    ;;
esac
