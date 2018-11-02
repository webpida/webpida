#!/bin/bash
var1=(*_end.csv)
SetParam() {
export URLFILE="name_path.txt"
}
copy_files() {

SetParam

cat $URLFILE | while read next

do
echo $next
cd "$next"
for i in *.*
do
if [[ -f $i ]] && [[ "${i}" == $var1 ]];
then
cp "${i}" '/Intermediate/'
mv "${i}" '/temp/'
elif [[ -f $i ]]
then
cp "${i}" '/Intermediate/'
mv "${i}" '/temp/'
fi
done;
done;
}
main () {
copy_files
}
main
echo SUCCESS
