# :fzf-tab:complete:git-reflog(|-*):argument-1
case $group in
command)
  git reflog --color=always |
    perl -pe' '$([ -f ~/.gitmoji/gitmojis.json ] && ${src:h:h}/bin/gitmoji.jq ~/.gitmoji/gitmojis.json || :)
  ;;
reference)
  git reflog --color=always $word |
    perl -pe' '$([ -f ~/.gitmoji/gitmojis.json ] && ${src:h:h}/bin/gitmoji.jq ~/.gitmoji/gitmojis.json || :)
  ;;
esac
