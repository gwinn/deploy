printf '\33c\e[3J'

HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTDUP=erase
SHELL_SESSIONS_DISABLE=1

if type brew &>/dev/null; then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

fpath=(~/.local/share/zsh/completion $fpath)
fpath=(~/.local/share/zsh/functions $fpath)

autoload -Uz compinit promptinit vcs_info git_info ssh_info colors && colors
compinit -d ~/.cache/zsh/zcompdump
. ~/.local/share/zsh/scripts/fzf-tab/fzf-tab.plugin.zsh
promptinit

zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'l:|=* r:|=*' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' rehash true
zstyle ':completion::complete:*' cache-path ~/.cache/zsh/zcompcache
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
zstyle ':fzf-tab:*' popup-min-size 120 50
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
zstyle ':fzf-tab:*' switch-group '<' '>'
zstyle ':fzf-tab:complete:*:*' fzf-preview 'less ${(Q)realpath}'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -a -1 --color=always $realpath'
zstyle :compinstall filename '/home/gwinn/.zshrc'

# Use ❯ as the non-root prompt character; # for root
# Change the prompt character color if the last command had a nonzero exit code
PS1='
$(ssh_info)%{$fg[magenta]%}%~%u $(git_info)
%(?.%{$fg[blue]%}.%{$fg[red]%})%(!.#.❯)%{$reset_color%} '

setopt appendhistory autocd notify prompt_subst
setopt share_history hist_verify
setopt hist_expire_dups_first hist_ignore_all_dups hist_save_no_dups hist_ignore_dups hist_find_no_dups hist_ignore_space
bindkey -e
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

. ~/.profile

if type brew &>/dev/null; then
    . $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    . $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--preview='bat {}'"

alias cat='bat'
alias less='bat'
alias cd='z'
alias cp='cp -r'
alias delta='delta -s --hyperlinks --diff-so-fancy'
alias rm='rm -rf'
alias ls='ls -lash --color=always'
alias ll='eza -AlhogUm --color=always --icons=always --no-permissions --group-directories-first'
alias la='ls -A --color=always'
alias l='ls -CF --color=always'
alias vim='nvim'
alias ncdu='ncdu --color off -e'

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(rbenv init -)"
