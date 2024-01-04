# :fzf-tab:complete:git-checkout:argument-rest
case $group in
'modified file')
  git diff $word | delta
  ;;
'recent commit object name')
  git log --color=always $word |
    perl -pe' '$([ -f ~/.gitmoji/gitmojis.json ] && ${src:h:h}/bin/gitmoji.jq ~/.gitmoji/gitmojis.json || :) |
    delta
  ;;
*)
  git log --color=always $word |
    perl -pe' '$([ -f ~/.gitmoji/gitmojis.json ] && ${src:h:h}/bin/gitmoji.jq ~/.gitmoji/gitmojis.json || :)
  ;;
esac
