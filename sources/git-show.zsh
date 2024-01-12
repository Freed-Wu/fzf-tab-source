# :fzf-tab:complete:git-show:argument-rest
case $group in
*head)
  git show --color=always $word | eval $(git config --global pager.diff || echo less) | eval $(git config --global pager.log || echo less)
  ;;
'cached file')
  less $realpath
  ;;
*)
  git show --color=always $word
  ;;
esac
