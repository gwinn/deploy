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

# LOCAL PATHS
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$CARGO_HOME/bin
export PATH=$PATH:$RBENV_ROOT/bin
export PATH=$PATH:$GEM_HOME/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/opt/homebrew/bin
