#!/bin/bash

INPUT="$1"

function caseStatement(){
echo "$1"
case "$1" in
	ali)
		echo "You are ali"
		;;
	veli)
		echo "you are veli"
		;;
	*)
		echo "you are someone else"
esac
}

caseStatement $INPUT
