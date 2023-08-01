#!/bin/bash
if [ $# -ne 2 ]
then
	echo "not enough arguments two required"
	exit 1
fi

writefile=$1
writestr=$2	
mkdir -p  "$(dirname ${writefile} )" 
if [ $? -eq  1  ]
then
	echo "File wasn't created"
	exit 1
fi

echo  "${writestr}" > ${writefile}
exit 0
