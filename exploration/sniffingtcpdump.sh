#!/bin/bash
# for run all this commands , you should be root ,sudo us
#As soure only
tcpdump -i eth0 src host 192.168.1.1
#- As destination only
tcpdump -i eth0 dst host 192.168.1.1
#Filtering ports :
tcpdump -i eth0 port 25
tcpdump -i eth0 src port 25
tcpdump -i eth0 dst port 25
#Network filtering :
tcpdump -i eth0 net 192.168
tcpdump -i eth0 src net 192.168
tcpdump -i eth0 dst net 192.168

#Protocol filtering :
tcpdump -i eth0 arp
tcpdump -i eth0 ip
tcpdump -i eth0 tcp
tcpdump -i eth0 udp
tcpdump -i eth0 icmp

#Let's combine expressions :
#- This rule will match any TCP traffic on port 80 (web) with 192.168.1.254 or 192.168.1.200 as destination host
tcpdump -i eth0 '((tcp) and (port 80) and ((dst host 192.168.1.254) or (dst host 192.168.1.200)))'
#- Will match any ICMP traffic involving the destination with physical/MAC address 00:01:02:03:04:05
tcpdump -i eth0 '((icmp) and ((ether dst host 00:01:02:03:04:05)))'
#- Will match any traffic for the destination network 192.168 except destination host 192.168.1.200
tcpdump -i eth0 '((tcp) and ((dst net 192.168) and (not dst host 192.168.1.200)))'

# dns
tcpdump -i eth0 -n
tcpdump -i eth0 -q
# host 
tcpdump -i eth0 host google.com # when you viste the web page

tcpdump -i eth0 -c 150 # for speed 

tcpdump -i eth0 |grep 192.168.56.104
