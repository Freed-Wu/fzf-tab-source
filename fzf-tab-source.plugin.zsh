# https://github.com/zdharma-continuum/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# use a standalone script to get syntax highlight
# built-in commands and aliases should start with `(\\|)` to support `\command`
# commands should start with `(\\|*/|)` to support `=commmand`
local dir=${0:h} src line arr ctx flags
for src in $dir/sources/*.zsh ; do
  while read -r line; do
    arr=(${(@s. .)line##\# })
    ctx=${arr[1]}
    if [[ $ctx == ':fzf-tab:'* ]]; then
      break
    fi
  done < $src
  zstyle $ctx fzf-preview ". $dir/functions/helper.zsh && . $src"
  flags=${arr[2]}
  if [[ -n $flags ]]; then
    zstyle $ctx fzf-flags $flags
  fi
done
