#!/bin/sh

# Customization: zsh-settings
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# Customization: prompt
PS1="%F{blue}%~ %(?.%F{green}.%F{red})%#%f "

# Initialization: VSCode
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Initialization: GPG
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

# Alias: exa-ls
alias ls='exa' # ls
alias l='exa -lbF --git' # list, size, type, git
alias ll='exa -lbGF --git' # long list
alias la='exa -lha --time-style=iso --git --color-scale' # all list
alias lx='exa -lha@ --time-style=iso --git --color-scale' # all + extended list
alias lt='exa --tree --level=1' # tree
alias ltt='exa --tree --level=2' # tree
alias lttt='exa --tree --level=3' # tree

# Extension: zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

