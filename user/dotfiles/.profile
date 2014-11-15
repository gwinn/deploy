# COMMON
export PAGER=most
export EDITOR=vim
export TERM=xterm-256color

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache

# RC
export COMPOSER_HOME=$HOME/.cache/composer
export GNUPGHOME=$HOME/.config/gnupg
export GEMRC=$HOME/.config/gem/gemrc
#export GEM_HOME=$HOME/.local/lib/ruby/gem
#export GEM_SPEC_CACHE=$GEM_HOME/specs
export MYSQL_HISTFILE=$HOME/.cache/mysql_history
export MYSQL_HOME=$HOME/.config/mysql
export GTK_RC_FILES=$GTK_RC_FILES:$HOME/.config/gtk/gtkrc
export GTK2_RC_FILES=$GTK2_RC_FILES:$HOME/.config/gtk-2.0/gtkrc
export VIMINIT='let $MYVIMRC="~/.local/share/vim/vimrc" | source $MYVIMRC'

# LOCAL PATHS
#export PATH=$PATH:$HOME/.local/bin:$GEM_HOME/bin

# APPS
#export MPLAYER_HOME=$HOME/.config/mplayer
#export GIMP2_DIRECTORY=$HOME/.local/share/gimp-2.8

# JAVA
#export JAVA_HOME=/usr/lib/jvm/jdk-7-oracle-x64
#export JDK_HOME=/usr/lib/jvm/jdk-7-oracle-x64

# BASH
export PS1='\[\033[01;32m\][\u@\h]\[\033[01;34m\][\W]\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\]\[\033[00m\] » '
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
#export GIT_PS1_SHOWUPSTREAM=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

# KDE
#export KDEHOME=$HOME/.config/kde
#export KWIN_TRIPLE_BUFFER=1

# NVIDIA
export __GL_SHADER_DISK_CACHE_PATH=$HOME/.cache
export __GL_YIELD="USLEEP"

# DEBIAN
export DEBEMAIL="alex@lushpai.org"
export DEBFULLNAME="Alex Lushpai"

