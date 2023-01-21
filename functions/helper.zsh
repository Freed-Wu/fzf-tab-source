# define some functions to avoid any error that these programs don't exist
(($+commands[bat])) || bat() {cat}
(($+commands[pygmentize])) || pygmentize() {cat}
(($+commands[delta])) || delta() {cat}
(($+commands[less])) || less() {ls -l}
(($+commands[finger])) || finger() {(($+commands[pinky])) && pinky $@ || whoami}
(($+commands[pandoc])) || pandoc() {cat ${@[-1]}}
(($+commands[grc])) || grc() {eval ${@[2,-1]}}
(($+commands[jq])) || jq() {echo ';'}

mkdir -p ~/.gitmoji
touch ~/.gitmoji/gitmojis.json

# dictionary $ZINIT cannot be passed
PLUGINS_DIR=${ZINIT[PLUGINS_DIR]}
