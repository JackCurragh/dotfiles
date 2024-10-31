# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    z
    docker
)

source $ZSH/oh-my-zsh.sh

# Basic aliases that work everywhere
alias vim="nvim"
alias conda="micromamba"

# Load machine-specific configurations
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# P10k config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
