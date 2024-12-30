#!/usr/bin/env bash
set -eu

source ../utils.sh

CONFIG_DIR=$HOME/.config/ghostty

mkdir -p $CONFIG_DIR
safe_link $PWD/config $CONFIG_DIR/config

