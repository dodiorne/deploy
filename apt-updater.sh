#!/bin/bash

##update repositories
sudo apt-get update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y

##create indicator file
touch /home/kali/deploy/apt-updater-done.txt 

##add file to continue installation after reboot
sudo cp /home/kali/deploy/continue.sh /etc/init.d/continue.sh

#reboot the system
sudo shutdown -r now
