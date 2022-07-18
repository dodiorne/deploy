##update repositories
sudo apt-get update -y
sudo apt-get dist-upgrade -y

##install manspider and dependecies
sudo apt install tesseract-ocr -y
sudo apt install antiword -y
sudo pip install pipx
sudo apt install python3.10-venvcd
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
apt install ./google-chrome-stable_current_amd64.deb
# google-chrome --no-sandbox
sudo apt-get install golang -y
go install github.com/sensepost/gowitness@latest
export PATH=$PATH;
