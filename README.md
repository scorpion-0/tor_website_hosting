# TOR-website
Host your own website on the TOR network
You have to make some changes to make this work.
1. Edit the /etc/tor/torrc file.
In this file you must comment out two lines
~############### This section is just for location-hidden services ###
~
~## Once you have configured a hidden service, you can look at the
~## contents of the file ".../hidden_service/hostname" for the address
~## to tell people.
~##
~## HiddenServicePort x y:z says to redirect requests on port x to the
~## address y:z.

#HiddenServiceDir /var/lib/tor/hidden_service/
#HiddenServicePort 80 127.0.0.1:8080

The two lines you have to comment out are those:

HiddenServiceDir /var/lib/tor/hidden_service/
HiddenServicePort 80 127.0.0.1:8080

2. Now you have to edit the index.html file located in the TOR-website folder. (thats the  folder you downloaded from github)
You have to write your own website in HTML or you can just find a website you like, right-click and click 'View Page Source' and that will take you to the source code of the website. Copy all that and paste it in the index.html file.


After that, you are ready, launch the server_run.sh file and browse to your website. (The domain name is in /var/lib/hidden_service/hostname).
