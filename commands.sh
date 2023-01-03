#!/bin/bash
## Author: @TheFlash2k


# Add all your custom commands in this file.

export nc_listen="rlwrap nc -lvnp $1"
export nmap_allports="nmap -p- --min-rate=10000 -oN logs/initial.nmap $IP $1"
export nmap_full="nmap -p $1 -sC -sV -oN logs/full.nmap $IP $2"
export gobuster_common="gobuster dir -u $1 -w /usr/share/wordlists/dirb/common.txt -o logs/gobuster-common.txt"
export gobuster_medium="gobuster dir -u $1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o gobuster-medium.txt"
export nikto_full="nikto -h $1 | tee logs/nikto.log"
export smbclient_list="smbclient -L \\\\$IP\\"
export smbclient_connect="smbclient \\\\$IP\\$1"