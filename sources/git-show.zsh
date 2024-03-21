# :fzf-tab:complete:git-show:argument-rest
case $group in
'cached file')
  less $realpath
  ;;
*)
  git show --color=always $word
  ;;
esac
