# :fzf-tab:complete:(\\|*/|)(pydoc|python):*
[[ $word != -* ]] && pydoc $word | bat --color=always -plman
