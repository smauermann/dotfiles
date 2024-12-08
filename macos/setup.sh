#!/usr/bin/env bash

# remove dock display delay
defaults write com.apple.dock autohide -bool true && \
defaults write com.apple.dock autohide-time-modifier -float 0.4 && \
defaults write com.apple.dock autohide-delay -float 0 && \
killall Dock

# key repeat for vs code vim
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# key repeat speed
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 0.5 # normal minimum is 2 (30 ms)
