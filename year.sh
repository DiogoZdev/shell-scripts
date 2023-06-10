#!/bin/bash

# I like to separate all documents into folders.
# The parent folder is the year, the children are the months.


create_year() {
	local year=$1
	if [ -d "$year" ]
	then
		echo "directory already exists"
	else
		mkdir $year
		cd $year
		mkdir '01-Jan'
		mkdir '02-Feb'
		mkdir '03-Mar'
		mkdir '04-Apr'
		mkdir '05-May'
		mkdir '06-Jun'
		mkdir '07-Jul'
		mkdir '08-Aug'
		mkdir '09-Sep'
		mkdir '10-Oct'
		mkdir '11-Nov'
		mkdir '12-Dec'
	fi
}

if [ -z "$1" ]
then
	echo "Year must be informed"
else
	create_year $1
fi
