#!/bin/bash

# -------------------------------------------------------------
# Run at @reboot
# -------------------------------------------------------------

ROOM=$1

sed -i "s/\(\"room\":\"\)\([a-zA-Z0-9-]*\)/\1$ROOM/" /root/config.json