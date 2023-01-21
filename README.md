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

## Customize

You can use your customized fzf-tab sources to override the default, such as:

```zsh
zstyle ':fzf-tab:sources' config-directory /the/directory/containing/your/source.zsh
```

## Optional Dependencies

- [some programs](functions/helper.zsh).
- [lesspipe](https://github.com/wofr06/lesspipe): preview directory, text,
  image, etc better. You need to write your `~/.lessfilter` to customize
  `lesspipe`. My
  [~/.lessfilter](https://github.com/Freed-Wu/my-dotfiles/blob/main/.lessfilter)
  can be a reference.
- [gitmoji-cli](https://github.com/carloscuesta/gitmoji-cli): `gitmoji -u` to
  download `~/.gitmoji`
- [pinyin-completion](https://github.com/petronny/pinyin-completion): complete
  pinyin in your zsh.

## Preview

![dir](https://user-images.githubusercontent.com/32936898/195973421-24f28667-3754-46f2-9dd4-42523285aec2.png)

![text](https://user-images.githubusercontent.com/32936898/195970444-4220411d-5a11-4b60-a19f-a8839d827711.png)

![image](https://user-images.githubusercontent.com/32936898/195970442-1ca8db87-fcb2-469e-8578-163ea73a19ff.png)

![user-expand](https://user-images.githubusercontent.com/32936898/195970438-1282c11b-c2e4-455e-8a6a-76c7446ecf8b.png)

![-parameter-](https://user-images.githubusercontent.com/32936898/195970440-98a83556-e664-42e6-9adb-918b865053f3.png)

![-tilde-](https://user-images.githubusercontent.com/32936898/195971353-54ff0bd0-31e7-4bb0-bd88-1107f63a5751.png)

![-command-](https://user-images.githubusercontent.com/32936898/195971354-0a9e3228-96d9-4f94-ae58-265ca0709787.png)

![bindkey](https://user-images.githubusercontent.com/32936898/195971356-78d0e417-428c-481a-8c96-345d5d73be14.png)

![zinit](https://user-images.githubusercontent.com/32936898/195971845-006f9b46-0685-4c53-aef8-ab50b0038dfe.png)

![hexyl](https://user-images.githubusercontent.com/32936898/195972152-d0130d58-afd4-431c-8e9a-d1777e885257.png)

![git](https://user-images.githubusercontent.com/32936898/195972427-1abb643e-7a3e-4571-b9c3-e4dd911cf4e5.png)

![kill](https://user-images.githubusercontent.com/32936898/195972969-437326bb-4514-4c46-8a55-fe16808a0368.png)

![make](https://user-images.githubusercontent.com/32936898/195984087-c802d78f-00ae-4139-904c-74fb668cb844.png)

![git log](https://user-images.githubusercontent.com/32936898/195972831-86ff5c74-e18e-41a0-99d8-8b7679930e98.png)

![systemctl](https://user-images.githubusercontent.com/32936898/195973059-ab426a65-2e04-4e5a-8474-d201a6644adb.png)

![adb](https://user-images.githubusercontent.com/32936898/203727602-e33b617d-a218-435e-8f8a-585e7679857f.jpg)
