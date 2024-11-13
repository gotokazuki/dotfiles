# load sshkey from KeyChain
ssh-add -K &> /dev/null

# XDG Base Directory Specification
export XDG_HOME=$HOME
export XDG_CONFIG_HOME=$XDG_HOME/.config
export XDG_CACHE_HOME=$XDG_HOME/.cache
export XDG_DATA_HOME=$XDG_HOME/.local/share
export XDG_STATE_HOME=$XDG_HOME/.local/state

# lang
export LANG=ja_JP.UTF-8

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 100% --reverse --border'

# direnv
eval "$(direnv hook zsh)"

# history
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

# search history
function search-history() {
  BUFFER=$(history -n -r 1 | fzf --exact --reverse --query="$LBUFFER" --prompt="> ")
  CURSOR=${#BUFFER}
}
zle -N search-history
bindkey '^r' search-history

# search repo
function ghq-fzf() {
  ghq_root=$(ghq root)
  cd $(ghq list | fzf --preview "ls -laTp $(ghq root)/{} | tail -n+4 | awk '{print \$9\"/\"\$6\"/\"\$7 \" \" \$10}'" | xargs -I{} echo $ghq_root/{})
  zle reset-prompt
}
zle -N ghq-fzf
bindkey '^]' ghq-fzf

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
