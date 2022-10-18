# :fzf-tab:complete:git-((push|pull):argument-1|fetch:argument-rest)
case $group in
  'local repository') less ${realpath#--*=};;
  remote) git remote show $word;;
  *host*) grc --colour=on ping -c1 $word;;
esac
