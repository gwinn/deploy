# COMMON
export PAGER=bat
export EDITOR=nvim
export XDG_CONFIG_HOME=$HOME/.config
export LESSOPEN='| lessfilter %s'
export LESSHISTFILE=/dev/null

# LIB
export GOPATH=$HOME/.local/lib/go
export CARGO_HOME=$HOME/.local/lib/cargo
export RUSTUP_HOME=$HOME/.local/lib/rustup
export IPYTHONDIR=$HOME/.local/lib/ipython
export RBENV_ROOT=$HOME/.local/lib/rbenv
export GEM_HOME=$HOME/.local/lib/ruby/gem
export COMPOSER_HOME=$HOME/.local/lib/composer
export DOTNET_ROOT=/opt/homebrew/opt/dotnet/libexec
export LIBPQ_ROOT=/opt/homebrew/opt/libpq
export MYSQL_CLIENT=/opt/homebrew/opt/mysql-client

# LOCAL PATHS
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$CARGO_HOME/bin
export PATH=$PATH:$RBENV_ROOT/bin
export PATH=$PATH:$GEM_HOME/bin
export PATH=$PATH:$LIBPQ_ROOT/bin
export PATH=$PATH:$MYSQL_CLIENT/bin
export PATH=$PATH:$HOME/.config/composer/vendor/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/opt/homebrew/bin
