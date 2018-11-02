#!/bin/bash
pathv1="/temp/"
pathv2="/archive/"
patvar1="adpy"
patvar2="ADPY"
cd "$pathv1"
pwd
for i in *
do
echo "$i"
if [[ -f $i ]]
then echo "$i is file"
IFS=_ read -r F1 F2 F3 F4 F5 F6 <<< "$i"
echo "$F1"
echo "$F2"
echo "$F3"
echo "$F4"
echo "$F5"
echo "$F6"
sleep 10
if [[ "${F2}" == "${patvar1}" ]] || [[ "${F2}" == "${patvar2}" ]]
then
        cp "${i}" "${F1}_${F3}_${F4}_${F5}"
        echo "success"
fi
fi
done
