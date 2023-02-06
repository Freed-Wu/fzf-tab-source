# :fzf-tab:complete:(\\|*/|)progress:*
case $group in
'external command')
  progress -c $word
  ;;
'process ID')
  progress -p $word
  ;;
esac
