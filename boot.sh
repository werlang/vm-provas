#!/bin/bash

# -------------------------------------------------------------
# Run @reboot
# -------------------------------------------------------------

path="/home/professor/vm-config"

sudo "$path/restore.sh"
sudo "$path/sync.sh"
sudo PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' "$path/install.sh"
sudo "$path/block.sh"
