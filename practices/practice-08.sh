#!/bin/bash

while true
do
	read -p "1: Show disk usage. 2: Show uptime. 3: Show hostname. " CHOICE
	case "$CHOICE" in
		1)
			df -h
			;;
		2)
			uptime
			;;
		3)
			hostname
			;;
		*)
			break
			;;
	esac
done
