. "$HOME/.cargo/env"

export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden'
export FZF_DEFAULT_OPTS="--bind 'ctrl-f:reload($FZF_DEFAULT_COMMAND --no-ignore-vcs),ctrl-g:reload($FZF_DEFAULT_COMMAND)'"
