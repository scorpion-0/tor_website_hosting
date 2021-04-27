# TOR-website
Host your own website on the TOR network

All you need is a server or your own computer.

Now you can host your own website on tor for FREE.


You have to make 2 changes to make this work.
1. Edit the /etc/tor/torrc file.
In this file you must comment out two lines
1.############### This section is just for location-hidden services ###
2. 
3.## Once you have configured a hidden service, you can look at the
4.## contents of the file ".../hidden_service/hostname" for the address
5.## to tell people.
6.##
7.## HiddenServicePort x y:z says to redirect requests on port x to the
8.## address y:z.
9. 
10.#HiddenServiceDir /var/lib/tor/hidden_service/
11.#HiddenServicePort 80 127.0.0.1:80

The two lines you have to comment out are those:

HiddenServiceDir /var/lib/tor/hidden_service/
HiddenServicePort 80 127.0.0.1:80
Second. Change form prot 80 to port 8080 in 127.0.0.1:80 (so from 127.0.0.1:80 you make 127.0.0.1:8080)

2. Now you have to edit the index.html file located in the TOR-website folder. (thats the  folder you downloaded from github)
You have to write your own website in HTML or you can just find a website you like, right-click and click 'View Page Source' and that will take you to the source code of the website. Copy all that and paste it in the index.html file.

After that, you are ready, launch the server_run.sh file and browse to your website. (The domain name is in /var/lib/hidden_service/hostname).

DISCLAMER: I AM NOT RESPONSABLE FOR WHAT YOU DO WITH THIS TOOL.
