#!/bin/bash

# -------------------------------------------------------------
# This script will clear the /home/aluno dir. Run this
# manually, whenever you need to start the test. This is not
# run at @reboot to prevent users losing all their files in
# case of system failure or power shortages.
# -------------------------------------------------------------

# remove everything except www, snap, and hidden files
find /home/aluno/ -not \( -path '*/snap' -prune -o -path '*/.*' -prune -o -path '*/www' -o -path '*/' \) -name \* -exec rm -r '{}' \;

# remove php folder
sudo rm -rf /var/www/html/*
