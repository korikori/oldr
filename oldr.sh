#!/bin/bash
file=${1:-/dev/stdin} #accept stdin or file

dated() { #stat each file in preformatted list, add timestamps
  for line in "${preformatted[@]}"; do
  stat -c "%z %n" "$line" 2>/dev/null
  done
}

readarray -t preformatted < <(grep -oE "/.+?(\.php|js|css|html|htm)" $file) #mahame useless junk ot whatever format input is in

dated="$(dated)"

IFS=$'\n' sorted=($(sort -k1,1 -k2,2 <<<"${dated[@]}")); unset IFS #sort each file in dated list

printf '%s\n' "${sorted[0]}" | grep -oE "/.+?(\.php|js|css|html|htm)" 
