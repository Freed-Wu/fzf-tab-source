# :fzf-tab:complete:(\\|*/|)gsettings(|-help):
case $group in
  command)
    gsettings help $word | bat -lhelp
    ;;
esac
