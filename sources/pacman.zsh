# :fzf-tab:complete:(\\|*/|)(pacman|yay):(argument-(rest|1)|option-l-1)
case $group in
'package file')
  less $realpath
  ;;
(('installed '|)package|'local packages'))
  pacman -Qi $word | bat --color=always -plyaml
  ;;
packages)
  pacman -Si $word | bat --color=always -plyaml
  ;;
esac
