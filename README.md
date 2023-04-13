## About
This repository contains zsh shell completion scripts for bioinformatics tools.

![zsh-completions-no-window](https://user-images.githubusercontent.com/256288/154776190-a4991546-1af7-4c50-95d5-8f6872464992.svg)


## List of supported bioinformatics commands

Please refer to [the list](https://github.com/yamaton/h2o-curated-data/blob/main/bio.txt).


## Install
1. Add following lines to `.zshrc`. This script adds `~/.zsh/zsh-completions-bio/completion` to zsh's search paths, and sets the color of completion suggestions.

```shell
## --------------------------------------------------------------------------
##   zsh-completions-bio
fpath=( ~/.config/zsh/zsh-completions-bio/completions "${fpath[@]}" )
autoload -Uz compinit; compinit

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.config/zsh/cache

## Colors of completion suggestions
## https://stackoverflow.com/questions/23152157/how-does-the-zsh-list-colors-syntax-work
##
## 256 color palette
## 1;38;5;142  ... 256 color palette (142 )  # https://www.ditig.com/256-colors-cheat-sheet
##
## CLI_COLOR
##  0 ... default
## 30 ... black
## 31 ... red      91 ... light red
## 32 ... green    92 ... light green
## 33 ... yellow   93 ... light yellow
## 34 ... blue     94 ... light blue
## 35 ... magenta  95 ... light magenta
## 36 ... cyan     96 ... light cyan
## 37 ... white
## 41   ... red (background)
## 1;31 ... red (bold)
##
zstyle ':completion:*' list-colors '=(#b)*(--)( *)=37=1;38;5;103=1;38;5;142' '=*=0'
## --------------------------------------------------------------------------

```

2. Clone this repository under `~/.config/zsh`:

```shell
mkdir -p ~/.config/zsh
cd ~/.config/zsh
git clone https://github.com/yamaton/zsh-completions-bio.git
```
