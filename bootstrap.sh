#!/usr/bin/env bash

set -e

echo "Setting up new machine"
read -p "Press enter to continue"

./brew/setup.sh
./zsh/setup.sh
./git/setup.sh
./vim/setup.sh
./macos/setup.sh
./ghostty/setup.sh
