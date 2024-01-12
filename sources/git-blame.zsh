# :fzf-tab:complete:git-blame:argument-2
case $group in
'cached file')
  git blame $word | eval $(git config --global pager.blame || echo less)
  ;;
esac
