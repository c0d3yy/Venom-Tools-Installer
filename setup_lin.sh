#!/usr/bin/bash
clear
echo " Installing figlet for ascii art"
apt install figlet
echo " "
figlet -c "Team Venom"
echo " "
read -p "Do you want to continue installing setup? [y/n] : " answer
case $answer in
	y)
		clear
		figlet -c "Team Venom"
  		echo "Updating the system..."
		apt-get update
  		echo " Upgrading the system..."
		apt-get upgrade
  		echo "Installing git for copying repos"
		apt-get install git
  		echo"Installation complated, main file is starting..."
		bash venom.sh
		;;
	n)
		echo " "
		echo -e "\e[1;31m Aborting the installation.... \e[0m"
		exit
		;;
	*)
		echo " "
		echo "Please give one of the answers mentioned."
		exit
		;;
esac
