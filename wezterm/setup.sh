#!/usr/bin/env bash

source ../utils.sh

CONFIG_DIR=$HOME/.config

mkdir -p $CONFIG_DIR/wezterm

# link wezterm config
safe_link $PWD/wezterm.lua $CONFIG_DIR/wezterm/wezterm.lua
