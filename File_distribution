#!/bin/bash
cd /temp/
pwd
for i in *
do
#echo "$i"
if [[ -f $i ]]
then echo "$i is file"

IFS=_ read -r F1 F2 F3 F4 F5 F6 <<< "$i"
#echo "$F1"
echo "$F5"

export URLFILE="/temp/name_path.txt"

cat $URLFILE | while read next
do
cff=$(echo $next | cut -f 1 -d ':')
ucp=$(echo $next | cut -f 2 -d ':')
#echo "$cff"
echo "$ucp"
if [[ "${F5}" == "${cff}" ]]
then mv "${i}" "${ucp}"
fi
done
fi
done
echo SUCCESS
