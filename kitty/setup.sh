#!/usr/bin/env bash
set -eu

source ../utils.sh

CONFIG_DIR=$HOME/.config/kitty

mkdir -p $CONFIG_DIR
safe_link $PWD/kitty.conf $CONFIG_DIR/kitty.conf
cp -rf $PWD/kitty-themes $CONFIG_DIR/

# change the kitty icon
kitty +runpy 'from kitty.fast_data_types import cocoa_set_app_icon; import sys; cocoa_set_app_icon(*sys.argv[1:]); print("Changed kitty icon")' ./kitty-icon/kitty-dark.icns

rm /var/folders/*/*/*/com.apple.dock.iconcache; killall Dock
