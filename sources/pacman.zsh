# :fzf-tab:complete:(\\|*/|)(pacman|yay):(argument-(rest|1)|option-l-1)
case $group in
'package file')
  less $realpath
  ;;
(('installed '|)package|'local packages'))
  pacman -Qi $word | bat -lyaml
  ;;
packages)
  pacman -Si $word | bat -lyaml
  ;;
esac
