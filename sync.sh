#!/bin/bash

# -------------------------------------------------------------
# This script will sync changes with github repo. This can be
# used as a way to update whitelists or any other script.
# This is run at @reboot so dont worry, every VM will have
# their scripts and whitelist updated at every restart.
# -------------------------------------------------------------

# pull from repo
sudo -u professor git -C /home/professor/vm-config restore .
sudo -u professor git -C /home/professor/vm-config pull origin main --rebase
