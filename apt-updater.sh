#!/bin/bash

##update repositories
sudo apt-get update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y

##create indicator file
touch /home/kali/deploy/apt-updater-done.txt 

##add line to .zshrc to continue install, at the end of the file
echo "bash /home/kali/deploy/package-installer.sh" >> .zshrc

#reboot the system
sudo shutdown -r now
