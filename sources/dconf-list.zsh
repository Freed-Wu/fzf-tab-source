# :fzf-tab:complete:(\\|*/|)dconf-list:
case $group in
  directory)
    # https://github.com/Aloxaf/fzf-tab/issues/325
    dconf list $ctxt[hpre]$word
    ;;
esac
