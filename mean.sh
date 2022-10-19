#!/bin/bash

if [[($# -ne 1) && ($# -ne 2) ]]; then
    echo "usage: $0 <column> [file.csv]" 1>&2
    exit 0
    
elif [[ $# -eq 1 ]]; then
    column=$1
    file=/dev/stdin
else
    column=$1
    file=$2
fi

cut -d , -f $column $file | tail -n +2 | {
    count=0
    sum=0;
    while read n; do
	count=$(($count + 1))
	sum=$(echo "$sum + $n"|bc)
    done;
    mean=$(echo "scale=3; $sum/$count"|bc)
    echo $mean;
}

    
