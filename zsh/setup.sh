#!/usr/bin/env bash
cd "$(dirname "$0")"
source ../utils.sh

CONFIG_DIR=$HOME/.config
mkdir -p $CONFIG_DIR

# Link configs
safe_link $PWD/starship.toml $HOME/.config/starship.toml
safe_link $PWD/.zshrc $HOME/.zshrc
safe_link $PWD/.zimrc $HOME/.zimrc

# Install zimfw
ZIM_HOME=$HOME/.zim
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
    https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

# Create ~/.zsh structure (not symlinked, so cache stays out of the repo)
mkdir -p $HOME/.zsh/cache/completions
safe_link $PWD/.zsh/aliases.zsh $HOME/.zsh/aliases.zsh

COMP_DIR=$HOME/.zsh/cache/completions

# Cache brew prefix
brew --prefix > ~/.zsh/cache/brew-prefix

# Generate completions (zimfw alias modules don't include these)
kubectl completion zsh > $COMP_DIR/_kubectl
helm completion zsh > $COMP_DIR/_helm
talosctl completion zsh > $COMP_DIR/_talosctl

# Rebuild zcompdump
rm -f ~/.zcompdump*
