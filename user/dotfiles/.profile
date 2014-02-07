# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PAGER=most
export EDITOR=vim
export PATH=$PATH:$HOME/.local/bin

# Stop put all this shit in $HOME
export COMPOSER_HOME=$HOME/.config/composer
export MPLAYER_HOME=$HOME/.config/mplayer
export MYSQL_HISTFILE=$HOME/.cache/mysql_history
export GIMP2_DIRECTORY=$HOME/.local/share/gimp-2.8

if [ -d "$HOME/.config/rbenv/bin" ]; then
    export PATH="$HOME/.config/rbenv/bin:$PATH"
    export RBENV_ROOT="$HOME/.config/rbenv"
    eval "$(rbenv init -)"
fi
