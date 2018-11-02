#!/bin/bash
echo "Please enter filename :"
read ftoen
#echo "$ftoen"
files="$ftoen"
#count="$(wc -l < "$files")"
#count="$(wc -l $files | awk '{print $1}')";
#echo "$count"
xls2csv "$files" | sed -e's/"//g' | while read -r line;
#while IFS='' read -r line || [[ -n "$line" ]];
#while read -r  line;
do

        data=`echo "$line" && sleep 2`
        echo "$data"
        IFS=',' read -r F1 F2 F3 F4 F5 F6 F7 F8 F9 <<< "$data"
        echo "$F3"
done;
