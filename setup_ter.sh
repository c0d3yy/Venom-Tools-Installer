#!/usr/bin/bash
clear
echo "Installing figlet for ascii art... "
pkg install figlet
figlet -c "Team Venom"
echo " "
read -p "Do you want to continue installing setup? [y/n] : " answer
case $answer in
	y)
		clear
		figlet -c "Team Venom"
  		echo " Updating the system..."
		pkg update
  		echo " Upgrading the system..."
		pkg upgrade
  		echo " Launching git for cloning repos..."
		pkg install git
  		echo "Installation complated, launching main file"
		bash venom.sh
		;;
	n)
		echo " "
		echo -e "\e[1;31m Aborting the installation.... \e[0m"
		exit
		;;
	*)
		echo " "
		echo "Please select one of the options mentioned"
		exit
		;;
esac
