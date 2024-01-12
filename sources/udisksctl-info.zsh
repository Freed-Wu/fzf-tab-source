# :fzf-tab:complete:(\\|*/|)udisksctl-info:*
case $group in
'block device')
  udisksctl info -b $word | bat -lyaml
  ;;
'object path')
  udisksctl info -p $word | bat -lyaml
  ;;
drive)
  udisksctl info -d $word | bat -lyaml
  ;;
esac
