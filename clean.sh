#!/bin/bash

# -------------------------------------------------------------
# This script will restore the /home/aluno dir to the original
# state. Run this manually, whenever you need to start
# the test. This is not run at @reboot to prevent users losing
# all their files in case of system failure or power shortages.
# -------------------------------------------------------------

# remove home folder
sudo rm -rf /home/aluno

# remove php folder
sudo rm -rf /var/www/html/*

# restore home folder from backup
sudo unzip /home/professor/vm-config/aluno-home.zip -d /

#create symlink to www folder
sudo ln -s /var/www /home/aluno

# set property to aluno
sudo chown -R aluno:aluno /home/aluno

# restore user favorites
sudo -u aluno gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'chromium_chromium.desktop', 'firefox_firefox.desktop', 'code_code.desktop', 'sublime-text_subl.desktop', 'dbeaver-ce.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Calculator.desktop']"
