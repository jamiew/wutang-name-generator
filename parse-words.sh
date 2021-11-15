#!/bin/bash

names="names.txt"
first_words="first-words.txt"
second_words="second-words.txt"

rm -f "$first_words" "$second_words"

while read -r line; do
  a=($line)
  echo ${a[0]} >> "$first_words-tmp"
  echo ${a[1]} >> "$second_words-tmp"
done < "$names"

cat "$first_words-tmp" | sort | uniq > "$first_words"
cat "$second_words-tmp" | sort | uniq > "$second_words"

rm -f "$first_words-tmp" "$second_words-tmp"
