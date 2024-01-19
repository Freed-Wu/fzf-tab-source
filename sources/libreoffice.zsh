# :fzf-tab:complete:(\\|*/|)(libre|s)office:
if [[ -f $realpath && ${realpath:e} == xls* ]]; then
  libreoffice --headless --convert-to html --outdir $tmp_dir $realpath &>/dev/null &&
    pandoc -tmarkdown -o- $tmp_dir/${realpath:t:r}.html | bat -lmarkdown
  rm $tmp_dir/${realpath:t:r}.html
elif [[ -f $realpath ]]; then
  libreoffice --headless --cat $realpath
else
  less $realpath
fi
