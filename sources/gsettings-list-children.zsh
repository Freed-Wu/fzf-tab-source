# :fzf-tab:complete:(\\|*/|)gsettings-list-children:
case $group in
  schema)
    gsettings list-children $word
    ;;
esac
