# define some functions to avoid any error that these programs don't exist
# treat bat -lXXX as cat
(($+commands[bat])) && bat() {command bat --color=always -p $@} ||
  bat() {command cat}
(($+commands[pandoc])) || pandoc() {command cat ${@[-1]}}
(($+commands[mdcat])) || mdcat() {bat -lmarkdown}
(($+commands[grc])) || grc() {eval ${@[2,-1]}}
if ((! $+commands[finger])); then
  (($+commands[pinky])) && finger() {command pinky $@} ||
    finger() {command whoami}
fi
# https://github.com/Freed-Wu/fzf-tab-source/issues/6
if (($+commands[less])) && [ -x ~/.lessfilter ]; then
  less() {~/.lessfilter $@ || command less $@}
else
  (($+commands[less])) || less() {command ls -l $@}
fi

(($+commands[git])) && git() {
    command git $@ | eval $(command git config --global pager.$1 || echo cat)
  }

# dictionary $ZINIT cannot be passed
PLUGINS_DIR=${ZINIT[PLUGINS_DIR]}

. $src
