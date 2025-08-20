# ARP-Attack-and-Network-Sniffing
# Explore Network Sniffing and ARP Attacks

# AIM:

To explore network sniffing and ARP Attacks

## STEPS:

### Step 1:

Install kali linux either in partition or virtual box or in live mode

### Step 2:

Investigate on the various categories of tools as follows:


### Step 3:
Open terminal and try execute some kali linux commands
## ARP Attacks:  
ARP spoofing: A hacker sends fake ARP packets that link an attacker's MAC address with an IP of a computer already on the LAN. 
Boot kali and Windows7 virtual machines.
In windows 7 give the command arp -a
## OUTPUT:
![Screenshot 2024-05-09 080406](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/1d52a5e9-76f0-47c2-bf6b-7347ac77b78f)

From kali linux issue the command :
sudo arpspoof -i eth0 -t <target system> <gateway>
## OUTPUT:
 dsniff:
 
![Screenshot 2024-05-09 072004](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/a5d08cbb-e30c-4f58-b1ee-0e07b5fb7218)

In Metasploit open the ftp console as below. Also you can try other ftp websites ftp.vim.org
## OUTPUT:
![Screenshot 2024-05-09 072014](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/981585e9-d1bb-4b52-9c5a-cb518c91a157)

In Kali issue the following commands:
sudo dsnifff
## OUTPUT:

![Screenshot 2024-05-09 072024](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/38960536-d1b3-4631-b596-e0e253913034)

Invoke the wireshark and examine the various menus  and controls of the tool:

![Screenshot 2024-05-09 072039](https://github.com/yashvanthbalaji/ARP-Attack-and-Network-Sniffing/assets/145736316/a3bab527-f7c0-478f-92dd-fe49882fa198)


## RESULT:
The kali linux tools for ARP Attack and Network Sniffing were identified successfully

