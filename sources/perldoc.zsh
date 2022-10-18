# :fzf-tab:complete:(\\|*/|)perldoc:argument-rest
[[ $group != option ]] && perldoc $word | bat --color=always -plman
