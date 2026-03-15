alias c=claude
alias cx="claude --dangerously-skip-permissions"

alias agrep='alias | rg'

# omz git plugin dependency (normally in omz lib/git.zsh)
function git_current_branch() {
  git rev-parse --abbrev-ref HEAD 2>/dev/null
}

gclp() {
  local url="$1"
  local repo_path
  repo_path=$(echo "$url" | sed -E 's#^(https?://|git@)##; s#:#/#; s#\.git$##')
  local dest="$HOME/projects/$repo_path"
  git clone "$url" "$dest" && cd "$dest"
}

alias kevent="kubectl get events --sort-by='.lastTimestamp' -w"
alias kn=kubens
alias kx=kubectx

alias tf="tofu"
alias tg="terragrunt"
