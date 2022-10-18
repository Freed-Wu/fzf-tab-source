# :fzf-tab:complete:(\\|*/|)(pacman|yay):argument-rest
[ $group != repository/package ] \
  && pacman -Qi $word | bat --color=always -plyaml
