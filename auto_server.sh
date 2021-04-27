echo "$(tput setaf 3) _____ ___  ____    _   _  ___  ____ _____ ___ _   _  ____" 
echo "|_   _/ _ \|  _ \  | | | |/ _ \/ ___|_   _|_ _| \ | |/ ___|"
echo "  | || | | | |_) | | |_| | | | \___ \ | |  | ||  \| | |  _ "
echo "  | || |_| |  _ <  |  _  | |_| |___) || |  | || |\  | |_| |"
echo "  |_| \___/|_| \_\ |_| |_|\___/|____/ |_| |___|_| \_|\____|$(tput setaf 2)"
clear
echo "$(tput setaf 2) This tool was made by scorp1on-0$(tput setaf 0))$(tput sgr 0)"
echo " "
echo "$(tput setaf 1)DISCLAMER: I AM NOT RESPONSABLE FOR WHAT YOU DO WITH THIS TOOL. PLEASE DO NOT USE IT IN ILEGAL PURPOSE.$(tput sgr 0)"
sleep 2
#Now starting
echo "Now starting service..."
echo "Stand by"
clear
#After you configure the file, you can take this warning out. (If you dont know what file to configure, read the README.mf file)
echo "$(tput setaf 1)WARNING: Your system may NOT configured by default, read the README.md file for instructions.$(tput sgr 0)"
clear
echo "Starting Tor..."
clear
echo "Tor will run in the background"
#Starting tor in the background
clear
echo "$(tput setaf 0) Tor is starting..."
clear
sudo tor &
echo "Tor started, moving on"
clear
#Printing the domain name
clear
echo "$(tput setaf 0)To stop the server, hit CTRL + C"
sleep 2
#Starting python3 in the background
python3 -m http.server --bind 127.0.0.1 8080 &
clear
echo "|-------------------------------------------|"
echo "| HOSTNAME |----------------------------------------------------------------------|"
sudo cat /var/lib/tor/hidden_service/hostname
echo "| HOSTNAME |----------------------------------------------------------------------|"
clear
sleep 2
clear
echo "$(tput sgt 1)$(tput setaf 3) I have done almost all the work, all you need to do now is copy this link:"
echo " "
sleep 1
sudo cat /var/lib/tor/hidden_service/hostname
echo " "
sleep 1
echo "And paste it in your browser. And that's it. You just went to your own website on the TOR network."
echo " "
sleep 3
echo "If you are not sure of something, read the README.md file again. (read it in the terminal not github) And if that does not answer your question, feel free to leave a comment on Github"
echo " "
sleep 3
echo "That is all!$(tput sgr 0)"
echo " "
