# :fzf-tab:complete:(\\|*/|)texdoc:values
yes | texdoc -l $word 2>/dev/null | head -n-1
