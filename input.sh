#!/bin/bash


printf "Write voter votee\n"


read player vote

if test -n "$player"; then
        sed -i "s/$player \-.*/$player \- $vote/" sl.txt
        printf "\n\n<strong>Voters:</strong>\n"
        printf "\n&nbsp;\n"
        cat /home/nc/ww/sl.txt
        printf "\n&nbsp;\n"
        printf  "<strong>Counts:</strong>\n"
        printf "\n&nbsp;\n"
        exec awk {'print $3'} sl.txt | sort | awk NF | uniq -c | sort -r && /home/nc/ww/input.sh
                else
                printf "No input..."
                exec /home/nc/ww/input.sh
fi
