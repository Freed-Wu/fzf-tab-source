# :fzf-tab:complete:(\\|*/|)(pacman|paru|yay):(argument-(rest|1)|option-l-1)
case $group in
'package file')
  less $realpath
  ;;
(('installed '|)package|'local packages'))
  pacman -Qi $word | bat -lyaml
  ;;
packages)
  if (($+commands[paru])); then
    paru -Si $word | bat -lyaml
  elif (($+commands[yay])); then
    yay -Si $word | bat -lyaml
  else
    pacman -Si $word | bat -lyaml
  fi
  ;;
esac
