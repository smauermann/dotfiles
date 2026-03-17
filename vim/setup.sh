#!/usr/bin/env bash
cd "$(dirname "$0")"

source ../utils.sh

safe_link $PWD/.vimrc $HOME/.vimrc
safe_link $PWD/.vimrc $HOME/.ideavimrc
