# :fzf-tab:complete:(\\|*/|)gsettings-list-recursively:
case $group in
  schema)
    gsettings list-recursively $word
    ;;
esac
