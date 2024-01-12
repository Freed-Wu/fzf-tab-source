# :fzf-tab:complete:git-reflog(|-*):argument-1
case $group in
command)
  git reflog --color=always
  ;;
reference)
  git reflog --color=always $word
  ;;
esac
