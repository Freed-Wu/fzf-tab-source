# :fzf-tab:complete:(\\|*/|)apt(|-cache):argument-rest
apt-cache show $word | bat --color=always -plyaml
