export PAGER=most
export EDITOR=vim
export TERM=xterm-256color
export PATH=$PATH:$HOME/.local/bin
export MPLAYER_HOME=$HOME/.config/mplayer
export MYSQL_HISTFILE=$HOME/.cache/mysql_history
export GIMP2_DIRECTORY=$HOME/.local/share/gimp-2.8
export COMPOSER_HOME=$HOME/.cache/composer
export JAVA_HOME=/usr/lib/jvm/jdk-7-oracle-x64
export JDK_HOME=/usr/lib/jvm/jdk-7-oracle-x64
export JAVA_FONTS=$HOME/.loca/share/fonts

export DEBEMAIL="alex@lushpai.org"
export DEBFULLNAME="Alex Lushpai"

if [ -d "$HOME/.config/rbenv/bin" ]; then
    export PATH="$HOME/.config/rbenv/bin:$PATH"
    export RBENV_ROOT="$HOME/.config/rbenv"
    eval "$(rbenv init -)"
fi

