echo "DISCLAMER: I AM NOT RESPONSABLE FOR WHAT YOU DO WITH THIS TOOL. PLEASE DO NOT USE IT IN ILEGAL PURPOSE."
echo "$(tput setaf 1)WARNING: Your system may NOT configured by default, read the README.md file for instructions.$(tput sgr 0)"
echo "Starting Tor..."
echo "Tor will run in the background"
sudo tor &
echo "==================================================================="
echo "This is the hostname of your .onion website: (NOTE: The hostname can change after you restart the service, it is located in /var/lib/hidden_service/hostname)"
sudo cat  /var/lib/tor/hidden_service/hostname
echo "==================================================================="
echo "Starting python server..."
echo "To stop the server, hit CTRL + C"
python3 -m http.server --bind 127.0.0.1 8080
