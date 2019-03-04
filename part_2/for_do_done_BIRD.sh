#!/bin/bash

#Runs 'string finder script' on files in 'book pages' directory and outputs to words_found.txt


for f in book_pages/*.txt;

do 

echo "In the file $f,"
~/homework_6/part_1/string_finder_BIRD.sh $f apple

done < words_found.txt
 

