# :fzf-tab:complete:(\\|*/|):g++:argument-rest
g++ -o- -S $realpath | bat --color=always -plasm
