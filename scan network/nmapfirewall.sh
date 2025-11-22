nmap -f 10.0.0.1  
nmap --mtu 32 10.0.0.1  
nmap -D RND:10 10.0.0.1  
nmap -sI {zombie} 10.0.0.1 

nmap --source-port 24 10.0.0.1  
nmap --date-length 10 10.0.0.1  
nmap --randomize-hosts 10.0.0.1

nmap --spoof-mac {MAC} 10.0.0.1

nmap --badsum 10.0.0.1