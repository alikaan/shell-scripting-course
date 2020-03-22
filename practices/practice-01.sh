#!/bin/bash

echo "Shell Scripting is Fun!"

VARIABLE_1="Shell Scripting is Fun!"

echo $VARIABLE_1

SERVER=$(hostname) # another method is `hostname`

echo "this script is running on ${SERVER}"

if [ -e /etc/shadow ]
then
	echo "Shadow passwords are enabled"
	if [ -w /etc/shadow ]
	then
		echo "You have permissions to edit /etc/shadow"
	else
		echo "Yo dont have permissions to edit /etc/shadow"
	fi
fi

ANIMALS="man bear pig dog cat sheep"

for ANIMAL in $ANIMALS
do
	echo $ANIMAL
done

if [ [ -n $1 ] && [ ${#1} -gt 1 ] ]
then
	INPUT=$1
else
	read -p "Enter a name of File or Directory : " INPUT
fi

echo "Input is : $INPUT , len : ${#INPUT}"

if [ -d $INPUT ] 
then 
	echo "It is a directory"
elif [ -f $INPUT ]
then
	echo "It is a regular file"
else
	echo "It is other type of file"
fi

ls -l
