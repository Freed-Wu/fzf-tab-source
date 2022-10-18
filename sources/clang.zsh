# :fzf-tab:complete:(\\|*/|):clang:argument-rest
clang -o- -S $realpath | bat --color=always -plasm
