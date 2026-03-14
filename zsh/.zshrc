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

# Zimfw config
zstyle ':zim:git' aliases-prefix 'g'
ZIM_HOME=~/.zim
ZIM_CONFIG_FILE=~/.zimrc

# Install missing modules and update init.zsh if missing or outdated
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE} ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
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
