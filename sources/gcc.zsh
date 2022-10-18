# :fzf-tab:complete:(\\|*/|):gcc:argument-rest
gcc -o- -S $realpath | bat --color=always -plasm
