# :fzf-tab:complete:systemctl-(status|(re|)start|(dis|en)able|stop):*
service_mgr=${words[(R)(--user|--system)]:---system}
systemctl $service_mgr status -- $word
