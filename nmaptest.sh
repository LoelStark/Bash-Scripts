#!/bin/bash


echo "*********************************************************************"
echo "Running namp -sV and -O commands to target IP"
sleep 2
read -p "ENter target IP: " IP
echo "Processing IP AdDresS...."
sleep 3
echo "IP: $IP"
echo "Is the above IP correct?"
read -p "yes/no: " response
if [ $response == "yes" ]; then
	echo "COmmencing Nmap scan..."
	sudo nmap -sV -O $IP
	echo "COmmencing ScAn for OnlY open PorTs...."
	sleep 2
	sudo nmap -sV --open $IP
	sleep 2
	echo "Scan complete, happy HacKinG...."
	echo "############################################"
else 
	echo "PLease rerun the script and enter the IP AGAIN"
	echo "I was lazy to continue the script..... :)"
fi
