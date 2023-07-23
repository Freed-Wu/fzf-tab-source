# :fzf-tab:complete:(\\|*/|)pkg-config:argument-rest
case $group in
package)
  less "$(pkg-config --variable=pcfiledir $word)/$word.pc"
  ;;
'package file')
  less ${realpath#--*=}
  ;;
esac
