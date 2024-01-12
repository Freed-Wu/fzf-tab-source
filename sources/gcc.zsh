# :fzf-tab:complete:(\\|*/|)gcc:*
case $group in
'input file')
  gcc -o- -S $realpath | bat -lasm
  ;;
help)
  gcc --help=$word | bat -lhelp
  ;;
esac
