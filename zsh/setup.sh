#!/usr/bin/env bash

CONFIG_DIR=$HOME/.config/

mkdir -p $CONFIG_DIR

# install Oh My ZSH https://ohmyz.sh/
if [ ! -d ~/.oh-my-zsh ]; then
  echo "Installing Oh My ZSH"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# link starship config
ln -s $PWD/starship.toml $HOME/.config/
