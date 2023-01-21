# :fzf-tab:complete:(\\|*/|)pydoc:argument-rest
case $group in
option) ;;
*)
  pydoc $word | bat --color=always -plman
  ;;
esac
