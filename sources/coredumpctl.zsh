# :fzf-tab:complete:(\\|*/|)coredumpctl:argument-rest
case $group in
coredumps)
  coredumpctl info $word | bat -lyaml
  ;;
esac
