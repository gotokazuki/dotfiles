#!/bin/zsh

set -ex

TOOL_NAME='macos'
printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is started..."

## keyboard
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

## dock
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock tilesize -int 34
defaults write com.apple.dock orientation -string "right"

killall Dock

## mission controll
defaults write com.apple.dock mru-spaces -bool false

## finder
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowTabView -bool true
defaults write com.apple.finder AppleShowAllFiles YES

# battery
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# clock
defaults write com.apple.menuextra.clock ShowSeconds -bool true
killall SystemUIServer

# screen capture
defaults write com.apple.screencapture type -string "png"

# screen saver
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is completed"
