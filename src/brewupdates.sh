#!/bin/bash

#sleep for a few seconds to give growl a chance to start
sleep 15

# Update the local brew repository and check to see if anything is outdated
/usr/local/bin/brew update
TEST=`/usr/local/bin/brew outdated`

if [[ $TEST != '' ]]; then
  /usr/local/bin/growlnotify -s -n 'brew updater' -m "${TEST}" -t 'brew updater: updates available' 
else
  /usr/local/bin/growlnotify -n 'brew updater' -m 'no brew updates' -t 'brew updater: no updates'
fi
