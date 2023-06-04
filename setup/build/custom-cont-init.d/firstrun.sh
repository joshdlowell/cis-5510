#!/usr/bin/env bash
### every exit != 0 fails the script
set -e
set -u
if [ ! -e "/config/targets" ]; then
	#cat /etc/s6-overlay/s6-rc.d/init-adduser/branding
	echo "-------- updating login profile --------"
	sudo groupmod -n ubuntu abc
	# gcc v12.1 pre-installed
	# python v3.10.6 pre-installed
	echo "-------- Unminimizing Ubuntu installation --------"
	sudo apt-get update && yes | sudo unminimize
	echo "-------- Upgrading image --------"
	sudo apt-get update && sudo apt-get upgrade -y
	echo "-------- Installing CIS5510 required packages --------"
	sudo apt-get install -y software-properties-common clang emacs gcc-multilib make valgrind vim python3-pip wget lsb-release net-tools apt-transport-https apt-utils man man-db manpages-posix manpages-dev manpages libssl-dev
	echo "---- Installing CIS5510 Project 1 targets into ~/targets ----"
	cd ~
	wget http://cis551.cis.upenn.edu/project1/cis551-proj1-targets.tar.gz
	tar xf cis551-proj1-targets.tar.gz
	mkdir /config/Desktop
	sudo chown abc:ubuntu /config/Desktop
	cp /build/README.md /config/Desktop/
	sudo chown abc:ubuntu /config/Desktop/README.md
	sudo sed 's/abc:ubuntu/abc:ubuntu/g' /etc/s6-overlay/s6-rc.d/init-adduser/run 
	echo "CIS5510 Project 1 container setup complete"
	cat /build/MCIT
fi
cat /build/motd
