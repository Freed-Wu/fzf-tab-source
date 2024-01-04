# :fzf-tab:complete:git-log:argument-1
git log --color=always $word |
  perl -pe' '$([ -f ~/.gitmoji/gitmojis.json ] && ${src:h:h}/bin/gitmoji.jq ~/.gitmoji/gitmojis.json || :)
