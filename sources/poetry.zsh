# :fzf-tab:complete:(\\|*/|)poetry:
case $group in
command)
  poetry $word --help | bat -lhelp
  ;;
esac
