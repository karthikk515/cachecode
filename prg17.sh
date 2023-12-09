#!/bin/bash
#Searching for a user from /etc/passwd
#read -p "Enter username to search:" user
#grep -w ^$user /etc/passwd
#End

echo -n "Enter user name to check if it exists in this system $(hostname):"
read u1
grep -w ^$u1 /etc/passwd >/dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then
	echo "$u1 exists in this server $(hostname)"
else
	echo "$u1 doesn't exist in this server $(hostname)"
fi #if end

#End of script
