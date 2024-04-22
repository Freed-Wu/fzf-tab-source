# :fzf-tab:complete:(\\|*/|)dconf-dump:
case $group in
  directory)
    # https://github.com/Aloxaf/fzf-tab/issues/325
    # no real toml
    dconf dump $ctxt[hpre]$word | bat -ltoml
    ;;
esac
