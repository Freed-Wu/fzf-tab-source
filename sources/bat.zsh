# :fzf-tab:complete:(\\|*/|)bat:argument-rest
case $group in
subcommand)
  bat cache --help | bat --color=always -plhelp
  ;;
*)
  [[ -f ${realpath#--*=} ]] && bat ${realpath#--*=} || less ${realpath#--*=}
  ;;
esac
