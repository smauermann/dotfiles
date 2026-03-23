#!/usr/bin/env bash
set -eu
cd "$(dirname "$0")"

source ../utils.sh

CONFIG_DIR=$HOME/.config/aerospace

mkdir -p $CONFIG_DIR
safe_link $PWD/aerospace.toml $CONFIG_DIR/aerospace.toml
safe_link $PWD/pip-sticky.sh $CONFIG_DIR/pip-sticky.sh
