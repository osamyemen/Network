#!/bin/bash
nmap -n -Pn  10.0.0.1
namp -sS 10.0.0.1.1 2,157,254 # for open port
nmap -sS -n 10.0.0.1.1 -p 80 #(-p for port and -n don't start analysis name and for speed scann
namp -sS 10.0.0.1.1 ,2,157,254|more
nmap -sT -p- -Pn  10.0.0.1  # have wrong we can know this sccaner
nmap -sS -p- -Pn  10.0.0.1 -oN scan.txt  # is good for hide
nmap -sF -p- -Pn  10.0.0.1
nmap -sX -p- -Pn  10.0.0.1 # do not work with windows
nmap -sN -p- -Pn  10.0.0.1 
# scanning UDP
nmap -sL  10.0.0.1 
nmap -sP  10.0.0.1 # host live
nmap -sP 10.0.0.1/24 # scan network ranges
nmap -sn 192.168.1.0/24 --packet-trace # it is the same result but this like wirshark


nmap -sU  10.0.0.1 #udp 
nmap -sUV 10.0.0.1 # using hide from atack to send
nmap -sV 10.0.0.1 # using version scanning 
nmap -sV T5 10.0.0.1.1
# using NSE withe nmap
nmap --script banner 10.0.0.1
nmap --script vuln 10.0.0.1 # using to know weaknesses
لمعرفة بصمة النظام 
nmap -O 10.0.0.1.1
nmap -n -A -T5 10.0.0.1.1 #using -n -T% to speed scanning
#scanning TCP/10.0.0.1 using syn/fin
nmap -sS -A -f + 10.0.0.1 # get 10.0.0.1 
#--------------hping3-------------------
hping3 192.168.56.1 -U -S -s 55355 -d 8080 # scanning like wireshark 
arping c + 10.0.0.1 # sent backet icmp request for know if host is work
