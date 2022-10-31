# :fzf-tab:complete:(\\|*/|)(libre|s)office:
if [[ -f $realpath && ${realpath:e} == xls* ]]; then
  libreoffice --headless --convert-to html --outdir /tmp $realpath \
    2>&1 > /dev/null && pandoc -t markdown -o - /tmp/${realpath:t:r}.html \
    | bat --color=always -plmarkdown && rm /tmp/${realpath:t:r}.html
elif [[ -f $realpath ]]; then
  libreoffice --headless --cat $realpath
else
  less $realpath
fi
