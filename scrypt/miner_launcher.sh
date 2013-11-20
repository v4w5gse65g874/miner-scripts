#!/bin/bash

DEFAULT_DELAY=0
if [ "x$1" = "x" -o "x$1" = "xnone" ]; then
   DELAY=$DEFAULT_DELAY
else
   DELAY=$1
fi
sleep $DELAY
su rig1 -c "screen -dmS cgm /home/rig1/mine_litecoins.sh"
