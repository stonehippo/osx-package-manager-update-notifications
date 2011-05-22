#!/bin/bash

#sleep for a few seconds to give growl a chance to start
sleep 15

# Update npm, then check to see if anything is outdated, both local and global
/usr/local/bin/npm -g update npm
TEST=`/usr/local/bin/npm outdated`
TEST_GLOBAL=`/usr/local/bin/npm -g outdated`

if [[ $TEST != '' ]]; then
  /usr/local/bin/growlnotify -s -n 'npm updater' -m "${TEST}" -t 'npm updater: updates available' 
else
  /usr/local/bin/growlnotify -n 'npm updater' -m 'no npm updates' -t 'npm updater: no updates'
fi

if [[ $TEST_GLOBAL != '' ]]; then
  /usr/local/bin/growlnotify -s -n 'npm updater' -m "${TEST_GLOBAL}" -t 'npm updater: global updates available' 
else
  /usr/local/bin/growlnotify -n 'npm updater' -m 'no global npm updates' -t 'npm updater: no global updates'
fi
