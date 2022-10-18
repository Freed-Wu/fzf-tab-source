# :fzf-tab:complete:((-parameter-|unset):|(export|typeset|declare|local):argument-rest)
# -brace-parameter- will `fork/exec /usr/bin/zsh: invalid argument`
echo ${(P)word}
