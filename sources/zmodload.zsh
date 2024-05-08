# :fzf-tab:complete:(\\|)zmodload:argument-rest
case $group in
  'module file')
    zmodload -d $ctxt[hpre]$word
    ;;
esac
