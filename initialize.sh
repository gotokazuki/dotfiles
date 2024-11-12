#!/bin/bash

set -e

printf '\033[32m%s\033[m\n' 'setup is started...'

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/macos/setup.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/nvim/setup.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/git/setup.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/wezterm/setup.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/zsh/setup.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/scripts/homebrew/setup.sh)"

printf '\033[32m%s\033[m\n' 'setup is completed"
