#! /bin/bash

#searches for a specific word in a file and
#displays how many times and on what line numbers of the file
#they were found. Argument 1 is the file given and argument 2 is the word chosen

#assign names to arguments
file="$1"
word="$2"
#set up output message
echo "The word $2 was found in this number of lines:"
#count the number of lines in which the word appears
grep -o $word $file |grep -c $word $file
#set up the output message
echo "The word $2 was found in these lines:"
#count the number of lines in which the word appears
grep -n $word $file | cut -f1 -d: | sort -u

