#!/bin/bash
# @jamiew 2020-01-27
# Generate a Wu-Tang name using the "official" name generator
# https://www.mess.be/inickgenwuname.php
# (AKA the Childish Gambino Wu-Tang Name Generator)
# TODO output a more username-friendly format - no spaces or special chars
# 
# This script depends on `curl`, `td` and `pup`
# Some clever regex could eliminate the need for pup
# 
#   brew install pup
# 
set -e

name="$@"

if [ -z "$name" ]; then
  echo "$0: argument(s) required nawmean?"
  exit 1
fi

curl -s -X POST \
  https://www.mess.be/inickgenwuname.php \
  -drealname="$name" \
  | pup --color 'font font text{}' \
  | tr -d \\n

echo 
