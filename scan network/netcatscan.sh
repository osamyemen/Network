#!/bin/bash
nc -zv 192.168.1.1 80
nc -zv 192.168.1.1 20-100 # scan range port
nc -zv -u 192.168.1.1 53 # udp port
nc -zv 192.168.1.1 0-65535 # all port
nc -z -w 3 192.168.1.1 8080 # with timeout

