# i. script banner
banner Welcome to My Recon Project

# ii. user input for domain 
echo "Please Enter Domain Information"
read a

# iii. Domain IP Resolution
nslookup $a > report.txt

# iv. Whois and Dig
whois $a >> report.txt >> report.txt
dig $a >> report.txt >> report.txt

# v. Sub-Domain listing
sublist3r -d $a > subdomain.txt

# vi. sub-domain listing in separate text file
tail -n 40 subdomain.txt 

# vii. brutehost
#recon-ng -w sagar brute_hosts $a

# viii. public email addresses
theHarvester -d $a -l 100 -b google >> report.txt

# ix. open port state and OS Recon
sudo nmap -Pn -O -p 1-1000 $a >> report.txt

# x.Git your exam script on github
  
