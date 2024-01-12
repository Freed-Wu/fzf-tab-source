# :fzf-tab:complete:tmux:argument-rest
case $word in
(show|set)(env|-environment))
  tmux ${word/set/show} -g | bat -lsh
  ;;
(show|set)(-hook?|(-window)-option?|w|))
  tmux ${word/set/show} -g | bat -ltsv
  ;;
(show|set)(msgs|-message?))
  tmux ${word/set/show} | bat -llog
  ;;
(show|set)(b|-buffer))
  tmux ${word/set/show}
  ;;
(ls|list-)*)
  tmux $word
  ;;
esac
