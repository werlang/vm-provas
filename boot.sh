#!/bin/bash

# -------------------------------------------------------------
# Run @reboot
# -------------------------------------------------------------

sudo /home/professor/vm-config/restore.sh
sudo /home/professor/vm-config/sync.sh
sudo /home/professor/vm-config/install.sh
sudo /home/professor/vm-config/block.sh
