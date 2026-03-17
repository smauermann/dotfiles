#!/usr/bin/env bash
cd "$(dirname "$0")"

source ../utils.sh

safe_link $PWD/.gitconfig $HOME/.gitconfig
safe_link $PWD/.gitignore_global $HOME/.gitignore_global

create_gitconfig_if_missing() {
    local dir="$1"
    local name="$2"
    local email="$3"
    local config="$dir/.gitconfig"

    if [[ -f "$config" ]]; then
        echo "skip: $config already exists"
        return
    fi

    mkdir -p "$dir"
    cat > "$config" <<EOF
[user]
    name = $name
    email = $email
EOF
    echo "created $config"
}

create_gitconfig_if_missing ~/projects/github.com smauermann github@mauermann.io
create_gitconfig_if_missing ~/projects/git.deepl.dev CHANGEME CHANGEME
