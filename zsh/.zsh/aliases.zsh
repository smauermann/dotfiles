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
