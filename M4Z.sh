#!/bin/bash

echo "__________/mazy\__________"
echo



if [ $1 = "all" ]
then
	echo "[*] scanning on $3 ... "
	nmap -sC -sV $3 > $2
	cat $2 | grep "open"
	echo
	echo "For more see scan file... !"
elif [ $1 = "fast" ]
then
	echo "[*] scanning on $3 ... "
	nmap $3 > $2
	cat $2 | grep "open"
	echo 
elif [ $1 = "help" ]
then
	echo "mazy (all|fast|help) (OUT Path) (IP)"
fi

echo "_________________________"
