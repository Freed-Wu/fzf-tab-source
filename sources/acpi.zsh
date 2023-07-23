# :fzf-tab:complete:(\\|*/|)acpi:options
case $group in
directory)
  acpi -d $wod
  ;;
option)
  case $word in
  -(k|f|-(kelvin|fahrenheit)))
    acpi -t $word
    ;;
  *)
    acpi $word
    ;;
  esac
esac
