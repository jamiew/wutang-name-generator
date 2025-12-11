#!/bin/bash
# @jamiew 2020-01-27
#
# generate a Wu-Tang Clan name using the "official" name generator
# https://www.mess.be/inickgenwuname.php
# (AKA the Childish Gambino Wu-Tang Name Generator)
#
# this script depends on `curl`, `tr` (builtin) and `xmllint` (part of libxml2)
# I couldn't get it working reliably with grep or sed, sorry
#
set -e

# use first argument as seed value, or generate a random one
name="$@"
if [ -z "$name" ]; then
  name=$(openssl rand -base64 32)
fi

curl -s -X POST \
  http://www.mess.be/inickgenwuname.php \
  -drealname="$name" |
  xmllint --html --xpath "//font[@size='2']/text()" - 2>/dev/null |
  tr -d \\n |
  tr '[:upper:]' '[:lower:]' |
  tr ' ' '_'

echo
