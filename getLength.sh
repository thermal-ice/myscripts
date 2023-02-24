#!/usr/bin/env bash
usage() {                                 
  echo -e "Usage: len [ -s ] word\n Gets the length of the word. \n If supplied with -s flag then gets the length of all the words" 
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


while getopts "s" option; do

    wordsLength=0

    case $option in
        s) 
            for word in "${@:2}"
            do
                currWordLen=${#word}
                echo "Length of $word is $currWordLen"
                wordsLength=$((currWordLen + wordsLength))

            done
            echo "Length of all words is $wordsLength"
            exit 0
            ;;
        *)
            exit 1
            ;;
    esac
done

# default case
echo Length is ${#1}