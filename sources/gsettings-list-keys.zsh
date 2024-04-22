# :fzf-tab:complete:(\\|*/|)gsettings-list-keys:
case $group in
  schema)
    gsettings list-keys $word
    ;;
esac
