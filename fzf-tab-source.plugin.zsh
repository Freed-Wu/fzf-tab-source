# https://github.com/zdharma-continuum/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# config
zstyle -s ':fzf-tab:sources' config-directory config_directory
local sources=()
if [[ -n $config_directory ]]; then
  sources=($config_directory/**/*.zsh(.N))
fi

# use a standalone script to get syntax highlight
# built-in commands and aliases should start with `(\\|)` to support `\command`
# commands should start with `(\\|*/|)` to support `=command`
local dir=${0:h} src line arr ctx flags
for src in $dir/sources/*.zsh $sources; do
  while read -r line; do
    arr=(${(@s. .)line##\# })
    ctx=${arr[1]}
    if [[ $ctx == ':fzf-tab:'* ]]; then
      break
    fi
  done < $src
  zstyle $ctx fzf-preview "src="\""$src"\"" . "\""$dir"\""/functions/main.zsh"
  flags=${arr[2]}
  if [[ -n $flags ]]; then
    zstyle $ctx fzf-flags $flags
  fi
done
