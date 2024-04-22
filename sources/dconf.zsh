# :fzf-tab:complete:(\\|*/|)dconf(|-help):
case $group in
  command)
    dconf help $word | bat -lhelp
    ;;
esac
