#!/bin/zsh

OPTIONS=""
if [[ "$1" == "--debug" ]]; then
  set -x
  OPTIONS="--debug"
fi
set -e

printf '\033[32m%s\033[m\n' 'setup is started...'

/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/macos/setup.sh) $OPTIONS"
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/nvim/setup.sh) $OPTIONS"
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/git/setup.sh) $OPTIONS"
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/wezterm/setup.sh) $OPTIONS"
source <(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/zsh/setup.sh $OPTIONS)
source <(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/homebrew/setup.sh $OPTIONS)

printf '\033[32m%s\033[m\n' 'setup is completed'
