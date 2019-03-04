#! /bin/bash

#searches for a specific word in a file and
#displays how many times and on what line numbers of the file
#they were found.

file="$1"
word="$2"

grep -o $word $file |grep -c $word $file
grep -ne $word $file | grep -Eo '^[^:]+'
 
#-n flag output in grep and use with cut

#write the script, taking a filename as the first argument
#and the word being searched as the second argument

#the script should display a summary message showing
#a) how many matches were found at least once per line
#b) the line numbers where the string occured at least once per line
#c) the file name being searched


