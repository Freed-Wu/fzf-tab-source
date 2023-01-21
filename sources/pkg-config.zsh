# :fzf-tab:complete:(\\|*/|)pkg-config:argument-rest
case $group in
package)
  less /usr/(lib|share)/pkgconfig/$word.pc
  ;;
'package file')
  less ${realpath#--*=}
  ;;
esac
