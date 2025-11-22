#!/bin/bash
hping2 -S -r ip # you can see the ip +1
#using metasploit
msfconsole -x "use auxiliary/scanner/ip/ipidseq; set rhosts 192.168.56.109"
#now using nmap to scann
nmap -sI -pN  10.0.0.1+1 10.0.0.3  # the first ip idle the second ip target
#(using -pN to don't let nmap to sent packet from real ip
