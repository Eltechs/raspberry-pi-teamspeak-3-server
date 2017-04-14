# Installation and running instruction for TeamSpeak 3 Server on Raspberry Pi
This script allows to install and run TeamSpeak 3 Server on Raspberry Pi. 

1. Download the script `raspberrypi-ts3.sh`
```bash
wget https://raw.githubusercontent.com/Eltechs/raspberry-pi-teamspeak-3-server/master/raspberrypi-ts3.sh
```

2. Change permition to execute
```bash
chmod a+x ./raspberrypi-ts3.sh
```

3. Run the script
```bash
./raspberrypi-ts3.sh
```

4. You can find TeamSpeak 3 Server credentials in the following file:
```bash
$ cat /opt/exagear/images/debian-8/usr/local/teamspeak/teamspeak3-server_linux_x86/ts3-credentials.txt
Starting the TeamSpeak 3 server
TeamSpeak 3 server started, for details please view the log file

------------------------------------------------------------------
                      I M P O R T A N T
------------------------------------------------------------------
               Server Query Admin Account created
         loginname= "serveradmin", password= "vULVP0sN"
------------------------------------------------------------------


------------------------------------------------------------------
                      I M P O R T A N T
------------------------------------------------------------------
      ServerAdmin privilege key created, please use it to gain
      serveradmin rights for your virtualserver. please
      also check the doc/privilegekey_guide.txt for details.

       token=qXRcjpWoCGf6hGUzvcK6beAGElPFCqRRaiimfCna
------------------------------------------------------------------
```
