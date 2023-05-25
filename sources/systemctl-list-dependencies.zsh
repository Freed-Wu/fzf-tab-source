# :fzf-tab:complete:(\\|*/|)systemctl-list-dependencies:*
case $group in
unit)
  SYSTEMD_COLORS=1 systemctl list-dependencies $word
  ;;
esac
