# work on workspace 
workspaces create hackerone 
workspaces list
workspaces load 
workspaces remove hackerone

#Marketplace and Modules 

marketplace help
marketplace search
marketplace search ssl
marketplace install recon/domains-hosts/bing_domain_web
all
marketplace info recon/domains-hosts/bing_domain_web

#recon/domains-hosts/hackertarget 
#modules load recon/domains-emails/indeed_org

modules search 
modules load recon/domains-hosts/bing_domain_web
recon/domains-domains/brute_suffix  
options set SOURCE tesla.com
input # show the targets
info 
run
show options


#الوحدات التي تحتاج إكمال شروط معينة (Conditional Modules)

use recon/domains-hosts/brute_hosts
set DOMAIN example.com
set THREADS 20
set SOURCE resolvers.txt  # قائمة DNS resolvers
run


# How to add shodan API key
keys add 
keys add shodan_api 8B4xYpub39kLu7kSfhz1DhEYY 

use recon/domains-hosts/shodan_hostname
set SOURCE yourdomain.com
run


options set LIMIT 5

# داخل recon-ng
keys list              # عرض الكل
keys search shodan     # بحث
keys del shodan_api    # حذف
keys update shodan_api NEWKEY  # تحديث



recon-web