# :fzf-tab:complete:(\\|*/|)uv:argument-1
uv help $word | bat -lhelp
case $group in
  'uv commands')
    uv help $word | bat -lhelp
    ;;
esac
