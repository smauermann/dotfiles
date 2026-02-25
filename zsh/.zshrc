######################
# Oh My ZSH Settings #
######################

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=~/.oh-my-zsh

ZSH_THEME=""
ENABLE_CORRECTION="true"

# Custom completions dir (generated once by setup.sh, e.g. talosctl)
# Must be added before oh-my-zsh sources compinit
fpath=(~/.oh-my-zsh/completions $fpath)

plugins=(
  argocd
  aws
  brew
  fzf
  git
  gitfast
  gitignore
  helm
  kubectl
)

source $ZSH/oh-my-zsh.sh

############
# Settings #
############

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

###########
# Aliases #
###########

alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias kevent="kubectl get events --sort-by='.lastTimestamp' -w"
alias tg="terragrunt"
alias tf="tofu"
alias kn=kubens
alias kx=kubectx
alias c=claude
alias cx="claude --dangerously-skip-permissions"

function ky() {
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Usage: ky <resource_type> <resource_name>"
        return 1
    fi
    kubectl get "$1" "$2" -o yaml | yq
}

#########
# Tools #
#########

# uv/uvx, claude, etc.
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:$HOME/go/bin"

HOMEBREW_PREFIX=$(brew --prefix)
source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

eval "$(direnv hook zsh)"

export FZF_COMPLETION_TRIGGER='**'
bindkey "ç" fzf-cd-widget

eval "$(starship init zsh)"
eval "$(mise activate zsh)"

# Bash-style completions (tofu/terragrunt need this, resolved dynamically via mise shims)
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C "$(command -v tofu)" tofu
complete -o nospace -C "$(command -v terragrunt)" terragrunt

[ -f ~/.zshrc.local ] && source ~/.zshrc.local
