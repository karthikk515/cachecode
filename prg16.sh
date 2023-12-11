#!/bin/bash
echo "Compare Two Numbers"
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2
if [ $num1 -gt $num2 ]
then
	echo "$num1 is greater then $num2"
else
	echo "$num1 is not greater then $num2"
fi

#End of the script
