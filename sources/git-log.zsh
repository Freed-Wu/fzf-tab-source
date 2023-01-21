# :fzf-tab:complete:git-log:argument-1
git log --color=always $word |
  perl -pe$(jq -j '.[] | "s=\(.code)=\(.emoji)=g;"' ~/.gitmoji/gitmojis.json)
