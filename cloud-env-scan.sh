#!/bin/bash

dire=$HOME/automation/IP-Scan/Cloud-Env

if [ -d $dire ]
then
    echo "Ip scan directory available at $dire "
else
    echo "Making directory for Ipscan $(mkdir $dire)"
fi
geting() {
wget https://raw.githubusercontent.com/lord-alfred/ipranges/main/all/ipv4_merged.txt -O $dire/ipv4-merged.txt
}
geting

#Download this repo.. form github (https://github.com/g0ldencybersec/CloudRecon)

reco() {
CloudRecon scrape -c 1000 -i $dire/ipv4-merged.txt > $dire/cloudrecon.txt
}
reco

echo "Time of ending cloudrecon: $date" | notify

#To grep subdomain form that use this oneliner
#grep -F '.twitch.tv' cloudrecon.txt | awk -F '[][]' '{print $2}' | sed 's# #\n#g' | grep ".twitch.tv" | sort -fu | cut -d ',' -f1 | sort -u
#To get all domain related to twitch just remove grep ".twitch.tv" between sed and sort
