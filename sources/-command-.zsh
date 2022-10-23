# :fzf-tab:complete:-command-:
case $group in
  'external command')
    less =$word
    ;;
  'executable file')
    less ${realpath#--*=}
    ;;
  'builtin command')
    run-help $word | bat --color=always -plman
    ;;
  parameter)
    echo ${(P)word}
esac
