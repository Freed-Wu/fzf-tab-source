# fzf-tab-source

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/Freed-Wu/fzf-tab-source/main.svg)](https://results.pre-commit.ci/latest/github/Freed-Wu/fzf-tab-source/main)

[![github/downloads](https://shields.io/github/downloads/Freed-Wu/fzf-tab-source/total)](https://github.com/Freed-Wu/fzf-tab-source/releases)
[![github/downloads/latest](https://shields.io/github/downloads/Freed-Wu/fzf-tab-source/latest/total)](https://github.com/Freed-Wu/fzf-tab-source/releases/latest)
[![github/issues](https://shields.io/github/issues/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/issues)
[![github/issues-closed](https://shields.io/github/issues-closed/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/issues?q=is%3Aissue+is%3Aclosed)
[![github/issues-pr](https://shields.io/github/issues-pr/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/pulls)
[![github/issues-pr-closed](https://shields.io/github/issues-pr-closed/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/pulls?q=is%3Apr+is%3Aclosed)
[![github/discussions](https://shields.io/github/discussions/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/discussions)
[![github/milestones](https://shields.io/github/milestones/all/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/milestones)
[![github/forks](https://shields.io/github/forks/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/network/members)
[![github/stars](https://shields.io/github/stars/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/stargazers)
[![github/watchers](https://shields.io/github/watchers/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/watchers)
[![github/contributors](https://shields.io/github/contributors/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/graphs/contributors)
[![github/commit-activity](https://shields.io/github/commit-activity/w/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/graphs/commit-activity)
[![github/last-commit](https://shields.io/github/last-commit/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/commits)
[![github/release-date](https://shields.io/github/release-date/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/releases/latest)

[![github/license](https://shields.io/github/license/Freed-Wu/fzf-tab-source)](https://github.com/Freed-Wu/fzf-tab-source/blob/main/LICENSE)
![github/languages](https://shields.io/github/languages/count/Freed-Wu/fzf-tab-source)
![github/languages/top](https://shields.io/github/languages/top/Freed-Wu/fzf-tab-source)
![github/directory-file-count](https://shields.io/github/directory-file-count/Freed-Wu/fzf-tab-source)
![github/code-size](https://shields.io/github/languages/code-size/Freed-Wu/fzf-tab-source)
![github/repo-size](https://shields.io/github/repo-size/Freed-Wu/fzf-tab-source)
![github/v](https://shields.io/github/v/release/Freed-Wu/fzf-tab-source)

This zsh plugin is a collection of
[fzf-tab](https://github.com/Aloxaf/fzf-tab)'s sources. Please read
[the wiki](https://github.com/Aloxaf/fzf-tab/wiki/Preview) first.

## Install

This plugin respects
[zsh plugin standard](https://github.com/zdharma-continuum/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc),
so if you use any plugin manager and follow the instructions of your plugin
manager, it can be installed correctly.

If you don't use any plugin manager, just add the following code to `~/.zshrc`:

```zsh
source /the/directory/of/this/plugin/*.plugin.zsh
```

**NOTE**: Don't source `*.zsh`! They will be sourced by `*.plugin.zsh` automatically.

## Preview

You need some optional tools:

- [bat](https://github.com/sharkdp/bat): view code
- [pandoc](https://github.com/jgm/pandoc): convert any kind of file to
  markdown. Any generated cache file will be store in same
  `/tmp/zsh-fzf-tab-$USER` as [fzf-tab](https://github.com/Aloxaf/fzf-tab)
- render markdown:
  - [mdcat](https://github.com/swsnr/mdcat): unmaintained
  - [mdless](https://github.com/ttscoff/mdless)
  - [paper](https://github.com/foxfriends/paper-terminal)
  - [glow](https://github.com/charmbracelet/glow)
- [grc](https://github.com/garabik/grc): colorize the output of some commands
- [less](https://github.com/vbwagner/less): a pager

### less

This plugin uses `less` to display any file. `less` can be configured by
the environment variable `LESSOPEN`.

```sh
$ echo $LESSOPEN
|/usr/bin/lesspipe %s
```

_NOTE_: in some GNU/Linux distributions, it's `lesspipe.sh` or other names.

[lesspipe](https://github.com/wofr06/lesspipe) is a script to select
different tool for different kind of file.
You can write your `~/.lessfilter` to
[customize lesspipe](https://github.com/wofr06/lesspipe#9-user-defined-filtering).
For example:

[lesspipe selects `ls` to display
a directory](https://github.com/wofr06/lesspipe/pull/107).
You can install some tools to view directories, such as:

- [eza](https://github.com/eza-community/eza): written in rust
- [lsd](https://github.com/lsd-rs/lsd): written in rust
- [colorls](https://github.com/athityakumar/colorls): written in ruby

![dir](https://user-images.githubusercontent.com/32936898/195973421-24f28667-3754-46f2-9dd4-42523285aec2.png)

You can install some tools to view code, such as:

- [syncat](https://github.com/foxfriends/syncat): use
  [tree sitter](https://github.com/tree-sitter/tree-sitter)
- [bat](https://github.com/sharkdp/bat): use
  [sublime syntax](https://www.sublimetext.com/docs/syntax.html)
- [pygmentize](https://github.com/pygments/pygments): use python
- [rouge](https://github.com/rouge-ruby/rouge): use ruby
- [vimpager](https://github.com/rkitover/vimpager): use vim script
- [nvimpager](https://github.com/lucc/nvimpager):
  [use vim script](https://github.com/lucc/nvimpager/issues/63)

![text](https://user-images.githubusercontent.com/32936898/195970444-4220411d-5a11-4b60-a19f-a8839d827711.png)

[lesspipe doesn't display image](https://github.com/wofr06/lesspipe/pull/106).
You can install some tools to view images, such as:

- [chafa](https://github.com/hpjansson/chafa): written in C
- [catimg](https://github.com/posva/catimg): written in C
- [timg](https://github.com/hzeller/timg): written in C++
- [tiv](https://github.com/radare/tiv): written in Vala
- [plotext](https://github.com/piccolomo/plotext): written in python

![image](https://user-images.githubusercontent.com/32936898/195970442-1ca8db87-fcb2-469e-8578-163ea73a19ff.png)

My
[~/.lessfilter](https://github.com/Freed-Wu/my-dotfiles/blob/main/.lessfilter)
can be a reference.

### pinyin

[pinyin-completion](https://github.com/petronny/pinyin-completion): complete
pinyin in your zsh.

This plugin also uses `less` to view the completion results of pinyin-completion.

![user-expand](https://user-images.githubusercontent.com/32936898/195970438-1282c11b-c2e4-455e-8a6a-76c7446ecf8b.png)

### zsh

![-parameter-](https://user-images.githubusercontent.com/32936898/195970440-98a83556-e664-42e6-9adb-918b865053f3.png)

This plugin uses any one of the following tools to display user information:

- `finger`
- `pinky`

![-tilde-](https://user-images.githubusercontent.com/32936898/195971353-54ff0bd0-31e7-4bb0-bd88-1107f63a5751.png)

This plugin also uses `less` to view commands. `lesspipe` uses `ldd` to view
binary programs.

![-command-](https://user-images.githubusercontent.com/32936898/195971354-0a9e3228-96d9-4f94-ae58-265ca0709787.png)

![bindkey](https://user-images.githubusercontent.com/32936898/195971356-78d0e417-428c-481a-8c96-345d5d73be14.png)

### zinit

[zinit](https://github.com/zdharma-continuum/zinit) is a zsh plugin manager.
Preview every zsh plugin's `README.md`.

![zinit](https://user-images.githubusercontent.com/32936898/195971845-006f9b46-0685-4c53-aef8-ab50b0038dfe.png)

### hexyl

Other tools which can display binary files are supported, too:

- `od`
- `xxd`

![hexyl](https://user-images.githubusercontent.com/32936898/195972152-d0130d58-afd4-431c-8e9a-d1777e885257.png)

### git

![git](https://user-images.githubusercontent.com/32936898/195972427-1abb643e-7a3e-4571-b9c3-e4dd911cf4e5.png)

This plugin uses your git's pagers to view the outputs of some git command.

For example, by default:

```sh
$ git log --oneline
3ee9df0 :heavy_plus_sign: Add emojify
d74f60a :sparkles: Add sysctl, lsof, arp, netstat, ss, archlinux-java, coredumpctl
592d286 :pencil2: Fix a typo about command
4dd0c69 :children_crossing: Fix #8, don't mkdir ~/.gitmoji
```

You can install [`emojify`](https://github.com/mrowa44/emojify) then:

```sh
git config --global pager.log emojify
```

```sh
$ git log --oneline
3ee9df0 ➕ Add emojify
d74f60a ✨ Add sysctl, lsof, arp, netstat, ss, archlinux-java, coredumpctl
592d286 ✏️ Fix a typo about command
4dd0c69 🚸 Fix #8, don't mkdir ~/.gitmoji
```

![git log](https://github.com/Freed-Wu/fzf-tab-source/assets/32936898/5f73c9ce-6025-463d-a2f2-2239baee7179)

My
[~/.config/git/config](https://github.com/Freed-Wu/my-dotfiles/blob/main/.config/git/config)
can be a reference.

### kill

Preview which command will be killed after `kill XXX`.

![kill](https://user-images.githubusercontent.com/32936898/195972969-437326bb-4514-4c46-8a55-fe16808a0368.png)

### make

Preview which command will be executed after `make XXX`.

![make](https://user-images.githubusercontent.com/32936898/195984087-c802d78f-00ae-4139-904c-74fb668cb844.png)

### systemctl

![systemctl](https://user-images.githubusercontent.com/32936898/195973059-ab426a65-2e04-4e5a-8474-d201a6644adb.png)

### adb

We cannot ensure any program (`eza`, etc) are installed in other machine
(Android). This plugin uses Android's `ls` to display directory and `cat` to
display text.

![adb](https://user-images.githubusercontent.com/32936898/203727602-e33b617d-a218-435e-8f8a-585e7679857f.jpg)

## Customize

### Sources

```zsh
zstyle ':fzf-tab:sources' config-directory /a/directory
```

You can use your customized fzf-tab sources to override
[this plugin's sources](sources).
`*.zsh` in `config-directory` are standalone zsh scripts which can be syntax
highlighted by your editor:

```zsh
# :fzf-tab:complete:context --optional-fzf-option
foobar $word
```

- Built-in commands and aliases should start with `(\\|)` to support `\command`
- Commands should start with `(\\|*/|)` to support `=command`

That is, `\command <TAB>`, `=command <TAB>` will get same preview windows as
`command <TAB>`.

### Similar Project

- [fifc](https://github.com/gazorby/fifc):
  [fzf](https://github.com/junegunn/fzf) for
  [fish](https://github.com/fish-shell/fish-shell)
