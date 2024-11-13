abbr -S -f ls='eza'
abbr -S -f ll='eza -1'
abbr -S -f la='eza --icons --git --time-style relative -aghHl'
abbr -S -f cat='ccat'
abbr -S -f tree='eza -T'
abbr -S -f vi='nvim'
abbr -S -f diff='colordiff -u'
abbr -S -f top='htop'
abbr -S -f reload='exec zsh -l'
abbr -S -f k='kubectl'
abbr -S -f ti='terraform init'
abbr -S -f tp='terraform plan'
abbr -S -f ta='terraform apply'
abbr -S -f td='terraform destroy'
abbr -S -f tf='terraform fmt -recursive'
abbr -S -f awslocal='aws --endpoint-url=http://localhost:4566 --profile localstack'

abbr git -S -f st="status --short --branch"
abbr git -S -f co="checkout"
abbr git -S -f fe="fetch"
abbr git -S -f br="branch"
abbr git -S -f ci="commit"
abbr git -S -f cia="commit --amend"
abbr git -S -f ad="add"
abbr git -S -f rb="rebase"
abbr git -S -f pl="pull"
abbr git -S -f plr="pull --rebase"
abbr git -S -f cp="cherry-pick"
abbr git -S -f lg="log --graph --color --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
abbr git -S -f lga="log --graph --color --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --all"
abbr git -S -f lgns="log --graph --color --decorate --oneline --name-status"
