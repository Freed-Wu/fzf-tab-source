# :fzf-tab:complete:(\\|*/|)zstat:set1-argument-rest
zmodload zsh/stat
case $group in
  file)
    zstat $realpath
    ;;
esac
