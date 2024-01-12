# :fzf-tab:complete:(\\|*/|)ss:values
case $group in
  option)
    [[ $word == -(h|-help) ]] &&
      ss $word | bat -lhelp ||
      grc --colour=on ss $word
    ;;
esac
