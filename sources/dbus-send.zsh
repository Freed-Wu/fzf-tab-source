# :fzf-tab:complete:(\\|*/|)dbus-send:*
case $group in
  connection)
    dbus-send --print-reply=literal --dest=$word / org.freedesktop.DBus.Introspectable.Introspect |
      bat -plxml
    ;;
esac
