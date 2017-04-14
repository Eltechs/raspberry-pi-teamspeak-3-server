# Installation and run instruction for TeamSpeak 3 Server on Raspberry Pi
This script allows to install TeamSpeak 3 Server on Raspberry Pi. 

1. Download the script `raspberrypi-ts3.sh`
```bash
wget 
```

2. Change permition to execute
```bash
chmod x+a ./raspberrypi-ts3.sh
```

3. Run the script
```bash
./raspberrypi-ts3.sh
```

4. You can find TeamSpeak 3 Server credentials as highlighted on the screenshot below. Please save it in safe place. They are necessary to get access to your ts3
![alt text](https://eltechs.com/wp-content/uploads/2017/02/Teamspeak-3-Server-on-Raspberry-Pi_950-compressed1.jpg "TeamSpeak 3 Server Credentials")

5. To run TeamSpeak 3 Server use
```bash
/usr/local/teamspeak/teamspeak3-server_linux_x86/ts3server_startscript.sh start
```

