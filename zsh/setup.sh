#!/usr/bin/env bash

CONFIG_DIR=$HOME/.config/

mkdir -p $CONFIG_DIR

ln -s $PWD/starship.toml $HOME/.config/
