# Path to your oh-my-zsh configuration.
ZSH=$HOME/.config/zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallifrey"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias rm='rm -rf'
alias cp='cp -r'
alias df='df -h -x tmpfs -x devtmpfs -x rootfs'
alias phs='php -S localhost:8888 -c /etc/php5/fpm/php.ini'
alias symfony='php -d memory_limit=512M app/console'
alias mcabber="mcabber -f $HOME/.config/mcabber/mcabberrc"
alias irssi="irssi --config=$HOME/.config/irssi/config --home=$HOME/.config/irssi"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=4

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(composer debian git git-remote-branch github postgres rbenv rake ruby symfony2)

source $ZSH/oh-my-zsh.sh

HISTFILE=$HOME/.cache/zsh_history
HISTSIZE=1000
SAVEHIST=1000

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on

