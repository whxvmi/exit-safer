#!/bin/bash

NODE_LIST="https://check.torproject.org/cgi-bin/TorBulkExitList.py"
NODE_LIST2="https://www.dan.me.uk/torlist/?exit"

curl -s -L "$NODE_LIST" -o node_list.txt
curl -s "$NODE_LIST2" -o node_list2.txt

cat node_list.txt node_list2.txt | sort | uniq > merged_node_list.txt

while read -r ip; do
    if [[ -n "$ip" ]]; then
        sudo iptables -A INPUT -s "$ip" -j DROP
        sudo iptables -A OUTPUT -d "$ip" -j DROP
    fi
done < merged_node_list.txt

rm node_list2.txt node_list.txt merged_node_list.txt
