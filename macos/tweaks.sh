#!/usr/bin/env bash

# remove dock display delay
defaults write com.apple.dock autohide-time-modifier -float 0.4 && \
defaults write com.apple.dock autohide-delay -float 0 && \
killall Dock

# key repeat for vs code vim
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# key repeat speed
defaults write -g KeyRepeat -int 1
