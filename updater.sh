##update repositories
sudo apt-get update -y
sudo apt-get dist-upgrade -y

##install manspider and dependecies
sudo apt install tesseract-ocr -y
sudo apt install antiword -y
sudo apt install python3.10-venv
sudo pip install pipx
pip install pipx
pipx install git+https://github.com/blacklanternsecurity/MANSPIDER
pipx ensurepath

##install crackmapexec
sudo apt-get install crackmapexec

##install responder
sudo apt-get install responder

##install john.smith wordlists
git clone https://github.com/dodiorne/john

##install gowitness
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
# google-chrome --no-sandbox
sudo apt-get install golang -y
go install github.com/sensepost/gowitness@latest
export PATH=$PATH:~/go/bin/

##install bloodhound.py
git clone https://github.com/dodiorne/bloodhound.py

##install virtualbox guest additions
sudo apt install -y virtualbox-guest-x11

##install remmina
sudo apt install remmina -y

##install hostapd-mana
sudo apt install hostapd-mana -y

##initialize stuff
sudo msfdb init

##cleanup
sudo updatedb
sudo apt autoremove -y

#Install Wireless Drivers for Alpha
sudo apt install realtek-rtl88xxau-dkms -y
sleep 60s
sudo apt install dkms -y
sleep 60x
git clone https://github.com/aircrack-ng/rtl8812au 
cd rtl8812au/ 
make 
sudo make install 
lsusb 

#install wifite pre-requs
sudo apt install hcxtools -y
sudo apt install hcxdumptool -y

#reboot the system
sudo shutdown -r now
