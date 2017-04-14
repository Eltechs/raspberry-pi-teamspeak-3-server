#!/bin/bash -x
# This script installs and configures ExaGear Desktop and then Teamspeak 3 server on Raspberry Pi 2 and 3

# Install ExaGear
sudo apt-get update
sudo apt-get install exagear-desktop -y --force-yes 

# Activate trial ExaGear
if [ ! -f /opt/exagear/lic/secondary00000000.key ]; then
    sudo -E /opt/exagear/bin/trial_requester
fi

# Enter the guest x86 system
/bin/bash -x /usr/bin/exagear << EOF  || exit 1

sudo apt-get update || exit 1
sudo apt-get install -y bzip2 || exit 1

# Install and configure TS3 server in the guest x86 system
sudo adduser --disabled-password --gecos "" teamspeak 

sudo mkdir /usr/local/teamspeak 
sudo chown teamspeak /usr/local/teamspeak 

sudo su teamspeak  || exit 1

cd /usr/local/teamspeak || exit 1
wget http://dl.4players.de/ts/releases/3.0.13.2/teamspeak3-server_linux_x86-3.0.13.2.tar.bz2 || exit 1
tar -xjvf teamspeak3-server_linux_x86-3.0.13.2.tar.bz2 || exit 1
rm teamspeak3-server_linux_x86-3.0.13.2.tar.bz2 

/usr/local/teamspeak/teamspeak3-server_linux_x86/ts3server_startscript.sh start > /usr/local/teamspeak/teamspeak3-server_linux_x86/ts3-credentials.txt 2>&1 || exit 1
echo
exit 0

EOF

# Configure autostart of TS3 server on system reboot 
wget  http://s3-us-west-2.amazonaws.com/exagear-ts3-3.0.13/teamspeak3
sudo mv teamspeak3 /etc/init.d
sudo chmod 755 /etc/init.d/teamspeak3
sudo update-rc.d teamspeak3 defaults

exit 0

