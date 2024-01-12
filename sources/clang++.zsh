# :fzf-tab:complete:(\\|*/|):clang++:argument-rest
clang++ -o- -S $realpath | bat -lasm
