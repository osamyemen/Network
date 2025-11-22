#!/bin/bash
nmap -sU -p 161 --script snmp-brute 192.168.56.104
nmap -sU -p 161 --script snmp-win32-users 192.168.56.104
nmap -sU -p 161 --script snmp-win32-services 192.168.56.104



