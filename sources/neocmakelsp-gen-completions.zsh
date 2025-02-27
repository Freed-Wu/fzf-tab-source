# :fzf-tab:complete:(\\|*/|)neocmakelsp-command-gen-completion:argument-1
case $group in
shell)
  neocmakelsp gen-completion $word | bat -pl$word 2>/dev/null ||
    neocmakelsp gen-completion $word
  ;;
esac
