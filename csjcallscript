#!/bin/sh
cd /home/web/
eval "mkdir -p $1/{Document,Music,Video}"
echo directory for $1 creared.
inpath="/app/web/pay"
encpath="/app/web/encpt_pay/"
arhpath="/app/web/encpt_pay/ARCHIVE/"
enchpath="/home/web/javafile_folder/"
if [ -z "$(ls -A $inpath)" ]; then
echo "$inpath is Empty"
else
cd "$inpath"
find . -type f -name 'pay*.*' | while read FILE ; do
newfile="$(echo "$FILE" |sed -e 's/\_//g')" ;
mv "$FILE" "$newfile" ;
#done
cd "$inpath"
for ftoen in *.*;do
#echo "$ftoen"
cd "$enchpath"
java -jar webterminal.jar "$inpath$ftoen" "$encpath$ftoen.enc" "$arhpath$ftoen.crc"
cd "$encpath"
cp "$ftoen.enc" "$arhpath"
cd $inpath
#sleep 5
echo "$ftoen"
rm "$ftoen"
echo "Ok"
done
fi
#echo "Done"
