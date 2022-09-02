#!/bin/sh

# Show date and time in other time zones
#!/usr/bin/env bash                                                             

# Show date and time in other time zones, with multiple args       
                                 
elements=$@
elements+=("Hong_Kong" "London")
zoneinfo=/usr/share/zoneinfo/posix
format='%a %F %T'

for search in ${elements[@]}; do
  find $zoneinfo -type f \
      | grep -i "$search" \
      | while read z
        do
            d=$(TZ=$z date +"$format")
            printf "%-34s %23s\n" ${z#$zoneinfo} "$d"
        done
done
