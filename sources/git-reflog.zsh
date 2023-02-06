# :fzf-tab:complete:git-reflog(|-*):argument-1
case $group in
command)
  git reflog --color=always show |
    perl -pe' '$(jq -j '.[] | "s=\(.code)=\(.emoji)=g;"' ~/.gitmoji/gitmojis.json)
  ;;
reference)
  git reflog --color=always $word |
    perl -pe' '$(jq -j '.[] | "s=\(.code)=\(.emoji)=g;"' ~/.gitmoji/gitmojis.json)
  ;;
esac
