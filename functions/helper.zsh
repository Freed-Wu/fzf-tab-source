(($+commands[bat])) || bat() {cat}
(($+commands[pygmentize])) || pygmentize() {cat}
(($+commands[delta])) || delta() {cat}
(($+commands[less])) || less() {ls -l}
(($+commands[finger])) || finger() {(($+commands[pinky])) && pinky $@ || whoami}
(($+commands[grc])) || grc() {eval ${@[2,-1]}}

# dictionary $ZINIT cannot be passed
PLUGINS_DIR=${ZINIT[PLUGINS_DIR]}

mkdir -p ~/.gitmoji
touch ~/.gitmoji/gitmojis.json
