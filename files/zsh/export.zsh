# lang
export LANG=ja_JP.UTF-8

# path
export PATH=$HOME/.nvim/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/opt/openssl/bin:$PATH

# XDG Base Directory Specification
export XDG_HOME=$HOME
export XDG_CONFIG_HOME=$XDG_HOME/.config
export XDG_CACHE_HOME=$XDG_HOME/.cache
export XDG_DATA_HOME=$XDG_HOME/.local/share
export XDG_STATE_HOME=$XDG_HOME/.local/state

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 100% --reverse --border'

# history
export HISTFILE=$XDG_CONFIG_HOME/zsh/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

# docker
export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_HOST=unix:///var/run/docker.sock

# kubectx
export KUBECTX_CURRENT_FGCOLOR=$(tput setaf 4)
export KUBECTX_CURRENT_BGCOLOR=$(tput setab 0)
export EDITOR="vim"

# terraform
export GODEBUG=asyncpreemptoff=1

# starship
export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship/starship.toml
