# :fzf-tab:complete:(\\|*/|)systemctl-list-dependencies:*
case $group in
unit)
  systemctl list-dependencies $word
  ;;
esac
