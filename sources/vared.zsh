# :fzf-tab:complete:((-parameter-|unset):|(export|typeset|declare|local):argument-rest|vared:argument-1)
# -brace-parameter- will `fork/exec /usr/bin/zsh: invalid argument`
echo ${(P)word}
