#!/bin/bash

function showSystem() {
	echo "hostname is : $(hostname)"
	echo "system uptime is : $(uptime)" 
	now
}

now(){
	echo "it is $(date +%r)"
}

function useParameters(){
	echo "parameter 0: $0"
	echo "parameter 1: $1"
	echo "parameter 2: $2"
	echo "all parameters : $@"
}

function sayHello(){
	for NAME in $@
	do
		echo "Hello $NAME"
	done
}

showSystem
useParameters selam canim
sayHello ahmet mehmet mesut husetin ali veli kaan

my_function(){
	local LOCAL_VAR=1
	GLOBAL_VAR=1
}

# GLOBAL_VAR not available yet
echo $GLOBAL_VAR

my_function

# GLOBAL_VAR is now available
echo $GLOBAL_VAR

