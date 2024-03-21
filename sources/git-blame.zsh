# :fzf-tab:complete:git-blame:argument-2
case $group in
'cached file')
  [[ -f $realpath ]] && git blame $realpath || less $realpath
  ;;
esac
