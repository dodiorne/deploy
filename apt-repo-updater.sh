##update repositories
sudo apt-get update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y

##create indicator file
touch /home/kali/deploy/apt-updater-done.txt 

#reboot the system
sudo shutdown -r now
