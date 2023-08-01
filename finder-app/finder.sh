#!/bin/bash
if [ $# -lt 2 ]
then 
	echo "Please enter 2 arguments only"
	exit 1 
fi
filesdir=$1
searchstr=$2
if [ ! -d ${filesdir} ]
then
	echo "Directory doesn't exist"
	exit 1
fi
X=$(find ${filesdir} -type f | wc -l)
Y=$(grep -R  "${searchstr}" ${filesdir}| wc -l )
echo "The number of files are ${X} and the number of matching lines are ${Y}"
exit 0
