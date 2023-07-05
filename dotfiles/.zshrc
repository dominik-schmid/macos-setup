# Paths
PATH="/usr/local/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"

# Set the location where n (node version manager) installs Node versions
export N_PREFIX=~/.local/n
# and add it to the PATH variable
PATH="$N_PREFIX/bin:$PATH"
export PATH

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Init Starship
eval "$(starship init zsh)"

# Aliases
alias ll='exa -lag --header'
alias la='exa -lag --header -a'
alias http="nocorrect http"
alias diesel="nocorrect diesel"
alias cr="cargo run"
alias cc="cargo check"
alias cb="cargo build"
alias ct="cargo test"
alias vim="nvim"

# Init fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Initialize autocompletion
autoload -U +X bashcompinit && bashcompinit

# Enable auto-correction
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Set language to English so NeoVim and other tools will also be in English
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

