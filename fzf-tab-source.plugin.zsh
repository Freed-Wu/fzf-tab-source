# https://github.com/zdharma-continuum/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

function () {
  local dir=${1:h} config_directory
  zstyle -s ':fzf-tab:sources' config-directory config_directory
  local sources=($dir/sources/*.zsh)
  # use user's sources to override this plugin's sources
  if [[ -n $config_directory ]]; then
    sources+=($config_directory/**/*.zsh(.N))
  fi

  # https://github.com/Freed-Wu/fzf-tab-source/issues/11
  # enable $group
  zstyle ':completion:*:descriptions' format %d

  local src line arr ctx flags
  for src in $sources; do
    while read -r line; do
      # strip code to get magic comment
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
} $0
