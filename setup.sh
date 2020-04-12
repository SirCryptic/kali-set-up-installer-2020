#!/bin/bash
#lamp
# NULLSec Setup Script v1.0.0
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

echo "NULLSec setup script v1.0.0"
echo "Created By ~SirCryptic"
echo "would you like to install? [y/n]"

	read input

	if [ $input == "n" ]; then
	echo "Nothing was installed!"
	echo "Bye!"
	elif [ $input == "y" ]; then
	echo "installing please wait...."
	sudo apt install gnupg ca-certificates
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 		3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
	echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt sources.list.d/mono-official-stable.list

	sudo apt-get install htop -y

	sudo apt-get update && apt-get upgrade -y

	sudo dpkg --add-architecture i386 && apt-get update &&> apt-get install wine32 -y

	sudo apt-get install winetricks -y
	sudo apt-get install openvpn -y
	sudo apt-get install tor -y
	sudo apt install torbrowser-launcher -y

	sudo apt-get update && apt-get upgrade -y
	sudo apt-get cowsay -y
	sudo apt-get fortune -y
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py -y
	sudo python get-pip.py -y
	rm get-pip.py
	wget https://github.com/busyloop/lolcat/archive/master.zip
	unzip master.zip
	cd lolcat-master/bin
	gem install lolcat
	sudo apt-get update && apt-get upgrade -y
	

	echo "fully installed everything!, please check my github or my forums for how to install gecko and dotnet45 to be able to run .exe files ~NULLSec"

		exit 1
	fi
	if [[ -z "$dldir" ]]; then
		dldir=OpenCV
	fi
	if ! sudo true; then
		exit 1
	fi
	set -e
