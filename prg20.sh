#!/bin/bash
read -p "enter the user name:" uname
grep -w ^$uname /etc/shadow &>/dev/null
res=$?
if [ $res -eq 0 ]
  then
    echo "User found... checking if $user locked.."
	grep -w ^$user /etc/shadow | cut -f2 -d: | grep ^! >/dev/null 2>&1
        res=$?
        if [ $res -eq 0 ]
        then
                echo "$user is locked"
        else
                echo "User $user is not locked"
        fi #inner if 
else
        echo "User $user doesn't exist..."
fi 
#End 
