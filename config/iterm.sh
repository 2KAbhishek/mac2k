#!/bin/bash
#
# Open new iTerm window from the command line
#
# Usage:
#     iterm                   Opens the current directory in a new iTerm window
#     iterm [PATH]            Open PATH in a new iTerm window
#     iterm [CMD]             Open a new iTerm window and execute CMD
#     iterm [PATH] [CMD] ...  You can prob'ly guess
#
# Example:
#     iterm ~/Code/HelloWorld ./setup.sh
#
# References:
#     iTerm AppleScript Examples:
#     https://iterm2.com/applescript.html

# OSX only
[ "$(uname -s)" != "Darwin" ] && return

function iterm() {
    local cmd=""
    local wd="$PWD"
    local args="$@"

    if [ -d "$1" ]; then
        wd="$1"
        args="${@:2}"
    fi

    if [ -n "$args" ]; then
        # echo $args
        cmd="; $args"
    fi

    osascript &>/dev/null <<EOF
        tell application "iTerm2"
            create window with default profile
            tell current session of current window
                write text "cd $wd$cmd"
            end tell
        end tell
EOF
}

iterm $@

