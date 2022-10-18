# :fzf-tab:complete:(\\|*/|)(|neo)mutt:argument-1
case $group in
  'file attachment') less ${realpath#--*=};;
  recipient) finger $word;;
esac
