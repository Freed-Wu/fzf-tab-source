# :fzf-tab:complete:systemctl-help:*
service_mgr=${words[(R)(--user|--system)]:---system}
systemctl $service_mgr help -- $word 2>/dev/null | bat -lhelp
