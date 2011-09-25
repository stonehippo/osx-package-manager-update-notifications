#!/bin/bash

#sleep for a few seconds to give growl a chance to start
sleep 15

TEST=`gem outdated`

if [[ $TEST != '' ]]; then
  /usr/local/bin/growlnotify -s -n 'gem updater' -m "${TEST}" -t 'gem updates available'
else
  /usr/local/bin/growlnotify -n 'gem updater' -m 'no gem updates' -t 'gem updater: no updates'
fi