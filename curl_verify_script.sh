#!/bin/bash
NOW=$(date +"%Y-%m-%d-%H%M%S")
USER='myusername'
PASS='mypassword'
AUTH="$USER:$PASS"
URL='http://www.holidaywebservice.com//HolidayService_v2/HolidayService2.asmx?wsdl'
SOAPFILE=request.xml
TIMEOUT=5
http_code=$(curl --write-out "%{http_code}\n" --silent --user "${AUTH}" --header "Content-Type: text/xml;charset=UTF-8" --data @"${SOAPFILE}" "${URL}" --connect-timeout $TIMEOUT --output "Result-$NOW.txt")
if [ "$http_code" -gt 400 ]  # 400 and 500 Client and Server Error codes http://en.wikipedia.org/wiki/List_of_HTTP_status_codes
then
	echo "Error: HTTP response ($http_code) getting URL: $URL"
	echo "Please verify parameters/backend. Username: $USER Password: $PASSWORD Press any key to continue..."
	read entervalue || continue
fi

###########################

# request.xml
#<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:hs="http://www.holidaywebservice.com/HolidayService_v2/">
#<soapenv:Body>
#<hs:GetHolidaysAvailable>
#<hs:countryCode>UnitedStates</hs:countryCode>
#</hs:GetHolidaysAvailable>
#</soapenv:Body>
#</soapenv:Envelope>

###########################

