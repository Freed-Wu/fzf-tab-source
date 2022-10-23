# :fzf-tab:complete:(\\|*/|)man:
[[ $group == 'manual page' ]] && man $word | bat --color=always -plman
