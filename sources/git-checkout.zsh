# :fzf-tab:complete:git-checkout:argument-rest
case $group in
'modified file')
  git diff $word | delta
  ;;
'recent commit object name')
  git log --color=always $word | emojify | delta
  ;;
*)
  git log --color=always $word | emojify
  ;;
esac
