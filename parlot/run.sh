#!/bin/bash

ROOM="temp-room"
PPATH="/home/professor/vm-config/parlot"
FILE="config.json"

if [ -f "$PPATH/$FILE" ]; then
    "$PPATH/worker"
else 
    "$PPATH/worker" "-r" "$ROOM" "-a"
fi