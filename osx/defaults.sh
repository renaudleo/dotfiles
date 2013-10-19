################################################################################
# Finder                                                                       #
################################################################################

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Show hidden files by default
defaults write com.apple.Finder AppleShowAllFiles -bool true

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Enable snap-to-grid for desktop icons
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Show the ~/Library folder
chflags nohidden ~/Library

# Disable Resume system-wide
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# Disable Fast User Switching in menu bar
 defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool NO

# Disable bouncy scrolling system wide, excepting Safari :(
 defaults write -g NSScrollViewRubberbanding -int 0

################################################################################
# Keyboard                                                                     #
################################################################################

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Enable full keyboard access for all controls
# Essentially allows tabbing in modal dialogs
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

################################################################################
# Safari                                                                       #
################################################################################

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

################################################################################
# Itunes                                                                       #
################################################################################

# Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes
defaults write com.apple.iTunes disablePing -bool true

# Make ⌘ + F focus the search input in iTunes
# Essentially, it switches the full screen shortcut with the search shortcut
# To use these commands in another language, browse iTunes package contents,
# open Contents/Resources/your-language.lproj/Localizable.strings, then look
# for kMenuItemFullScreen and kHiddenMenuItemTargetSearch.
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Passer en mode plein écran" "@~F"
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Zone de recherche cible" "@F"

################################################################################
# Mail                                                                         #
################################################################################

# Disable send and reply animations in Mail.app
defaults write com.apple.Mail DisableReplyAnimations -bool true
defaults write com.apple.Mail DisableSendAnimations -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false