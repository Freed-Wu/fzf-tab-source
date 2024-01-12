# :fzf-tab:complete:(\\|*/|)netstat:options
case $group in
  option)
    [[ $word == -(h|-help) ]] &&
      netstat $word | bat -lhelp ||
      grc --colour=on netstat $word
    ;;
esac
