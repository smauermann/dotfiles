#!/usr/bin/env bash
# remove dock display delay
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
