#!/bin/bash
read -p "Enter the username:" u1
#check if user exists
grep -w ^$u1 /etc/passwd >/dev/null 2&>1
read $u1
res=$?
if [ $res -eq 0 ]
then 
	echo "User $u1 Exists in this System... Hence proceding to lock the user..."
	passwd -l $u1 >/dev/null 2>&1
	res=$?
	if [ $res -eq 0 ]
	then
		echo "$u1 as looked successfully"
	else
		echo "User $u1 couldn't be loocked...Hence, I'm unable to look the User"
	fi #inner if ends here
else
	echo "User $u1 doesn't exist..."
fi #outer if ends here
#End
