# :fzf-tab:complete:(\\|*/|)rmmod:argument-rest
lsmod | head -n1
lsmod | grep -E "^$word\>"
