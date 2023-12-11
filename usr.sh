#!/bin/bash
read -p "Enter a file name to create user:" uname
useradd $uname
echo "The user $uname is created"
#end
