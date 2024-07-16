#!/bin/bash

configure_macos() {
    echo "Configuring macOS"

    # "Finder: show all filename extensions"
    defaults write NSGlobalDomain AppleShowAllExtensions -bool true
    # "show hidden files by default"
    defaults write com.apple.Finder AppleShowAllFiles -bool true
    # "only use UTF-8 in Terminal.app"
    defaults write com.apple.terminal StringEncodings -array 4
    # "expand save dialog by default"
    defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
    # "show the ~/Library folder in Finder"
    chflags nohidden ~/Library
    # "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
    defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
    # "Enable subpixel font rendering on non-Apple LCDs"
    defaults write NSGlobalDomain AppleFontSmoothing -int 2
    # "Use current directory as default search scope in Finder"
    defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
    # "Show Path bar in Finder"
    defaults write com.apple.finder ShowPathbar -bool true
    # "Show Status bar in Finder"
    defaults write com.apple.finder ShowStatusBar -bool true
    # "Disable press-and-hold for keys in favor of key repeat"
    defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
    # "Set a blazingly fast keyboard repeat rate"
    defaults write NSGlobalDomain KeyRepeat -int 1
    # "Set a shorter Delay until key repeat"
    defaults write NSGlobalDomain InitialKeyRepeat -int 15
    # "Enable tap to click (Trackpad)"
    defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
    # "Enable Safari’s debug menu"
    defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
    # "Kill affected applications"
    for app in Safari Finder Dock Mail SystemUIServer; do killall "$app" >/dev/null 2>&1; done
}

install_brew() {
    echo "Setting up brew"
    if ! command -v "brew" &>/dev/null; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
}

install_packages() {
    echo "Installing brew packages"
    ln -sfn "$PWD/config/.Brewfile" "$HOME/"
    brew bundle install --global --verbose --no-upgrade
    brew bundle check --global --verbose
}

setup_symlinks() {
    echo "Setting up symlinks"
    ln -sfn "$PWD/config/aerospace" "$HOME/.config/"
    ln -sfn "$PWD/dots2k/config/lazygit/config.yml" "$HOME/Library/Application Support/lazygit/"
}

setup_mac2k() {
    configure_macos
    install_brew
    install_packages
    setup_symlinks
    cd "$PWD/dots2k" && ./setup.sh && cd .. || exit 1
}

main() {
    if [ -f "$PWD/dots2k/setup.sh" ]; then
        setup_mac2k
    else
        git submodule update --init --recursive --remote && setup_mac2k
    fi
}

main "$@"
