#!/usr/bin/env bash

which -s brews
if [[ $? != 0 ]] ; then
    echo "Brew not found, installing brew and all packages"
    read -p "Press enter to continue"

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew bundle
else
    brew update
fi

