#!/bin/bash

#remove reboot file
sudo rm /home/kali/deploy/continue.sh /etc/init.d/continue.sh

##install manspider and dependecies
sudo apt install tesseract-ocr -y
sudo apt install antiword -y
sudo apt install python3.11-venv
pip install pipx
pipx install git+https://github.com/blacklanternsecurity/MANSPIDER

##install crackmapexec
sudo apt remove crackmapexec
sudo rm -f /home/kali/.cme/worksapces/default/smb.db
git clone https://github.com/mpgn/CrackMapExec
cd CrackMapExec
pipx install .

##install mitm6
pip install mitm6

##install john.smith wordlists and weak passwords list
git clone https://github.com/dodiorne/john
git clone https://github.com/dodiorne/lists

##install gowitness
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
# google-chrome --no-sandbox
sudo apt-get install golang -y
go install github.com/sensepost/gowitness@latest
echo "export PATH=$PATH:~/go/bin/:/home/kali/.local/bin" >> ~/.zshrc
source .zshrc

##install bloodhound.py
git clone https://github.com/dodiorne/bloodhound.py

##install virtualbox guest additions
sudo apt install -y virtualbox-guest-x11

##install remmina
sudo apt install remmina -y

##install hostapd-mana
#sudo apt install hostapd-mana -y

##initialize stuff
sudo msfdb init



##Removed Stuff
##cleanup
#sudo updatedb
#sudo apt autoremove -y

#Install Wireless Drivers for Alpha
#sudo apt install realtek-rtl88xxau-dkms -y
#sleep 60s
#sudo apt install dkms -y
#sleep 60s
#git clone https://github.com/aircrack-ng/rtl8812au 
#cd rtl8812au/ 
#make 
#sudo make install 
#lsusb 

#install wifite pre-requs
#sudo apt install hcxtools -y
#sudo apt install hcxdumptool -y

##remove continue line from .zshrc
sed -i '/^bash \/home\/kali\/deploy\/package-installer.sh/d' .zshrc
