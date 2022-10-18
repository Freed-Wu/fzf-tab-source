(($+commands[bat])) || bat() {cat}
(($+commands[delta])) || delta() {cat}
(($+commands[less])) || less() {ls -l}
(($+commands[finger])) || finger() {(($+commands[pinky])) && pinky $@ || whoami}
(($+commands[grc])) || grc() {eval ${@[2,-1]}}

mkdir -p ~/.gitmoji
touch ~/.gitmoji/gitmojis.json
