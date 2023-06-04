#!/bin/bash
### every exit != 0 fails the script
set -e
set -u
if [ ! -e "/build/COMPLETE" ]; then
	#cat /etc/s6-overlay/s6-rc.d/init-adduser/branding
	#cat /build/MCIT
	echo "updating login profile"
	# sudo rm -r /usr/share/wallpapers/Next/contents/images
	# sudo mv ~/images /usr/share/wallpapers/Next/contents
	sudo groupmod -n ubuntu abc
	# sudo usermod -l ubuntu abc 
	# sudo usermod -p ubuntu ubuntu
	# sudo usermod -d /home/abc abc
	# sudo cp -r /config/ /home/abc/
	# gcc v12.1 pre-installed
	# python v3.10.6 pre-installed
	echo "Unminimizing Ubuntu installation"
	# sudo apt-get update && yes | sudo unminimize
	echo "Upgrading image"
	# sudo apt-get update && sudo apt-get upgrade -y
	echo "Installing CIS5510 required packages"
	# sudo apt-get install -y software-properties-common clang emacs gcc-multilib make valgrind vim python3-pip wget lsb-release net-tools apt-transport-https apt-utils man man-db manpages-posix manpages-dev manpages libssl-dev
	sudo apt update
	sudo apt-get install -y wget
	echo "Installing CIS5510 Project 1 targets into ~/targets"
	cd ~
	wget http://cis551.cis.upenn.edu/project1/cis551-proj1-targets.tar.gz
	tar xf cis551-proj1-targets.tar.gz
	sudo mv /build/personalize_targets.sh /config/Desktop/
	sudo touch /build/COMPLETE
	echo "CIS5510 Project 1 container setup complete"
fi
