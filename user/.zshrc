printf '\33c\e[3J'

HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=10000
SHELL_SESSIONS_DISABLE=1

if type brew &>/dev/null; then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

fpath=(~/.local/share/zsh/completion $fpath)
autoload -Uz compinit promptinit vcs_info colors && colors
compinit -d ~/.cache/zsh/zcompdump
promptinit

zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'l:|=* r:|=*' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' rehash true
zstyle :compinstall filename '/home/gwinn/.zshrc'
zstyle ':completion::complete:*' cache-path ~/.cache/zsh/zcompcache
# End of lines added by compinstall

ssh_info() {
  [[ "$SSH_CONNECTION" != '' ]] && echo '%(!.%{$fg[red]%}.%{$fg[yellow]%})%n%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%}:' || echo ''
}

# Echoes information about Git repository status when inside a Git repository
git_info() {

  # Exit if not inside a Git repository
  ! git rev-parse --is-inside-work-tree > /dev/null 2>&1 && return

  # Git branch/tag, or name-rev if on detached head
  local GIT_LOCATION=${$(git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD)#(refs/heads/|tags/)}

  local AHEAD="%{$fg[red]%}⇡NUM %{$reset_color%}"
  local BEHIND="%{$fg[cyan]%}⇣NUM %{$reset_color%}"
  local MERGING="%{$fg[magenta]%}⚡ ︎%{$reset_color%}"
  local UNTRACKED="%{$fg[red]%}● %{$reset_color%}"
  local MODIFIED="%{$fg[yellow]%}● %{$reset_color%}"
  local STAGED="%{$fg[green]%}● %{$reset_color%}"

  local -a DIVERGENCES
  local -a FLAGS

  local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_AHEAD" -gt 0 ]; then
    DIVERGENCES+=( "${AHEAD//NUM/$NUM_AHEAD}" )
  fi

  local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_BEHIND" -gt 0 ]; then
    DIVERGENCES+=( "${BEHIND//NUM/$NUM_BEHIND}" )
  fi

  local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
  if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
    FLAGS+=( "$MERGING" )
  fi

  if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    FLAGS+=( "$UNTRACKED" )
  fi

  if ! git diff --quiet 2> /dev/null; then
    FLAGS+=( "$MODIFIED" )
  fi

  if ! git diff --cached --quiet 2> /dev/null; then
    FLAGS+=( "$STAGED" )
  fi

  local -a GIT_INFO
  GIT_INFO+=( "\033[38;5;15m±" )
  [ -n "$GIT_STATUS" ] && GIT_INFO+=( "$GIT_STATUS" )
  [[ ${#DIVERGENCES[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)DIVERGENCES}" )
  [[ ${#FLAGS[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)FLAGS}" )
  GIT_INFO+=( "\033[38;5;15m$GIT_LOCATION%{$reset_color%}" )
  echo "${(j: :)GIT_INFO}"

}

# Use ❯ as the non-root prompt character; # for root
# Change the prompt character color if the last command had a nonzero exit code
PS1='
$(ssh_info)%{$fg[magenta]%}%~%u $(git_info)
%(?.%{$fg[blue]%}.%{$fg[red]%})%(!.#.❯)%{$reset_color%} '

# Lines configured by zsh-newuser-install
setopt appendhistory autocd notify prompt_subst
setopt share_history hist_expire_dups_first hist_ignore_dups hist_verify
bindkey -e
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
# End of lines configured by zsh-newuser-install

. ~/.profile

if type brew &>/dev/null; then
    . $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    . $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

alias cat='bat -f --theme=zenburn'
alias cd='z'
alias cp='cp -r'
alias rm='rm -rf'
alias ls='ls -lash'
alias ll='eza --tree --level=1 --long --colour=always --icons=always --git --octal-permissions --no-permissions --group-directories-first --total-size --all'
alias la='ls -A'
alias l='ls -CF'
alias vim='nvim'

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

