alias c=claude
alias cx="claude --dangerously-skip-permissions"

alias agrep='alias | rg'

gcl() {
  local url="$1"
  local repo_path
  repo_path=$(echo "$url" | sed -E 's#^(https?://|git@)##; s#:#/#; s#\.git$##')
  local dest="$HOME/projects/$repo_path"
  git clone "$url" "$dest" && cd "$dest"
}
alias gcm='git checkout $(git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@")'
alias grt='cd $(git rev-parse --show-toplevel)'

alias kevent="kubectl get events --sort-by='.lastTimestamp' -w"
alias kn=kubens
alias kx=kubectx

alias tf="tofu"
alias tg="terragrunt"
