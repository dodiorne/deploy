##Master Update File

##check for repo updater file - if exists run it. if not, run package installer file

if [ ! -f /home/kali/deploy/apt-updater-done.txt ]
then
    bash /home/kali/package-installer.sh "File does not exist in Bash"
else
    bash /home/kali/deploy/apt-updater.sh
fi
