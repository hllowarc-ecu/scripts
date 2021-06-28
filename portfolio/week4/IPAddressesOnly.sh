#!/bin/bash

ipinfo="$(./IpInfo.sh)"

#filters out the lines with IP Address at the start
addresses=$(echo "$ipinfo" | sed -n '/\s*IP Addess:/ p')

#prints addresses
echo -e "$addresses"