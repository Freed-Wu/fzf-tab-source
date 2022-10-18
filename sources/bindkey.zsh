# :fzf-tab:complete:(\\|)bindkey:option-M-1
case $group in
  keymap) bindkey -M$word | bat --color=always -pltsv;;
esac
