# :fzf-tab:complete:git-checkout:argument-rest
case $group in
'modified file')
  git diff $realpath
  ;;
'recent commit object name')
  git diff --color=always $word
  ;;
*)
  git log --color=always $realpath
  ;;
esac
