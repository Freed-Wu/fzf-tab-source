# :fzf-tab:complete:git-(diff|cherry-pick):argument-rest
case $group in
'tree file')
  less ${realpath#--*=}
  ;;
*)
  git diff $realpath
  ;;
esac
