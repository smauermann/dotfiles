#!/usr/bin/env bash
source ../utils.sh

CONFIG_DIR=$HOME/.config
mkdir -p $CONFIG_DIR

# Link configs
safe_link $PWD/starship.toml $HOME/.config/starship.toml
safe_link $PWD/.zshrc $HOME/.zshrc
safe_link $PWD/.zimrc $HOME/.zimrc

# Create ~/.zsh structure (not symlinked, so cache stays out of the repo)
mkdir -p $HOME/.zsh/cache/completions
safe_link $PWD/.zsh/aliases.zsh $HOME/.zsh/aliases.zsh

COMP_DIR=$HOME/.zsh/cache/completions

# Cache brew prefix
brew --prefix > ~/.zsh/cache/brew-prefix

# Generate completions not handled by zimfw modules
# (kubectl and helm completions managed by joke/zim-kubectl and joke/zim-helm)
talosctl completion zsh > $COMP_DIR/_talosctl

# Rebuild zcompdump
rm -f ~/.zcompdump*
