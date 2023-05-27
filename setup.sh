#!/usr/bin/env bash

./dots/setup.sh
ln -sfnv "$PWD/.yabairc" "$HOME/.yabairc"
ln -sfnv "$PWD/.skhdrc" "$HOME/.skhdrc"
ln -sfnv "$PWD/dots/.config/lazygit/config.yml" "$HOME/Library/Application Support/lazygit/"
