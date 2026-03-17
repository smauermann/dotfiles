#!/usr/bin/env bash
set -eu

source ../utils.sh

CONFIG_DIR=$HOME/.config/aerospace

mkdir -p $CONFIG_DIR
safe_link $PWD/aerospace.toml $CONFIG_DIR/aerospace.toml
