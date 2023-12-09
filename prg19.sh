#!/bin/bash
#To search the file 
read -p "Enter file name to search:" f1
ls /root/scripts/$f1 >/dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then
	echo "Tthe file $f1 found"
else
	echo "The File not available"
fi
#End	
