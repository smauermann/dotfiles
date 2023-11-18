#!/usr/bin/env bash

source ../utils.sh

CONFIG_DIR=$HOME/.config/

mkdir -p $CONFIG_DIR

# install Oh My ZSH https://ohmyz.sh/
if [ ! -d ~/.oh-my-zsh ]; then
  echo "Installing Oh My ZSH"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# link starship config
safe_link $PWD/starship.toml $HOME/.config/starship.toml

# link zsh files
safe_link $PWD/.zshrc $HOME/.zshrc
safe_link $PWD/.zsh_completions $HOME/.zsh_completions

