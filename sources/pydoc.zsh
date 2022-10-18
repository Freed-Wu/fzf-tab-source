# :fzf-tab:complete:(\\|*/|)pydoc:*
[[ $word != -* ]] && pydoc $word | bat --color=always -plman
