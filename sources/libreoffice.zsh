# :fzf-tab:complete:(\\|*/|)(libre|s)office:
if [[ -f $realpath && ${realpath:e} == xls* ]]; then
  libreoffice --headless --convert-to html --outdir /tmp/zsh-fzf-tab-$USER $realpath &>/dev/null &&
    pandoc -tmarkdown -o- /tmp/zsh-fzf-tab-$USER/${realpath:t:r}.html | bat -lmarkdown
  rm /tmp/zsh-fzf-tab-$USER/${realpath:t:r}.html
elif [[ -f $realpath ]]; then
  libreoffice --headless --cat $realpath
else
  less $realpath
fi
