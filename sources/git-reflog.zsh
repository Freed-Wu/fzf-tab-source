# :fzf-tab:complete:git-reflog(|-*):argument-1
case $group in
command)
  git reflog --color=always | emojify
  ;;
reference)
  git reflog --color=always $word | emojify
  ;;
esac
