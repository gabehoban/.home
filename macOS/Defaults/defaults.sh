#!/bin/bash
. ~/.dotfiles/macOS/Defaults/utils.sh

echo `sysctl -n hw.model` `sysctl -n machdep.cpu.brand_string`

print_in_purple "\n • Preferences\n"

# We need to close `System Preferences` to avoid overriding the preferences that are being changed.

./close_system_preferences_panes.applescript

./dock.sh
./time_machine.sh
./transmission.sh
./trackpad.sh
./ui_and_ux.sh
