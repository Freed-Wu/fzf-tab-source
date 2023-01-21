# :fzf-tab:complete:(\\|*/|)dpkg:argument-rest
case $group in
file)
  dpkg -S $word
  ;;
package)
  dpkg -L $word
  ;;
esac
