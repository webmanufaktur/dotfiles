#!/bin/bash
i3blocks
# --config ~/.config/i3/i3blocks.conf
# | while :
# do
#     read line
#     LG=$(setxkbmap -query | awk '/layout/{print $2}')
#     if [ $LG == "br" ]
#     then
#         dat="[{ \"full_text\": \"LANG: $LG\", \"color\":\"#009E00\" },"
#     else
#         dat="[{ \"full_text\": \"LANG: $LG\", \"color\":\"#C60101\" },"
#     fi
#     echo "${line/[/$dat}" || exit 1
# done