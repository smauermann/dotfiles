export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="$HOME/.local/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:$HOME/go/bin:$PATH"

# Homebrew prefix (cached by setup.sh)
if [[ -f ~/.zsh/cache/brew-prefix ]]; then
  HOMEBREW_PREFIX=$(<~/.zsh/cache/brew-prefix)
else
  HOMEBREW_PREFIX=$(brew --prefix)
fi
export HOMEBREW_PREFIX

# Generated completions (talosctl)
fpath=(~/.zsh/cache/completions $fpath)

# Zimfw config
zstyle ':zim:git' aliases-prefix 'g'
ZIM_HOME=~/.zim
ZIM_CONFIG_FILE=~/.zimrc

# Bootstrap zimfw if missing
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
    https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

# Install missing modules and initialize
source ${ZIM_HOME}/zimfw.zsh && zimfw install
source ${ZIM_HOME}/init.zsh

# Personal aliases
source ~/.zsh/aliases.zsh

# fzf overrides (zimfw fzf module handles base setup)
export FZF_COMPLETION_TRIGGER='**'
bindkey "ç" fzf-cd-widget

# Bash-style completions (tofu/terragrunt)
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C "$(command -v tofu)" tofu
complete -o nospace -C "$(command -v terragrunt)" terragrunt

[ -f ~/.zshrc.local ] && source ~/.zshrc.local
