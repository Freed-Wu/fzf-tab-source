# :fzf-tab:complete:(\\|*/|)xdg-settings:
file=$(xdg-settings get $word)
[[ -n $file ]] && less {/usr,~/.local}/share/applications/$file(N)
