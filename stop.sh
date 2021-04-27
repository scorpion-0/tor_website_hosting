echo "Printing procceses..."
echo "$(tput sgr 1) User assistance required$(tput sgr 0)"
bg
echo Please enter the number of the job with python3:
read python3
sudo kill $python3
echo "Killed job python3 with PID $python3"
echo "Please enter the number of the job with tor:"
read tor
sudo kill $tor
echo "Killed job tor with PID $tor"
echo "Done"
