# GPG Initialization
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

# ls - exa alias
alias ls='exa' # ls
alias l='exa -lbF --git' # list, size, type, git
alias ll='exa -lbGF --git' # long list
alias la='exa -lha --time-style=iso --git --color-scale' # all list
alias lx='exa -lha@ --time-style=iso --git --color-scale' # all + extended list

# tree views
alias lS='exa -1' # one column, just names
alias lt='exa --tree --level=1' # tree
alias ltt='exa --tree --level=2' # tree
alias lttt='exa --tree --level=3' # tree

# Prompt customization
PS1="%F{blue}%~ %(?.%F{green}.%F{red})%#%f "
