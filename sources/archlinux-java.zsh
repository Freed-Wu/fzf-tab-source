# :fzf-tab:complete:(\\|*/|)archlinux-java:argument-1
case $word in
  (get|status))
    archlinux-java $word
    ;;
  help)
    archlinux-java $word | bat --color=always -pplhelp
    ;;
esac
