# :fzf-tab:complete:(\\|*/|)ruff-command-generate-shell-completion:argument-1
case $group in
shell)
  ruff generate-shell-completion $word | bat -pl$word 2>/dev/null ||
    ruff generate-shell-completion $word
  ;;
esac
