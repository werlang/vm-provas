#!/bin/bash

EXPORT PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin

ROOM="temp-room"
PATH="/home/professor/vm-config/parlot"
FILE="config.json"

if [ -f "$PATH/$FILE" ]; then
    "$PATH/worker"
else 
    "$PATH/worker" "-r" "$ROOM" "-a"
fi