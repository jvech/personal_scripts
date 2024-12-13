#!/usr/bin/sh

query=`echo $* | tr '[:upper:]' '[:lower:]' | tr ' ' '+'` 
w3m -dump "https://inv.nadeko.net/search?q=${query}" \
    | grep mqdefault -A 4 \
    | grep -E '^[0-9]+:[0-9]{2}' -A 2 \
    | grep -vE '^$|--' \
    | awk 'NR % 2 == 0'
