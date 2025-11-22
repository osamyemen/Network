#!/bin/bash
nmap -p- -v -sC -A 10.10.155.5 -oN 10.10.155.5_scan.txt 
nmap -sn 192.168.1.108 --disable-arp-ping # discover arp if the host is up will give mac
nmap -sn -PS 192.168.1.108 --disable-arp-ping # discover host live
nmap -sn -PA 192.168.1.108 --disable-arp-ping # check if the SYN or ICMP are blocked of firewalls
nmap -sn -PE 192.168.1.105 --disable-arp-ping # icmp
nmap -sT -Pn -n 10.10.10.5 --top-ports 50




