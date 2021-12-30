#!/bin/bash

# a = 3 과 같이 띄어쓰기를 넣으면 변수에 값이 들어가지 않음
# a=3 과 같이 띄어쓰기 없이 지정해줘야 함

a=3
echo "a is $a."
echo "input a :: "

# 직접 a의 값을 입력받음
read a
echo "a is $a"

