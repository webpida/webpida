#!/bin/sh
QUERY="psql -h /tmp/"
DATABASE=
USERNAME=pi
#HOSTNAME=
export PGPASSWORD=
#psql -h $HOSTNAME -U $USERNAME $DATABaSE 
$QUERY -U $USERNAME $DATABASE << EOF
select * from table;
--COPY (SELECT * FROM tabe) TO '/myfile1.csv' (DELIMITER ',');
EOF
