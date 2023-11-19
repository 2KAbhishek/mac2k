#!/bin/bash

git submodule update --init --recursive --remote

cd "$PWD/dots2k" && ./setup.sh && cd .. || exit 1

ln -sfnv "$PWD/config/.yabairc" "$HOME/.yabairc"
ln -sfnv "$PWD/config/.skhdrc" "$HOME/.skhdrc"
ln -sfnv "$PWD/config/iterm.sh" "$HOME/.local/bin/iterm"
ln -sfnv "$PWD/dots2k/config/lazygit/config.yml" "$HOME/Library/Application Support/lazygit/"
