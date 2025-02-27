# :fzf-tab:complete:(\\|*/|)toolbox:
case $group in
  completions)
    toolbox help $word | bat -plman
    ;;
esac
