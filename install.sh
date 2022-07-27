#!/bin/bash

# -------------------------------------------------------------
# This script is used when you want to install something on
# all VMs.
# -------------------------------------------------------------

sudo cp -f /home/professor/vm-config/php.ini /etc/php/8.1/apache2
sudo chown root:root /etc/php/8.1/apache2/php.ini
sudo chmod 644 /etc/php/8.1/apache2/php.ini
sudo service apache2 restart
