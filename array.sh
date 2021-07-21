#!/bin/bash

# text.txt 파일의 첫번째 필드를 모두 출력
echo =====print=======
awk '{print $1}' ./text.txt

# BEGIN
# OFS = 출력 필드 분리자
# ORS = 출력 레코드 분리자
echo =====BEGIN=======
awk 'BEGIN{OFS=":"; ORS="\n";} {print $1, $2}' ./text.txt


echo =====Array=======
i=1
while read line
do
    index[i]=$(echo $line | awk '{print $1}')
    echo index $i : ${index[i]}
    let i++
done < text.txt
echo =================
