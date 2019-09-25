# COMMON
export PAGER=most
export EDITOR=vim

# DEBIAN
export DEBEMAIL="lushpai@gmail.com"
export DEBFULLNAME="Alex Lushpai"

# RC
export GNUPGHOME=$HOME/.config/gnupg
export GTK_RC_FILES=$GTK_RC_FILES:$HOME/.config/gtk/gtkrc
export GTK2_RC_FILES=$GTK2_RC_FILES:$HOME/.config/gtk-2.0/gtkrc
export VIMINIT='let $MYVIMRC="~/.config/vimrc" | source $MYVIMRC'
export GIMP2_DIRECTORY=$HOME/.local/share/gimp

# LIB
export NVM_DIR=$HOME/.local/lib/node/nvm
export COMPOSER_HOME=$HOME/.local/lib/php/composer
export GEMRC=$HOME/.config/gemrc
export GEM_SPEC_CACHE=$HOME/.local/lib/ruby/gem/specs
export RBENV_ROOT=$HOME/.local/lib/ruby/rbenv
export PYENV_ROOT=$HOME/.local/lib/python/pyenv
export MYSQL_HISTFILE=$HOME/.cache/mysql_history
export MYSQL_HOME=$HOME/.config/mysql
export GOSRC=$HOME/.local/src/go/1.12
export GOPATH=$HOME/.local/lib/go
export KUBECONFIG=$HOME/.config/kube/config
export DOCKER_CONFIG=$HOME/.config/docker/
export CARGO_HOME=$HOME/.local/lib/rust/cargo
export RUSTUP_HOME=$HOME/.local/lib/rust/rustup
export RUST_SRC_PATH=$HOME/.local/lib/rust/src
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export COMPlus_INTERNAL_ThreadSuspendInjection=0
export TELEBIT_PATH=~/.local/opt/telebit

# LOCAL PATHS
export PATH=$PATH:$NVM_BIN:$RBENV_ROOT/bin:$PYENV_ROOT/bin:$GOSRC/bin:$GOPATH/bin:$CARGO_HOME/bin:$COMPOSER_HOME/vendor/bin:$HOME/.local/bin
