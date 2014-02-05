export PAGER=most
export EDITOR=vim
export PATH=$PATH:$HOME/.local/bin

# Stop put all this shit in $HOME
export MPLAYER_HOME=$HOME/.config/mplayer
export MYSQL_HISTFILE=$HOME/.cache/mysql_history
export GIMP2_DIRECTORY=$HOME/.local/share/gimp-2.8

if [ -d "$HOME/.config/rbenv/bin" ]; then
    export PATH="$HOME/.config/rbenv/bin:$PATH"
    export RBENV_ROOT="$HOME/.config/rbenv"
    eval "$(rbenv init -)"
fi

