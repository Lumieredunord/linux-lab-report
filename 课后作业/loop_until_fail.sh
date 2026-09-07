#!/usr/bin/env bash

count=0

>stdout.txt
>stderr.txt

while true
do
	count=$((count + 1))
	./rand_fail.sh >> stdout.txt 2>> stderr.txt
	ret=$?
	if [ $ret -ne 0 ]; then
		echo "Error!Running times:$count"
		echo "===stdout.txt==="
		cat stdout.txt
		echo "===stderr.txt==="
		cat stderr.txt
		break
	fi
done
