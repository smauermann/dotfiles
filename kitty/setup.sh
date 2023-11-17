#!/usr/bin/env bash
set -eu

CONFIG_DIR=$HOME/.config/kitty

mkdir -p $CONFIG_DIR

if [[ ! -f $CONFIG_DIR/kitty.conf ]]; then
  ln -s $PWD/kitty.conf $CONFIG_DIR/
fi

cp -rf $PWD/kitty-themes $CONFIG_DIR/

# change the kitty icon
kitty +runpy 'from kitty.fast_data_types import cocoa_set_app_icon; import sys; cocoa_set_app_icon(*sys.argv[1:]); print("OK")' ./kitty-icon/kitty-dark.icns

rm /var/folders/*/*/*/com.apple.dock.iconcache; killall Dock
