#!/bin/bash

. ~/.dotfiles/macOS/Defaults/utils.sh

print_in_purple "\n • General UI & UX\n\n"

execute "sudo pmset -a hibernatemode 25 &&\
	 sudo pmset -a destroyfvkey onstandby 1" \
    "Evict FileVault keys in standby mode"

execute "sudo pmset -a powernap 0 &&\
         sudo pmset -a standby 0 &&\
	 sudo pmset -a standbydelay 0 &&\
	 sudo pmset -a autopoweroff 0" \
    "Setup system power settings"

execute "sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on &&\
         sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setloggingmode on &&\
         sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on" \
    "Setup System Firewall"

execute "sudo rm /private/var/vm/sleepimage" \
    "Remove the sleep image file to save disk space"

execute "sudo touch /private/var/vm/sleepimage" \
    "Create a zero-byte file instead…"

execute "sudo chflags uchg /private/var/vm/sleepimage" \
    "…and make sure it can’t be rewritten"

execute "defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true && \
         defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true" \
   "Avoid creating '.DS_Store' files on network or USB volumes"

execute "defaults write com.apple.menuextra.battery ShowPercent -string 'YES'" \
    "Show battery percentage from the menu bar"

execute "defaults write com.apple.CrashReporter UseUNC 1" \
    "Make crash reports appear as notifications"

execute "defaults write com.apple.LaunchServices LSQuarantine -bool false" \
    "Disable 'Are you sure you want to open this application?' dialog"

execute "defaults write com.apple.print.PrintingPrefs 'Quit When Finished' -bool true" \
    "Automatically quit the printer app once the print jobs are completed"

execute "defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true" \
    "Display ASCII control characters using caret notation in standard text views"

execute "defaults write com.apple.screencapture disable-shadow -bool true" \
    "Disable shadow in screenshots"

execute "defaults write com.apple.screencapture location -string '$HOME/Desktop'" \
    "Save screenshots to the Desktop"

execute "defaults write com.apple.screencapture show-thumbnail -bool false" \
    "Do not show thumbnail"

execute "defaults write com.apple.screencapture type -string 'png'" \
    "Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)"

execute "defaults write com.apple.screensaver askForPassword -int 1 && \
         defaults write com.apple.screensaver askForPasswordDelay -int 0" \
    "Require password immediately after into sleep or screen saver mode"

execute "defaults write com.apple.screencapture location -string '${HOME}/Desktop/screenshots'" \
    "Save screenshots to the desktop"

execute "defaults write -g AppleFontSmoothing -int 2" \
    "Enable subpixel font rendering on non-Apple LCDs Reference: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501"

execute "sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true" \
    "Enable HiDPI display modes (requires restart)"

execute "defaults write -g NSAutomaticWindowAnimationsEnabled -bool false" \
    "Disable window opening and closing animations."

execute "sudo nvram SystemAudioVolume=' '" \
    "Disable the sound effects on boot"

execute "sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName" \
    "Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window"

execute "defaults write -g NSDisableAutomaticTermination -bool true" \
    "Disable automatic termination of inactive apps"

execute "defaults write -g NSNavPanelExpandedStateForSaveMode -bool true" \
    "Expand save panel by default"

execute "defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool tru" \
    "Expand save panel by default"

execute "defaults write -g NSTableViewDefaultSizeMode -int 2" \
    "Set sidebar icon size to medium"

execute "defaults write -g PMPrintingExpandedStateForPrint -bool true" \
    "Expand print panel by default"

execute "defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false" \
    "Save to disk (not to iCloud) by default"

execute "defaults write com.apple.universalaccess reduceTransparency -bool true" \
    "Disable transparency in the menu bar and elsewhere on Yosemite"

execute "defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true" \
    "Expand print panel by default"

execute "defaults write -g QLPanelAnimationDuration -float 0" \
    "Disable opening a Quick Look window animations."

execute "defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false" \
    "Disable resume system-wide"

execute "sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string 'lil-baymax' && \
         sudo scutil --set ComputerName 'lil-baymax' && \
         sudo scutil --set HostName 'lil-baymax' && \
         sudo scutil --set LocalHostName 'lil-baymax'" \
    "Set computer name (as done via System Preferences → Sharing)"

execute "sudo systemsetup -setrestartfreeze on" \
    "Restart automatically if the computer freezes"

execute "defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false" \
    "Disable automatic capitalization as it’s annoying when typing code"

execute "defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false" \
    "Disable automatic period substitution as it’s annoying when typing code"

execute "defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false" \
    "Disable smart quotes as they’re annoying when typing code"

execute "defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false" \
    "Disable smart dashes as they’re annoying when typing code"

osascript -e 'quit app "SystemUIServer"'
