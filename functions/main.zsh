# define some functions to avoid any error that these programs don't exist
# treat bat -lXXX as cat
# currently, only bat supports highlight --help
alias -g -- "--help=\\--help | bat -lhelp"

if (($+commands[bat])); then
  bat() {command bat --color=always -p $@}
elif (($+commands[batcat])); then
  bat() {command batcat --color=always -p $@}
else
  bat() {command cat}
fi

if ((! $+commands[mdcat])); then
  if (($+commands[paper])); then
    mdcat() {command paper $@}
  elif (($+commands[mdless])); then
    mdcat() {command mdless $@}
  elif (($+commands[glow])); then
    mdcat() {command glow $@}
  else
    # use bat() as fallback
    mdcat() {bat -lmarkdown}
  fi
fi

if ((! $+commands[finger])); then
  (($+commands[pinky])) && finger() {command pinky $@} ||
    finger() {command whoami}
fi

(($+commands[pandoc])) || pandoc() {command cat ${@[-1]}}
(($+commands[grc])) || grc() {eval ${@[2,-1]}}

# https://github.com/Freed-Wu/fzf-tab-source/issues/6
if (($+commands[less])) && [ -x ~/.lessfilter ]; then
  less() {~/.lessfilter $@ || command less $@}
else
  (($+commands[less])) || less() {command ls -l $@}
fi

# use pager to process the output of git
(($+commands[git])) && git() {
    command git $@ | eval $(command git config pager.$1 || command git config core.pager || echo cat)
  }

tmp_dir=${TMPPREFIX:-/tmp/zsh}-fzf-tab-$USER

# https://bixense.com/clicolors/
export CLICOLOR_FORCE=1
export SYSTEMD_COLORS=1

. $src
