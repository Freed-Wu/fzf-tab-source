# :fzf-tab:complete:(\\|*/|)gdbus:
# FIXME: strip trailing whitespaces
word=${word%% }
[[ $word != -* ]] && gdbus $word --help
