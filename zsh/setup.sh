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

# one-time completion generation (not covered by homebrew or oh-my-zsh plugins)
mkdir -p ~/.oh-my-zsh/completions
talosctl completion zsh > ~/.oh-my-zsh/completions/_talosctl

# clean up stale manual completions now provided by plugins/homebrew
rm -f ~/.oh-my-zsh/completions/_helm
rm -f ~/.oh-my-zsh/completions/_kubectl
rm -f ~/.oh-my-zsh/completions/_mise
