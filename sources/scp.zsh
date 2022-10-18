# :fzf-tab:complete:(\\|*/|)(scp|rsync):argument-rest
case $group in
  file) less ${realpath#--*=};;
  user) finger $word;;
  *host*) grc --colour=on ping -c1 $word;;
esac
