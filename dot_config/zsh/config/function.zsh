# search history
function _search_history() {
  BUFFER=$(history -n -r 1 | fzf --exact --reverse --query="$LBUFFER" --prompt="> ")
  CURSOR=${#BUFFER}
}
zle -N _search_history
bindkey '^r' _search_history

# search repo
function ghqui() {
  ghq_root=$(ghq root)
  cd $(ghq list | fzf --preview "ls -laTp $(ghq root)/{} | tail -n+4 | awk '{print \$9\"/\"\$6\"/\"\$7 \" \" \$10}'" | xargs -I{} echo $ghq_root/{})
  zle reset-prompt
}
zle -N ghqui
bindkey '^]' ghqui
alias ghqui='ghqui'
