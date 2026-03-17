#!/usr/bin/env bash
cd "$(dirname "$0")"
source ../utils.sh
mkdir -p ~/.config/mise
safe_link $PWD/config.toml ~/.config/mise/config.toml
mise trust
mise install
