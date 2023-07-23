# :fzf-tab:complete:(\\|*/|)xdg-settings:
file=$(xdg-settings get $word)
[[ -n $file ]] && less {/usr,~/.local,~/.local/state/nix/profile,/run/current-system/sw}/share/applications/$file(N)
