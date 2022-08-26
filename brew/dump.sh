#!/usr/bin/env bash

set -e

if [[ -e Brewfile ]]; then
  echo "Delete Brewfile before dump."
  exit
fi

brew bundle dump
