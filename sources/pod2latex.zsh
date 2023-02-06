# :fzf-tab:complete:(\\|*/|)pod2latex:
[[ -f $realpath ]] &&
  pod2latex -out /tmp/pod2latex $realpath &&
  bat --color=always /tmp/pod2latex.tex ||
  less $realpath
