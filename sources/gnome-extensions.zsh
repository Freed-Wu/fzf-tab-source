# :fzf-tab:complete:(\\|*/|)gnome-extensions:
if [[ $word == *@* ]]; then
  gnome-extensions show $word | bat -lyaml
else
  gnome-extensions help $word 2>&1 | bat -lhelp
fi
