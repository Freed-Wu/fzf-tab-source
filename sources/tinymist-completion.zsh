# :fzf-tab:complete:(\\|*/|)tinymist-command-completion:argument-1
case $group in
shell)
  tinymist completion $word | bat -pl$word 2>/dev/null ||
    tinymist completion $word
  ;;
esac
