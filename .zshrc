# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# .zshrc - Beautiful & Clean

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    sudo
    colored-man-pages
    extract
)

source $ZSH/oh-my-zsh.sh

# Modern CLI aliases
alias ls='eza --icons --group-directories-first'
alias ll='eza -lh --icons --git --group-directories-first'
alias la='eza -lah --icons --git --group-directories-first'
alias l='eza -lah --icons --git --group-directories-first'
alias lt='eza --tree --level=2 --icons'
alias cat='bat --style=plain --paging=never'
alias grep='rg'
alias find='fd'
alias top='btop'
alias df='duf'
alias du='dust'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate --all'
alias gd='git diff'

# Quick access
alias zshconfig='nvim ~/.zshrc'
alias alconfig='nvim ~/.config/alacritty/alacritty.toml'
alias reload='source ~/.zshrc'

alias av='source .venv/bin/activate'

# Environment
export EDITOR='nvim'
export HISTSIZE=50000
export SAVEHIST=50000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS

# Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Functions
mkcd() { mkdir -p "$1" && cd "$1"; }

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

. "$HOME/.local/bin/env"

# opencode
export PATH=/home/anjal/.opencode/bin:$PATH

# Dev Aliases
alias ll='ls -lah'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gpl='git pull'
alias glog='git log --oneline -n 10'
alias docker-clean='docker system prune -af'
alias dev='cd ~/projects'

export PATH="$HOME/.npm-global/bin:$PATH"

# NemoClaw PATH setup
export PATH="/home/anjal/.local/bin:$PATH"
# end NemoClaw PATH setup

export CLAUDE_CODE_USE_BEDROCK=1
export AWS_REGION=us-east-1

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/anjal/google-cloud-sdk/path.zsh.inc' ]; then . '/home/anjal/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/anjal/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/anjal/google-cloud-sdk/completion.zsh.inc'; fi
