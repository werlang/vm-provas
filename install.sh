#!/bin/bash

# -------------------------------------------------------------
# This script is used when you want to install something on
# all VMs.
# -------------------------------------------------------------

sudo mysql --user="root" --password="profs22inf" --execute="ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';"

sudo add-apt-repository ppa:serge-rider/dbeaver-ce
sudo apt-get install dbeaver-ce
