#!/bin/bash

git submodule update --init --recursive --remote

cd "$PWD/dots2k" && ./setup.sh && cd .. || exit 1

ln -sfn "$PWD/config/.yabairc" "$HOME/.yabairc"
ln -sfn "$PWD/config/.skhdrc" "$HOME/.skhdrc"
ln -sfn "$PWD/config/iterm.sh" "$HOME/.local/bin/iterm"
ln -sfn "$PWD/dots2k/config/lazygit/config.yml" "$HOME/Library/Application Support/lazygit/"
