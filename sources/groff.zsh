# :fzf-tab:complete:(\\|*/|)groff:argument-1
[[ -f $realpath ]] && groff $realpath | pygmentize -l postscript ||
  less $realpath
