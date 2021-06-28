#!/bin/bash

# for this script to work the proxy chain application should be installed first

#this script fetches 10 http free proxy ip addresses and automatically
#adds them to the proxychain application configuration file
outputfile="/etc/proxychains.conf"

#the following items are critical for the configuration file

#specifies that the proxy addresses are selected dynamically meaning if one doesn't work it drops out of the list
echo "dynamic_chain" > $outputfile 

#tcp time out values in milliseconds
echo "tcp_read_time_out 15000" >> $outputfile
echo "tcp_connect_time_out 8000" >> $outputfile

#header for Proxy Ip addresses
echo "[ProxyList]" >> $outputfile

#The proxy addresses are fetched from the below site, then filtered for port 8080 & "+" for google passed
#The text is cleaned up and formatted correctly according to the configuration file format
#The address format should be "traffic type" "IP address" "Port Number"
#Example:  http 41.65.255.53 8080 

curl https://spys.me/proxy.txt | grep ':8080.*+' | sed '10,$d;s/ .*//g; s/:/ /' | awk '{print "http "$0}' >> $outputfile

#the user is then notified that the list is updated
echo "Proxy list Updated"

#The user is then prompted to specify the application they would like to use on the proxychain
#select you browser as an Example: firefox

#prompts user for application to use with proxychains
read -p "Enter Application: " app

runuser -u user -- proxychains $apphllo

exit 0 