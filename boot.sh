#!/bin/bash

# -------------------------------------------------------------
# Run @reboot
# -------------------------------------------------------------

sudo /home/professor/vm-config/restore.sh
sudo /home/professor/vm-config/sync.sh
# sudo PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' /home/professor/vm-config/install.sh
sudo /home/professor/vm-config/block.sh
