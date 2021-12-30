#!/bin/bash

i=1

while read line
do
    index[i]=$(echo $line | awk '{print $1}')
    let i++
done < text.txt
