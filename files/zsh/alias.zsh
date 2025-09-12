abbr --force --quiet ls='eza'
abbr --force --quiet ll='eza -1'
abbr --force --quiet la='eza --icons --git --time-style relative -aghHl'
abbr --force --quiet cat='ccat'
abbr --force --quiet tree='eza -T'
abbr --force --quiet vi='nvim'
abbr --force --quiet diff='colordiff -u'
abbr --force --quiet top='htop'
abbr --force --quiet 'zed /'='zed .'

# reload zsh
abbr --force --quiet reload='exec zsh -l'

# k8s
abbr --force --quiet k='kubectl'

# terraform
abbr --force --quiet ti='terraform init'
abbr --force --quiet tp='terraform plan'
abbr --force --quiet ta='terraform apply'
abbr --force --quiet td='terraform destroy'
abbr --force --quiet tf='terraform fmt -recursive'

# localstack
abbr --force --quiet awslocal='aws --endpoint-url=http://localhost:4566 --profile localstack'

# git
abbr git --force --quiet st="status --short --branch"
abbr git --force --quiet co="checkout"
abbr git --force --quiet fe="fetch"
abbr git --force --quiet br="branch"
abbr git --force --quiet ci="commit"
abbr git --force --quiet cia="commit --amend"
abbr git --force --quiet chp="cherry-pick"
abbr git --force --quiet lg="log --graph --color --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
abbr git --force --quiet lga="log --graph --color --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --all"
abbr git --force --quiet lgns="log --graph --color --decorate --oneline --name-status"
