#!/bin/bash

cd "$PWD/dots" || exit
./setup.sh
cd ..
ln -sfnv "$PWD/config/.yabairc" "$HOME/.yabairc"
ln -sfnv "$PWD/config/.skhdrc" "$HOME/.skhdrc"
ln -sfnv "$PWD/dots/config/lazygit/config.yml" "$HOME/Library/Application Support/lazygit/"
