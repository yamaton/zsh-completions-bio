## About
This repository contains zsh shell completion scripts for bioinformatics tools.

![zsh-completions-no-window](https://user-images.githubusercontent.com/256288/154776190-a4991546-1af7-4c50-95d5-8f6872464992.svg)

## Install
\[⚠️Attention⚠️: I assume you are NOT using zsh frameworks like antigen and oh-my-zsh.\]

1. Add following to `.zshrc`. Following script sets the directory to store scripts as `~/.zsh/completions`.

```shell
## --------------------------------------------------------------------------
##   zsh-completions-bio
fpath=( ~/.zsh/completions "${fpath[@]}" )
autoload -Uz compinit; compinit

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

## Colors on completion suggestions
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

2. Save the fish scripts to `~/.zsh/completions`.

