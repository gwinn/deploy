# COMMON
export PAGER=less
export EDITOR=nano

# NVIDIA
export __GL_SHADER_DISK_CACHE_PATH=$HOME/.cache
export __GL_YIELD="USLEEP"

# DEBIAN
export DEBEMAIL="alex@lushpai.org"
export DEBFULLNAME="Alex Lushpai"

# RC
export GNUPGHOME=$HOME/.config/gnupg
export GTK_RC_FILES=$GTK_RC_FILES:$HOME/.config/gtk/gtkrc
export GTK2_RC_FILES=$GTK2_RC_FILES:$HOME/.config/gtk-2.0/gtkrc
export RANGER_LOAD_DEFAULT_RC=FALSE

# APPS
export VIMINIT='let $MYVIMRC="~/.config/vimrc" | source $MYVIMRC'
export GIMP2_DIRECTORY=$HOME/.local/share/gimp
export KDEHOME=$HOME/.config/kde
export KWIN_TRIPLE_BUFFER=1

# LIB
export COMPOSER_HOME=$HOME/.local/lib/composer
export GEMRC=$HOME/.config/gemrc
export GEM_SPEC_CACHE=$HOME/.cache/gem/specs
export NVM_DIR=$HOME/.local/lib/nvm
export RBENV_ROOT=$HOME/.local/lib/rbenv
export PYENV_ROOT=$HOME/.local/lib/pyenv
export MYSQL_HISTFILE=$HOME/.cache/mysql_history
export MYSQL_HOME=$HOME/.config/mysql
export GOSRC=$HOME/.local/src/go
export GOPATH=$HOME/.local/lib/go
export KUBECONFIG=$HOME/.config/kube/config
export DOCKER_CONFIG=$HOME/.config/docker/
export CARGO_HOME=$HOME/.local/lib/cargo
export RUSTUP_HOME=$HOME/.local/lib/rustup
export RUST_SRC_PATH=$HOME/.local/src/rust
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export COMPlus_INTERNAL_ThreadSuspendInjection=0
export TELEBIT_PATH=~/.local/opt/telebit

# LOCAL PATHS
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$NVM_BIN
export PATH=$PATH:$RBENV_ROOT/bin
export PATH=$PATH:$PYENV_ROOT/bin
export PATH=$PATH:$GOSRC/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$CARGO_HOME/bin/
export PATH=$PATH:$RUSTUP/bin
export PATH=$PATH:$COMPOSER_HOME/vendor/bin

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

