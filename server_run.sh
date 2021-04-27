#This is a tool for hosting a hidden website on tor, please do not use it for ilegal purpose or malicious intent.

#Running sudo to get administrative permitions (im not actualy checking anything but it looks better if you type your password here instead of where it says the domain name)
echo "$(tput setaf 3) _____ ___  ____    _   _  ___  ____ _____ ___ _   _  ____" 
echo "|_   _/ _ \|  _ \  | | | |/ _ \/ ___|_   _|_ _| \ | |/ ___|"
echo "  | || | | | |_) | | |_| | | | \___ \ | |  | ||  \| | |  _ "
echo "  | || |_| |  _ <  |  _  | |_| |___) || |  | || |\  | |_| |"
echo "  |_| \___/|_| \_\ |_| |_|\___/|____/ |_| |___|_| \_|\____|$(tput setaf 2)"
sleep 0.3
echo " "
echo "$(tput sgr 1)$(tput setaf 2) This tool was made by scorp1on-0$(tput setaf 0))$(tput sgr 0)"
echo " "
sleep 2
sudo echo "Checking..."
echo "$(tput sgr 1)$(tput setaf 1)DISCLAMER: I AM NOT RESPONSABLE FOR WHAT YOU DO WITH THIS TOOL. PLEASE DO NOT USE IT IN ILEGAL PURPOSE.$(tput sgr 0)"
sleep 2
#Now starting
echo "Now starting service..."
sleep 0.1
echo "Stand by"
sleep 0.2
#After you configure the file, you can take this warning out. (If you dont know what file to configure, read the README.mf file)
echo "$(tput setaf 1)WARNING: Your system may NOT configured by default, read the README.md file for instructions.$(tput sgr 0)"
sleep 0.2
echo "Starting Tor..."
sleep 0.2
echo "Tor will run in the background"
#Starting tor in the background
sleep 0.2
echo "$(tput sgr 0) Tor is starting..."
sudo tor &
echo "Tor started, moving on..."
#Printing the domain name"
sleep 1
echo "Starting python server..."
sleep 0.2
echo "$(tput sgr 0)To stop the server, hit CTRL + C"
sleep 2
#Starting python3 in the background
python3 -m http.server --bind 127.0.0.1 8080 &
sleep 0.2
echo "Python3 is now running in the background$(tput setaf 2)"
sleep 0.2
#You are done here
echo "|-------------------------------------------|"
echo "Your site is up and running!"
echo "To stop the service, run the stop.sh file"
sleep 0.5
echo "| HOSTNAME |----------------------------------------------------------------------|$(tput sgr 1)"
sudo cat /var/lib/tor/hidden_service/hostname
echo "$(tput sgr 0)$(tput setaf 2)| HOSTNAME |----------------------------------------------------------------------|"
