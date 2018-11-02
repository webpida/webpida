#clear all
#!/bin/sh/
if   [ -z "$1" ] || [ -z "$2" ]
then
	echo "Name or utility should not empty"
else
	#if [[ "$1" =~ ^[[:alnum:]]{4,10}$ ]] && [[ "$2" =~ ^[[:digit:]]{4}+$ ]]
	#then
	echo "name:$1"
	echo "code:$2"
	cp path_name.txt temp/
	cd temp/
	eval "mkdir -p $1/{Music,DOC}"
	echo directory for $1 created
	cd ../
	vartime=$(date '+%Y%m%d')
	cp "path_name.txt" "path_name"$vartime".txt"
	exec > path_name_new.txt
	cat path_name.txt | sort | uniq
	echo "$2:/music/$2/IN/"
	mv "path_name_new.txt" "path_name.txt"

fi
