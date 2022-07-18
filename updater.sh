##update repositories
sudo apt-get update -y
sudo apt-get dist-upgrade -y

##install manspider and dependecies
sudo apt install tesseract-ocr -y
sudo apt install antiword -y
sudo pip install pipx
sudo apt install python3.10-venv
sudo pipx install git+https://github.com/blacklanternsecurity/MANSPIDER
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
