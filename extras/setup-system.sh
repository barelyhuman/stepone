#!/usr/bin/env bash

set -euxo pipefail

# close system prefs
osascript -e 'tell application "System Preferences" to quit'

# finder show statusbar  and pathbar
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true

# smaller sidebar icons in finder
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "1"

# show mounted drives on desktop
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Include debug in safari
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

echo "enable tap to click manually, can't automate that in monterey"
