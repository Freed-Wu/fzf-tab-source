# https://github.com/zdharma-continuum/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

typeset -g _fzf_tab_source_plugin=$0
typeset -g _fzf_tab_source_dir=${_fzf_tab_source_plugin:h}
typeset -g _fzf_tab_source_ready=0
typeset -g _fzf_tab_source_widget_wrapped=0
typeset -g _fzf_tab_source_real_widget=_fzf_tab_source_fzf_widget

_fzf_tab_source_register_sources() {
  (( _fzf_tab_source_ready )) && return

  local dir=${_fzf_tab_source_dir} config_directory
  local sources=($dir/sources/*.zsh)
  # use user's sources to override this plugin's sources
  zstyle -s ':fzf-tab:sources' config-directory config_directory &&
    sources+=($config_directory/**/*.zsh(.N))

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
    # https://github.com/Aloxaf/fzf-tab/issues/282
    # https://github.com/junegunn/fzf/issues/2822
    # $word = {2} make a wrong --preview-window=+{2}
    zstyle $ctx fzf-flags ${flags:---preview-window=+0}
  done

  _fzf_tab_source_ready=1
}

_fzf_tab_source_lazy_widget() {
  _fzf_tab_source_register_sources
  builtin zle $_fzf_tab_source_real_widget -- "$@"
}

_fzf_tab_source_try_wrap_widget() {
  (( _fzf_tab_source_widget_wrapped )) && return 0
  if ! builtin zle -A fzf-tab-complete $_fzf_tab_source_real_widget 2>/dev/null; then
    return 1
  fi
  builtin zle -N fzf-tab-complete _fzf_tab_source_lazy_widget
  _fzf_tab_source_widget_wrapped=1
  return 0
}

_fzf_tab_source_wrap_when_ready() {
  if _fzf_tab_source_try_wrap_widget; then
    (( $+functions[add-zle-hook-widget] )) &&
      add-zle-hook-widget -d zle-line-init _fzf_tab_source_wrap_when_ready 2>/dev/null
  fi
}

if [[ -n ${FZF_TAB_SOURCE_EAGER-} ]]; then
  _fzf_tab_source_register_sources
else
  if ! _fzf_tab_source_try_wrap_widget; then
    autoload -Uz add-zle-hook-widget 2>/dev/null
    if (( $+functions[add-zle-hook-widget] )); then
      add-zle-hook-widget zle-line-init _fzf_tab_source_wrap_when_ready
    else
      _fzf_tab_source_register_sources
    fi
  fi
fi
