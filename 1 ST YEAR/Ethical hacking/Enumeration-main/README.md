# Enumeration
Enumeration Techniques

# Explore Google hacking and enumeration 

# AIM:

To use Google for gathering information and perform enumeration of targets

## STEPS:

### Step 1:

Install kali linux either in partition or virtual box or in live mode

### Step 2:

Investigate on the various Google hacking keywords and enumeration tools as follows:


### Step 3:
Open terminal and try execute some kali linux commands

## Pen Test Tools Categories:  

Following Categories of pen test tools are identified:
Information Gathering.

Google Hacking:

Google hacking, also known as Google dorking, is a technique that involves using advanced operators to perform targeted searches on Google. These operators can be used to search for specific types of information, such as sensitive data that may have been inadvertently exposed on the web. Here are some advanced operators that can be used for Google hacking:

site: This operator allows you to search for pages that are within a specific website or domain. For example, "site:example.com" would search for pages that are on the example.com domain.
Following searches for all the sites that is in the domain yahoo.com
![Screenshot (105)](https://github.com/gowriganeshns/Enumeration/assets/145736316/6ef7ddaa-5c80-4166-8681-2886614542b1)
filetype: This operator allows you to search for files of a specific type. For example, "filetype:pdf" would search for all PDF files.
Following searches for pdf file in the domain yahoo.com

![Screenshot (106)](https://github.com/gowriganeshns/Enumeration/assets/145736316/1466d212-2e5b-465b-a34a-fa289f7a2aa9)

intext: This operator allows you to search for pages that contain specific text within the body of the page. For example, "intext:password" would search for pages that contain the word "password" within the body of the page.
![Screenshot (107)](https://github.com/gowriganeshns/Enumeration/assets/145736316/6dc5407c-1eef-4e50-ac0e-a2388317ee77)

inurl: This operator allows you to search for pages that contain specific text within the URL. For example, "inurl:admin" would search for pages that contain the word "admin" within the URL.
![Screenshot (108)](https://github.com/gowriganeshns/Enumeration/assets/145736316/337aa744-5374-4432-bf21-ba00308a1bc5)
intitle: This operator allows you to search for pages that contain specific text within the title tag. For example, "intitle:index of" would search for pages that contain "index of" within the title tag.
![Screenshot (109)](https://github.com/gowriganeshns/Enumeration/assets/145736316/f6cc1298-da25-4e52-b1ce-6e001cf353a0)
link: This operator allows you to search for pages that link to a specific URL. For example, "link:example.com" would search for pages that link to the example.com domain.
![Screenshot (110)](https://github.com/gowriganeshns/Enumeration/assets/145736316/2efa252f-3345-4f3a-9f46-409accb8322d)
cache: This operator allows you to view the cached version of a page. For example, "cache:example.com" would show the cached version of the example.com website.

## OUTPUT:
![Screenshot 2024-05-09 154321](https://github.com/gowriganeshns/Enumeration/assets/145736316/0bb124c4-9f94-4cc2-96f3-f603e9abd34f)


# DNS Enumeration
## DNS Recon
provides the ability to perform:
Check all NS records for zone transfers
Enumerate general DNS records for a given domain (MX, SOA, NS, A, AAAA, SPF , TXT)
Perform common SRV Record Enumeration
Top level domain expansion
## OUTPUT:
![WhatsApp Image 2024-04-15 at 10 05 33 PM (2)](https://github.com/Vinothini1711/Echoserver/assets/144300204/9ab6e693-974a-4c59-90b0-3bba432d7bd2)
## dnsenum
Dnsenum is a multithreaded perl script to enumerate DNS information of a domain and to discover non-contiguous ip blocks. The main purpose of Dnsenum is to gather as much information as possible about a domain. The program currently performs the following operations:

Get the host’s addresses (A record).
Get the namservers (threaded).
Get the MX record (threaded).
Perform axfr queries on nameservers and get BIND versions(threaded).
Get extra names and subdomains via google scraping (google query = “allinurl: -www site:domain”).
Brute force subdomains from file, can also perform recursion on subdomain that have NS records (all threaded).
Calculate C class domain network ranges and perform whois queries on them (threaded).
Perform reverse lookups on netranges (C class or/and whois netranges) (threaded).
Write to domain_ips.txt file ip-blocks.
This program is useful for pentesters, ethical hackers and forensics experts. It also can be used for security tests.
## OUTPUT:
![WhatsApp Image 2024-04-16 at 9 42 20 AM (1)](https://github.com/Vinothini1711/Echoserver/assets/144300204/d14cf8f3-3c60-4d3e-a0ce-fe10b30a481c)
![WhatsApp Image 2024-04-16 at 9 42 20 AM](https://github.com/Vinothini1711/Echoserver/assets/144300204/9d0f93a4-d765-4fd8-9279-7d8b2e5dfec2)
## smtp-user-enum
Username guessing tool primarily for use against the default Solaris SMTP service. Can use either EXPN, VRFY or RCPT TO.
## OUTPUT:
![WhatsApp Image 2024-04-15 at 10 05 33 PM](https://github.com/Vinothini1711/Echoserver/assets/144300204/ce1dd727-743e-44b8-bc6f-5908d8c95c15)

In metasploit list all the usernames using head /etc/passwd or cat /etc/passwd:
select any username in the first column of the above file and check the same
## OUTPUT:
![WhatsApp Image 2024-04-16 at 9 16 29 AM (1)](https://github.com/Vinothini1711/Echoserver/assets/144300204/ea4999a8-0b7b-4a79-bb3f-622599320c3b)

## Telnet for smtp enumeration
Telnet allows to connect to remote host based on the port no. For smtp port no is 25
telnet <host address> 25 to connect
and issue appropriate commands
## OUTPUT:
 ![WhatsApp Image 2024-04-16 at 9 16 28 AM](https://github.com/Vinothini1711/Echoserver/assets/144300204/f4b46a3e-31ed-4083-9582-807f9cc12acf)
 
## nmap –script smtp-enum-users.nse <hostname>
The smtp-enum-users.nse script attempts to enumerate the users on a SMTP server by issuing the VRFY, EXPN or RCPT TO commands. The goal of this script is to discover all the user accounts in the remote system.
## OUTPUT:
![WhatsApp Image 2024-04-16 at 9 16 29 AM](https://github.com/Vinothini1711/Echoserver/assets/144300204/ae277861-75c5-446a-a9c8-c8c69eb0ebf9)

## RESULT:
The Google hacking keywords and enumeration tools were identified and executed successfully

