# :fzf-tab:complete:(\\|*/|)netstat:options
case $group in
  option)
    [[ $word == -(h|-help) ]] &&
      netstat $word | bat --color=always -plhelp ||
      grc --colour=on netstat $word
    ;;
esac
