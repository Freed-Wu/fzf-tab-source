# :fzf-tab:complete:git-show:argument-rest
case $group in
  'commit tag') git show --color=always $word;;
  *) git show --color=always $word | delta;;
esac
