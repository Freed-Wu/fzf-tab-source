# :fzf-tab:complete:git-log:argument-1
git log --color=always | eval $(git config --global pager.log || echo less)
