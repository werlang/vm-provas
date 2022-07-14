#!/bin/bash

# -------------------------------------------------------------
# This script disable usb mounting, route all dns to localhost,
# except whitelisted sites from a file found on -url- var.
#
# This script is run @reboot
# Edit crontab -e if you want to change this
# -------------------------------------------------------------

# stop and mask usb service
sudo systemctl stop udisks2.service
sudo systemctl mask udisks2.service

# get whitelist file from drive
filename="whitelist.txt"
path="/home/professor/vm-config"
url="shorturl.at/cghjN"

# if you want every vm to fetch whitelist from internet, uncomment this
#wget -q -O - $url > "$path/$filename"

# stop dns service
sudo systemctl stop systemd-resolved

# start writing to dnsmask file
echo "address=/#/127.0.0.1" > "$path/dnsmasq.conf"

# use whitelist.txt as source for all whitelisted domains
while IFS="" read -r line || [ -n "$line" ]
do
  line=$(echo $line | tr -d '\r')
  printf "server=/%s/8.8.8.8\n" "$line" >> "$path/dnsmasq.conf"
done < "$path/$filename"

#move the newly created file to the right place
sudo chown root:root "$path/dnsmasq.conf"
sudo mv -f "$path/dnsmasq.conf" /etc/

# start dnsmasq with custom info
sudo service dnsmasq restart
