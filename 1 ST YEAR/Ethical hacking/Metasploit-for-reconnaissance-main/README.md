# Metasploit-for-reconnaissance
# Metasploit
Metasploit for reconnaissance in pentesting

# AIM:

To get introduced to Metasploit Framework and to  perform reconnaissance  in pentesting .

## DESIGN STEPS:

### Step 1:

Install kali linux either in partition or virtual box or in live mode

### Step 2:

Investigate on the various categories of tools as follows:

### Step 3:

Open terminal and try execute some kali linux commands

## EXECUTION STEPS AND ITS OUTPUT
Find out the ip address of the attackers system
### OUTPUT:
![Screenshot 2024-05-09 081252](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/09e2ba86-0deb-498c-bedd-eb2613b5932a)

Invoke msfconsole:
![Screenshot 2024-04-16 110721](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/7bd77874-bbb1-46be-8dc8-1132d908a64c)

Type help or a question mark "?" to see the list of all available commands you can use inside msfconsole.
![Screenshot 2024-04-16 132316](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/621d0b56-cfc7-446c-a433-3bb349c90229)

#### Port Scanning:
Following command is executed for scanning the systems on our local area network with a TCP scan (-sT) looking for open ports between 1 and 1000 (-p1-1000).
msf >  nmap -sT 192.168.1810/24 -p1-1000
### OUTPUT:
![Screenshot 2024-04-16 135424](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/bfc1b189-4b0f-4462-b56b-68c309db8113)
step4:
use the db-nmap command to scan and save the results into Metasploit's postgresql attached database. In that way, you can use those results in the exploitation stage later.
scan the targets with the command db_nmap as follows.
msf > db_nmap 192.168.181.0/24
### OUTPUT:
![Screenshot 2024-04-16 131743](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/0ef08e71-d810-453e-92ef-de8c9b84b7d8)
Metasploit has a multitude of scanning modules built in. If we open another terminal, we can navigate to Metasploit's auxiliary modules and list all the scanner modules.
cd /usr/share /metasploit-framework/modules/auxiliary
kali > ls -l
### OUTPUT:
![Screenshot 2024-04-16 133518](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/3d722cf0-6771-4b37-9c36-2612199e2a67)

Search is a powerful command in Metasploit that you can use to find what you want to locate. 
msf >search name:Microsoft type:exploit
![Screenshot 2024-04-16 134336](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/07b53299-2821-464f-88cd-653356c38772)
The info command provides information regarding a module or platform,
### OUTPUT
![Screenshot 2024-04-16 134439](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/bdc2096b-b4ac-437a-b75f-4c23d0446f8a)
Before beginning, set up the Metasploit database by starting the PostgreSQL server and initialize msfconsole database as follows:
systemctl start postgresql
msfdb init
#### MYSQL ENUMERATION
Find the IP address of the Metasploitable machine first. Then, use the db_nmap command in msfconsole with Nmap flags to scan the MySQL database at 3306 port.
db_nmap -sV -sC -p 3306 <metasploitable_ip_address>
![Screenshot 2024-04-16 134632](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/97bfe6da-0e2c-4e08-ac05-b9ccd8352a65)

Use the search option to look for an auxiliary module to scan and enumerate the MySQL database.
search type:auxiliary mysql
![Screenshot 2024-04-16 135941](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/b81a4fa6-56b6-4543-97c3-9e0cb9e2bcda)
use the auxiliary/scanner/mysql/mysql_version module by typing the module name or associated number to scan MySQL version details.
use 11 Or: use auxiliary/scanner/mysql/mysql_version
![Screenshot 2024-04-16 140022](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/c97759c2-3119-417d-9ce1-f5e83fd163ca)
Use the set rhosts command to set the parameter and run the module, as follows:
![Screenshot 2024-04-16 140055](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/4a21d12f-c4a2-4856-8738-f61eef4504aa)
After scanning, you can also brute force MySQL root account via Metasploit's auxiliary(scanner/mysql/mysql_login) module.

![Screenshot 2024-04-16 140131](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/6087e8a8-a99e-46a3-b39a-70a19afb6be3)
set the PASS_FILE parameter to the wordlist path available inside /usr/share/wordlists:
set PASS_FILE /usr/share/wordlistss/rockyou.txt
Then, specify the IP address of the target machine with the RHOSTS command.
set RHOSTS <metasploitable-ip-address>
Set BLANK_PASSWORDS to true in case there is no password set for the root account.
set BLANK_PASSWORDS true

![Screenshot 2024-04-16 140147](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/6ec8b337-096c-4eba-9b1a-ef006edf4f79)
## RESULT:
The Metasploit framework for reconnaissance is  examined successfully
