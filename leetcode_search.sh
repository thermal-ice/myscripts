#!/usr/bin/env bash
usage() {                                 
  echo -e "Usage: lc [args] \nOpens up Chrome with the leetcode problem of [args], where [args] is a multi-word string. \ne.g) lc Reverse LinkedList" 
}

# if less than two arguments supplied, display usage 
	if [  $# -le 0 ] 
	then 
		usage
		exit 1
	fi 

# check whether user had supplied -h or --help . If yes display usage 
	if [[ ( $@ == "--help") ||  $@ == "-h" ]] 
	then 
		usage
		exit 0
	fi 

argsStr=""

for arg in "$@"; do
    argsStr+="$arg+"
done

# Using duck duck go because google's I'm feeling lucky redirects me, 
# which requires pressing another button (bad!)

queryStr="https://duckduckgo.com/?q=leetcode+$argsStr!"

open -a "Google Chrome" $queryStr
