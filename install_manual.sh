#!/bin/bash

# -------------------------------------------------------------
# This script is used when you want to install something on
# all VMs, but manually.
# -------------------------------------------------------------

path="/home/professor/vm-config"

sudo "$path/restore.sh"
sudo "$path/sync.sh"

# YOUR COMMANDS GOES HERE

sudo mysql --user="root" --password="profs22inf" --execute="ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';"

sudo add-apt-repository -y ppa:serge-rider/dbeaver-ce
sudo apt-get install -y dbeaver-ce

sudo -u aluno gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'chromium_chromium.desktop', 'firefox_firefox.desktop', 'code_code.desktop', 'sublime-text_subl.desktop', 'dbeaver-ce.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Calculator.desktop']"


# END OF YOUR COMMANDS

sudo "$path/block.sh"
