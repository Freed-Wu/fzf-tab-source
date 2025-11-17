# :fzf-tab:complete:systemctl-cat:*
service_mgr=${words[(R)(--user|--system)]:---system}
SYSTEMD_COLORS=false systemctl $service_mgr cat -- $word | bat -lini
