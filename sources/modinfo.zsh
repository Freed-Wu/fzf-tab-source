# :fzf-tab:complete:(\\|*/|)modinfo:argument-1
case $group in
'module file')
  [[ -f $realpath ]] && modinfo $realpath | bat --color=always -plyaml || less $realpath
  ;;
module(|' alias'))
  modinfo $word | bat --color=always -plyaml
  ;;
esac
