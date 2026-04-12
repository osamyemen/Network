
masscan -p80,443 192.168.1.0/24 --rate=10000
masscan 192.168.1.0/24 -p1-65535 --rate=1000 -oL results.txt

enum4linux -a 192.168.1.100
# scanner لخوادم الويب يكشف الإعدادات الخاطئة والثغرات.

nikto -h http://192.168.1.100 -Tuning 123


naabu -host 192.168.1.100 -ports top-1000 -silent
naabu -list targets.txt -p 80,443 -rate 50000
