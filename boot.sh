#!/bin/bash

# -------------------------------------------------------------
# Run @reboot
# -------------------------------------------------------------

sudo /home/professor/vm-config/restore.sh
sudo /home/professor/vm-config/sync.sh
sudo /home/professor/vm-config/install.sh > /home/professor/vm-config/log.log
sudo /home/professor/vm-config/block.sh
