# :fzf-tab:complete:(\\|*/|)pacman-key:
case $group in
  'keys in keyring')
    pacman-key -f $word;;
esac
