# :fzf-tab:complete:(\\|*/|)gcc:*
case $group in
'input file')
  gcc -o- -S $realpath | bat --color=always -plasm
  ;;
help)
  gcc --help=$word | bat --color=always -plhelp
  ;;
esac
