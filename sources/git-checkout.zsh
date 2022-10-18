# :fzf-tab:complete:git-checkout:argument-rest
case $group in
  'modified file') git diff $word | delta;;
  'recent commit object name') git log --color=always $word | perl -pe$(jq -j '.[] as $i | "s=" + $i.code + "=" + $i.emoji + "=g;"' ~/.gitmoji/gitmojis.json) | delta;;
  *) git log --color=always $word | perl -pe$(jq -j '.[] as $i | "s=" + $i.code + "=" + $i.emoji + "=g;"' ~/.gitmoji/gitmojis.json);;
esac
