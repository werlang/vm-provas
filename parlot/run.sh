#!/bin/bash

ROOM="temp-room"
PATH="/home/professor/vm-config/parlot"
FILE="config.json"

if [ -f "$PATH/$FILE" ]; then
    "$PATH/worker"
else 
    "$PATH/worker" "-r" "$ROOM" "-a"
fi