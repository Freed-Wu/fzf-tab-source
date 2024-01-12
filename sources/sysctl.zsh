# :fzf-tab:complete:(\\|*/|)sysctl:argument-rest
case $group in
  'sysctl variable')
    sysctl $realpath | bat -ltoml
    ;;
esac
