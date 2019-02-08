# COMMON
export PAGER=most
export EDITOR=vim

# RC
export GNUPGHOME=$HOME/.config/gnupg
export GTK_RC_FILES=$GTK_RC_FILES:$HOME/.config/gtk/gtkrc
export GTK2_RC_FILES=$GTK2_RC_FILES:$HOME/.config/gtk-2.0/gtkrc

# LIB
export COMPOSER_HOME=$HOME/.cache/composer
export GEMRC=$HOME/.config/gemrc
export GEM_HOME=$HOME/.local/lib/ruby
export GEM_SPEC_CACHE=$HOME/.cache/gem_specs
export MYSQL_HISTFILE=$HOME/.cache/mysql_history
export MYSQL_HOME=$HOME/.config/mysql
export VAGRANT_HOME=$HOME/.local/share/vagrant
export VAGRANT_DEFAULT_PROVIDER=virtualbox
export JAVA_HOME=/usr/java/latest
export GOPATH=$HOME/.local/lib/go
export KUBECONFIG=$HOME/.config/kube/config
export DOCKER_CONFIG=$HOME/.config/docker/
export CARGO_HOME=$HOME/.local/lib/cargo
export RUSTUP_HOME=$HOME/.local/lib/rustup
export RUST_SRC_PATH=$HOME/.local/src/rust/src
export COMPlus_INTERNAL_ThreadSuspendInjection=0

# LOCAL PATHS
export PATH=$PATH:$GEM_HOME/bin:$GOPATH/bin:$CARGO_HOME/bin:$HOME/.local/bin

# APPS
export VIMINIT='let $MYVIMRC="~/.config/vimrc" | source $MYVIMRC'
export CMUS_HOME=$HOME/.local/share/cmus
export MPLAYER_HOME=$HOME/.config/mplayer
export GIMP2_DIRECTORY=$HOME/.local/share/gimp
export DEVASSISTANT_HOME=$HOME/.local/share/devassistant
export DEVASSISTANT_PATH=$DEVASSISTANT_HOME:/usr/share/devassistant:/usr/local/share/devassistant
export ATOM_HOME=$HOME/.local/share/atom

# KDE
export KDEHOME=$HOME/.config/kde
export KWIN_TRIPLE_BUFFER=1

# NVIDIA
export __GL_SHADER_DISK_CACHE_PATH=$HOME/.cache
export __GL_YIELD="USLEEP"

# DEBIAN
export DEBEMAIL="alex@lushpai.org"
export DEBFULLNAME="Alex Lushpai"
