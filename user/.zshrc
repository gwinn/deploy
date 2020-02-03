# The following lines were added by compinstall

zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'l:|=* r:|=*' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' rehash true
zstyle :compinstall filename '/home/gwinn/.zshrc'

autoload -Uz compinit promptinit
compinit -d ~/.cache/zcompdump
promptinit
prompt walters
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd notify
bindkey -e
# End of lines configured by zsh-newuser-install

. ~/.profile

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias rm='rm -rf'
alias cp='cp -r'
alias df='df -h -x tmpfs -x devtmpfs -x rootfs -x squashfs'

