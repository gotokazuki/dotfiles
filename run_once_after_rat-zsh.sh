#!/bin/zsh

set -e

if ! 'command' -v rz >/dev/null 2>&1; then
curl -fsSL https://raw.githubusercontent.com/gotokazuki/rat-zsh/main/install.zsh | zsh
fi
