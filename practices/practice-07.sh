#!/bin/bash

LINE_NUM=1
while read LINE
do
	echo "${LINE_NUM}: ${LINE}"
	((LINE_NUM++))
done < /etc/fstab

grep xfs /etc/fstab | while read LINE
do
	echo "xfs: ${LINE}"
done
