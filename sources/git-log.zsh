# :fzf-tab:complete:git-log:argument-1
git log --color=always $word | perl -pe$(jq -j '.[] as $i | "s=" + $i.code + "=" + $i.emoji + "=g;"' ~/.gitmoji/gitmojis.json)
