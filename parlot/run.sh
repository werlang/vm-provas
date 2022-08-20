#!/bin/bash

FILE=./config.json
if [ -f "$FILE" ]; then
    ./worker
else 
    ./worker -r $ROOM -a
fi