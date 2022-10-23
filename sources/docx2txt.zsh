# :fzf-tab:complete:(\\|*/|)docx2txt:
[[ -f $realpath ]] && docx2txt $realpath - || less $realpath
