# :fzf-tab:complete:(\\|*/|)nslookup:argument-1
case $group in
'host to find')
  nslookup $word | bat --color=always -plyaml
  ;;
esac
