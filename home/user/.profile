# COMMON
export PAGER=bat
export EDITOR=nvim
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export LESSOPEN='| lessfilter %s'
export LESSHISTFILE=/dev/null

# LIB
export GOPATH=$HOME/.local/lib/go
export CARGO_HOME=$HOME/.local/lib/rust/cargo
export RUSTUP_HOME=$HOME/.local/lib/rust/rustup
export IPYTHONDIR=$HOME/.local/lib/ipython
export RBENV_ROOT=$HOME/.local/lib/rbenv
export GEM_HOME=$HOME/.local/lib/rbenv/gem
export COMPOSER_HOME=$HOME/.local/lib/composer
export COMPOSER_CACHE_DIR=$HOME/.cache/composer
export COMPOSER_DISABLE_XDEBUG_WARN=1
export LIBPQ_ROOT=/opt/homebrew/opt/libpq
export MYSQL_CLIENT=/opt/homebrew/opt/mysql-client

# LOCAL PATHS
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$COMPOSER_HOME/vendor/bin
export PATH=$PATH:$CARGO_HOME/bin
export PATH=$PATH:$GEM_HOME/bin
export PATH=$PATH:$LIBPQ_ROOT/bin
export PATH=$PATH:$MYSQL_CLIENT/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/opt/homebrew/bin
