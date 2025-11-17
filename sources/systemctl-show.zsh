# :fzf-tab:complete:systemctl-show:*
service_mgr=${words[(R)(--user|--system)]:---system}
systemctl $service_mgr show -- $word | bat -lini
