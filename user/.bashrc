# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend
#bind 'TAB:menu-complete'
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

HISTFILESIZE=2000
HISTSIZE=10000
HISTFILE=~/.cache/bash_history

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias rm='rm -rf'
alias cp='cp -r'
alias df='df -h -x tmpfs -x devtmpfs -x rootfs'
alias tmux='tmux -f ~/.config/tmux.conf'
alias nano="nano -AESimw"
alias jenkins_test="docker-compose --no-ansi -f docker-compose-test.yml"
#alias ngrok="ngrok -config ~/.config/ngrok/auth.yml -config ~/.config/ngrok/config.yml"
alias code="code --extensions-dir=/home/gwinn/.local/share/vscode"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

fn_git_ps1=`type -t __git_ps1`
if [[ $(type -t __git_ps1) != "function" ]] || [[ $(uname -a) = *"Ubuntu"* ]]; then
  . ~/.local/lib/bash/git-prompt.sh
fi

export TERM=xterm-256color
export PS1='\[\033[01;32m\]\[\033[01;34m\][\W]\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\]\[\033[00m\] » '
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_DESCRIBE_STYLE="contains"
export GIT_PS1_SHOWCOLORHINTS=1
export QUOTING_STYLE=literal

echo -e -n "\x1b[\x36 q"

