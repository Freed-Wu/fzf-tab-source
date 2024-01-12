# :fzf-tab:complete:git-checkout:argument-rest
case $group in
'modified file')
  git diff $word | eval $(git config --global pager.diff || echo less)
  ;;
'recent commit object name')
  git log --color=always | eval $(git config --global pager.log || echo less) | eval $(git config --global pager.diff || echo less)
  ;;
*)
  git log --color=always | eval $(git config --global pager.log || echo less)
  ;;
esac
