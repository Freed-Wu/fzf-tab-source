# :fzf-tab:complete:(\\|*/|)adb-(push|pull|shell):argument-rest
case $group in
  'file/folder on device')
    # https://github.com/Aloxaf/fzf-tab/issues/325
    adb shell 'type=$(file -L '"$ctxt[hpre]$word"' | cut -d: -f2) && test -z "${type/ASCII text/}" && cat '"$ctxt[hpre]$word"' || ls -l --color '$ctxt[hpre]$word
    ;;
  'local file/folder')
    less $realpath
    ;;
esac
