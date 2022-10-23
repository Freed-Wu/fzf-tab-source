# :fzf-tab:complete:tmux:argument-rest
case $word in
  (show|set)(env|-environment))
    tmux ${word/set/show} -g | bat --color=always -plsh
    ;;
  (show|set)(-hook?|(-window)-option?|w|))
    tmux ${word/set/show} -g | bat --color=always -pltsv
    ;;
  (show|set)(msgs|-message?))
    tmux ${word/set/show} | bat --color=always -pllog
    ;;
  (show|set)(b|-buffer))
    tmux ${word/set/show}
    ;;
  (ls|list-)*)
    tmux $word
    ;;
esac
