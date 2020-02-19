#!/bin/bash

source appleProof_config.sh

LaunchAgents(){
  if [ -f "/System/Library/LaunchAgents/${2}.plist" ]
    then
    sudo launchctl "$1" -w "/System/Library/LaunchAgents/${2}.plist"
    echo "Agent ${agent} ${1}ed"
    fi
#
}
LaunchDaemons(){
  if [ -f "/System/Library/LaunchDaemons/${2}.plist" ]
    then
    sudo launchctl "$1" -w "/System/Library/LaunchDaemons/${2}.plist"
    echo "Daemon ${daemon} disabled"
    fi  
#
}

for agent in "${AGENTS[@]}"
  do
    LaunchAgents unload "${agent}"
  done

for daemon in "${DAEMONS[@]}"
  do
    LaunchDaemons unload "$daemon"
  done