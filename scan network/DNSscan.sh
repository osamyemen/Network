#!/bin/bash
# usning host tool 
host  -t  ns  target.com # give server name 
host  -t  a  target.corn # get the address of web
host  -t  aaaa  target.com
host  -t  mx  target.com
nping --tcp didx.net
nmap -sP didx.net

nslookup  set querytype=any nintendo.com
nslookup  set querytype=mx nintendo.com
nslookup  set querytype=ns nintendo.com

dnsenum nintendo.com # he is can not scan becous dont have srv record

nmap --script dns-srv-enum --script-args dns-srv-enum.domain=ebay.com # we can get rsv record
nmap -sSU -p 53 --script dns-nsec-enum \ --script-args dns-nsec-enum.domains=paypal.com ns3.isc-sns.info
nmap --script=broadcast-dns-service-discovery www.hackingarticles.in
nmap -T4 -p 53 --script dns-brute www.hackingarticles.in
nmap -Pn -sU -p 53 --script=dns-recursion 192.168.1.150
nmap --script dns-srv-enum --script-args "dns-srv-enum.domain='google.com'"
nmap -sL 205.166.76.0/24 | grep "(" | awk '{printf("%s %s\n",$5,$6);}' # Reverse DNS Sweeping

dnsenum --noreverse -o mydomain.xml hackingarticles.in
dnsrecon -d hackingarticles.in

dig @ns3.isc-sns.info -f /tmp/paypal.txt +noall +answer | awk \'{printf("%s %s\n",$5,$1);}' | grep -E '^(10\.)'
dig @ns3.isc-sns.info _sipfederationtls._tcp.paypal.com any +noall +answer

fierce -dns hackingarticles.in



