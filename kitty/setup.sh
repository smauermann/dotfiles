#!/usr/bin/env bash

CONFIG_DIR=$HOME/.config/kitty

mkdir -p $CONFIG_DIR

ln -s $PWD/kitty.conf $CONFIG_DIR/
cp -rf $PWD/kitty-themes $CONFIG_DIR/

# change the icon before running this
$ rm /var/folders/*/*/*/com.apple.dock.iconcache; killall Dock
