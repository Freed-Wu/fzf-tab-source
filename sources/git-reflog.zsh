# :fzf-tab:complete:git-reflog(|-*):argument-1
case $group in
command)
  git reflog --color=always | eval $(git config --global pager.reflog || echo less)
  ;;
reference)
  git reflog --color=always | eval $(git config --global pager.reflog || echo less)
  ;;
esac
