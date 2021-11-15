#!/bin/bash

names="names.txt"
chars=( {a..z} )
for i in "${chars[@]}"; do
	for j in "${chars[@]}"; do
		echo "$i$j"	
		./fetch-wutang-name.sh "$i$j" >> "$names"
	done
done
