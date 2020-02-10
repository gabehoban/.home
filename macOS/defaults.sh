#!/bin/bash
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -deactivate -configure -access -off >/dev/null 2>/dev/null
sudo /usr/bin/sed -i '' 's/^flags:.*/flags:lo,ad,fd,fm,-all/' /etc/security/audit_control
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on - disabled until confirming with team
sudo bash appleProof.sh
sudo chflags nohidden ~/Library
sudo defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
sudo defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
sudo defaults write -g 'InitialKeyRepeat_Level_Saved' -int 10
sudo defaults write .GlobalPreferences com.apple.mouse.scaling -1
sudo defaults write /Library/Application\ Support/CrashReporter/DiagnosticMessagesHistory.plist AutoSubmit -int 0
sudo defaults write /Library/Application\ Support/CrashReporter/DiagnosticMessagesHistory.plist ThirdPartyDataSubmit -int 0
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1
sudo defaults write /Library/Preferences/com.apple.AppleFileServer guestAccess -bool false
sudo defaults write /Library/Preferences/com.apple.AppleFileServer guestAccess -bool false
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
sudo defaults write /Library/Preferences/com.apple.mDNSResponder.plist NoMulticastAdvertisements -bool YES
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticallyInstallMacOSUpdates -int 1
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticCheckEnabled -bool TRUE
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticDownload -bool TRUE
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server AllowGuestAccess -bool false
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "lil-baymax"
sudo defaults write ~/Library/Preferences/com.apple.assistant.support.plist "Assistant Enabled" -int 0; killall -TERM Siri
sudo defaults write ~/Library/Preferences/com.apple.Terminal SecureKeyboardEntry -bool true
sudo defaults write com.apple.ActivityMonitor IconType -int 5
sudo defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
sudo defaults write com.apple.ActivityMonitor ShowCategory -int 0
sudo defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
sudo defaults write com.apple.ActivityMonitor SortDirection -int 0
sudo defaults write com.apple.appstore ShowDebugMenu -bool true
sudo defaults write com.apple.appstore WebKitDeveloperExtras -bool true
sudo defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
sudo defaults write com.apple.CrashReporter DialogType -string "none"
sudo defaults write com.apple.dashboard mcx-disabled -bool true
sudo defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
sudo defaults write com.apple.DiskUtility advanced-image-options -bool true
sudo defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
sudo defaults write com.apple.dock dashboard-in-overlay -bool true
sudo defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
sudo defaults write com.apple.dock expose-animation-duration -float 0.1
sudo defaults write com.apple.dock expose-group-by-app -bool false
sudo defaults write com.apple.dock launchanim -bool false
sudo defaults write com.apple.dock mru-spaces -bool false
sudo defaults write com.apple.dock persistent-apps -array
sudo defaults write com.apple.dock wvous-br-corner -int 5
sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
sudo defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
sudo defaults write com.apple.finder DisableAllAnimations -bool true
sudo defaults write com.apple.finder EmptyTrashSecurely -bool true
sudo defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
sudo defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
sudo defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
sudo defaults write com.apple.finder QLEnableTextSelection -bool true
sudo defaults write com.apple.finder ShowPathbar -bool true
sudo defaults write com.apple.finder WarnOnEmptyTrash -bool false
sudo defaults write com.apple.FindMyMac FMMEnabled -int 1
sudo defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
sudo defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
sudo defaults write com.apple.helpviewer DevMode -bool true
sudo defaults write com.apple.LaunchServices LSQuarantine -bool false
sudo defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
sudo defaults write com.apple.mail DisableReplyAnimations -bool true
sudo defaults write com.apple.mail DisableSendAnimations -bool true
sudo defaults write com.apple.menuextra.battery ShowPercent YES
sudo defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false
sudo defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
sudo defaults write com.apple.safari SendDoNotTrackHTTPHeader -int 1
sudo defaults write com.apple.screencapture disable-shadow -bool true
sudo defaults write com.apple.screencapture location -string "${HOME}/Desktop"
sudo defaults write com.apple.screencapture type -string "png"
sudo defaults write com.apple.screensaver askForPassword -int 1
sudo defaults write com.apple.screensaver askForPasswordDelay -int 0
sudo defaults write com.apple.security.revocation CRLStyle -string RequireIfPresent
sudo defaults write com.apple.security.revocation OCSPStyle -string RequireIfPresent
sudo defaults write com.apple.spotlight orderedItems -array '{"enabled" = 1;"name" = "APPLICATIONS";}'
sudo defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false
sudo defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"
sudo defaults write com.apple.terminal StringEncodings -array 4
sudo defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
sudo defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
sudo defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
sudo defaults write com.googlecode.iterm2 PromptOnQuit -bool false
sudo defaults write NSGlobalDomain AppleFontSmoothing -int 2
sudo defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
sudo defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
sudo defaults write NSGlobalDomain AppleShowAllExtensions -bool true
sudo defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
sudo defaults write NSGlobalDomain com.apple.springing.delay -float .5
sudo defaults write NSGlobalDomain com.apple.springing.enabled -bool true
sudo defaults write NSGlobalDomain InitialKeyRepeat -int 15
sudo defaults write NSGlobalDomain KeyRepeat -int 1
sudo defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
sudo defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
sudo defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
sudo defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
sudo defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
sudo defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
sudo defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2
sudo defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
sudo defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
sudo defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true
sudo killall mds > /dev/null 2>&1
sudo launchctl config system umask 022
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.auditd.plist
sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null
sudo mdutil -E / > /dev/null
sudo mdutil -i on / > /dev/null
sudo nvram boot-args="mbasd=1"
sudo nvram SystemAudioVolume=" "
sudo pmset -a autopoweroff 0
sudo pmset -a destroyfvkeyonstandby 1
sudo pmset -a hibernatemode 25
sudo pmset -a powernap 0
sudo pmset -a standby 0
sudo pmset -a standbydelay 0
sudo pmset -a womp 0
sudo pmset -c womp 0
sudo rm -f /private/var/vm/sleepimage
sudo scutil --set ComputerName "lil-baymax"
sudo scutil --set HostName "lil-baymax"
sudo scutil --set LocalHostName "lil-baymax"
sudo sed -i '' 's/expire-after.*/expire-after:1G/g' /etc/security/audit_control
sudo sed -i '' 's/flags.*/flags:lo,ad,fd,fm,-all/g' /etc/security/audit_control
sudo spctl --master-disable
sudo systemsetup -setcomputersleep Off > /dev/null
sudo systemsetup -setnetworktimeserver "time.apple.com"
sudo systemsetup -setremoteappleevents off >/dev/null 2>/dev/null
sudo systemsetup -setrestartfreeze on
sudo systemsetup -settimezone "America/Detriot" > /dev/null
sudo systemsetup -setusingnetworktime on 
sudo touch /private/var/vm/sleepimage && sudo chflags uchg /private/var/vm/sleepimage
osascript -e 'tell application "System Events" to tell every desktop to set picture to "~/.dotfiles/macOS/wallpaper.jpg"'
sudo killall Finder
sudo killall Dock

