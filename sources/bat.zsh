# :fzf-tab:complete:(\\|*/|)bat:argument-rest
case $group in
subcommand)
  bat cache --help
  ;;
*)
  [[ -f ${realpath#--*=} ]] && bat ${realpath#--*=} || less ${realpath#--*=}
  ;;
esac
