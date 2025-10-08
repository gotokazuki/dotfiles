#!/bin/zsh

set -ex

printf '\033[32m%s\033[m\n' 'setup is started...'

/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/macos/setup.sh)"
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/nvim/setup.sh)"
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/git/setup.sh)"
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/wezterm/setup.sh)"
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/zsh/setup.sh)"
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/starship/setup.sh)"

printf '\033[32m%s\033[m\n' 'setup is completed'
