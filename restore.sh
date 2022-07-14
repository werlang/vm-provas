#!/bin/bash

# -------------------------------------------------------------
# This script will restore changes made from block.sh script.
# -------------------------------------------------------------

# stop cutom dns service
sudo service dnsmasq stop
# restart default dns service
sudo systemctl restart systemd-resolved

# restore usb mounting
sudo systemctl unmask udisks2.service
sudo systemctl restart udisks2.service

