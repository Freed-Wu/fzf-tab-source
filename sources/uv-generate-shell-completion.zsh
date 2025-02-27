# :fzf-tab:complete:(\\|*/|)uv-command-generate-shell-completion:argument-1
case $group in
shell)
  uv generate-shell-completion $word | bat -pl$word 2>/dev/null ||
    uv generate-shell-completion $word
  ;;
esac
