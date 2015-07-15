# COMMON
export PAGER=most
export EDITOR=vim
export TERM=xterm-256color

# RC
export COMPOSER_HOME=$HOME/.cache/composer
export GNUPGHOME=$HOME/.config/gnupg
export GEMRC=$HOME/.config/gem/gemrc
export GEM_HOME=/usr/local/lib/ruby/gems
export GEM_SPEC_CACHE=$GEM_HOME/specs
export MYSQL_HISTFILE=$HOME/.cache/mysql_history
export MYSQL_HOME=$HOME/.config/mysql
export GTK_RC_FILES=$GTK_RC_FILES:$HOME/.config/gtk/gtkrc
export GTK2_RC_FILES=$GTK2_RC_FILES:$HOME/.config/gtk-2.0/gtkrc
export VIMINIT='let $MYVIMRC="~/.local/share/vim/vimrc" | source $MYVIMRC'
export VAGRANT_HOME=$HOME/.local/share/vagrant
export VAGRANT_DEFAULT_PROVIDER=virtualbox
export GOPATH=$HOME/Sources/go
export JAVA_HOME=/usr/java/latest
export DEVASSISTANT_HOME=$HOME/.local/share/devassistant
export DEVASSISTANT_PATH=$DEVASSISTANT_HOME:/usr/share/devassistant:/usr/local/share/devassistant

# LOCAL PATHS
export PATH=$PATH:$GEM_HOME/bin:$GOPATH/bin:$HOME/.local/bin

# APPS
export MPLAYER_HOME=$HOME/.config/mplayer
export GIMP2_DIRECTORY=$HOME/.local/share/gimp-2.8

# BASH
export PS1='\[\033[01;32m\][\u@\h]\[\033[01;34m\][\W]\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\]\[\033[00m\] » '
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

# KDE
export KDEHOME=$HOME/.config/kde
export KWIN_TRIPLE_BUFFER=1

# NVIDIA
export __GL_SHADER_DISK_CACHE_PATH=$HOME/.cache
export __GL_YIELD="USLEEP"

# DEBIAN
export DEBEMAIL="alex@lushpai.org"
export DEBFULLNAME="Alex Lushpai"

