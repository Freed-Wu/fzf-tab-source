# :fzf-tab:complete:git-(add|restore):argument-rest
case $group in
"untracked file")
  less ${realpath#-*=}
  ;;
*)
  git diff --color=always ${realpath#-*=}
  ;;
esac
