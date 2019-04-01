#! /bin/bash
# Install wireshark

function apterror() {
	if [ "$ERR_MSG" != "" ]; then
		sudo rm /var/lib/dpkg/lock-frontend
		sudo rm /var/lib/dpkg/lock
	fi
}

sudo apt-get install wireshark
apterror

# start
# sudo wireshark
