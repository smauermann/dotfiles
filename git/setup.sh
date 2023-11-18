#!/usr/bin/env bash

source ../utils.sh

safe_link $PWD/.gitconfig $HOME/.gitconfig
safe_link $PWD/.gitignore_global $HOME/.gitignore_global

