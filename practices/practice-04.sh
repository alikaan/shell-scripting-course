#!/bin/bash

# are you ready?

read -p "Are you ready? Enter y or n : " ANSWER
case "$ANSWER" in
	[yY]|[yY][eE][sS])
		echo "you answered yes."
		;;
	[nN]|[nN][oO])
		echo "you answered no."
		;;
	*)
		echo "invalid answer."
		;;
esac

