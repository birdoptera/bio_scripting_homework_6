#!/bin/bash

#load file
#file="$1"
symbol=">"

for file in "CDS/*"; do
#    file="$file"
    name="${file##*/}"
    name_3=$name-3
    name_5=$name-5
    grep -n $symbol $file | cut -f1 -d' '| get_fasta_stats.pl -t -g $file > "CDSoutput/$name-3.txt"
    transeq -sformat pearson $file > "CDSoutput/$name.pep" | get_fasta_stats.pl -t -g $file > "CDSoutput/$name-5.txt"


done

#    filepep="CDSoutput/$file.pep"
#    get_fasta_stats.pl -t -g $filepep > "CDSoutput/$name.txt"


#set up for while loop
#n=1

#while read line; do

#    if [[ $line == '>' ]];
#        then
#        cut  -f 1 -d ' ' <<< $line
#        echo $line
#    fi
#    echo "Line number $n"
#    n=$((n+1))
#    echo $line
#done
