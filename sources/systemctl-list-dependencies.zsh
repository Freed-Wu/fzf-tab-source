# :fzf-tab:complete:(\\|*/|)systemctl-list-dependencies:*
service_mgr=${words[(R)(--user|--system)]:---system}
case $group in
unit)
  systemctl $service_mgr list-dependencies -- $word
  ;;
esac
