# :fzf-tab:complete:(\\|*/|)udisksctl-info:*
case $group in
'block device')
  udisksctl info -b $word | bat --color=always -plyaml
  ;;
'object path')
  udisksctl info -p $word | bat --color=always -plyaml
  ;;
drive)
  udisksctl info -d $word | bat --color=always -plyaml
  ;;
esac
