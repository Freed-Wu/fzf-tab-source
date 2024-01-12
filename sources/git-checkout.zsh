# :fzf-tab:complete:git-checkout:argument-rest
case $group in
'modified file')
  git diff $word
  ;;
'recent commit object name')
  git log --color=always $word | eval $(git config --global pager.diff || echo cat)
  ;;
*)
  git log --color=always $word
  ;;
esac
