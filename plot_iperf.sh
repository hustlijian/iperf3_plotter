#!/bin/bash


if [ $# -ne 1 ]; then
	echo "***************************************"
	echo "Usage: $0 <iperf_json_file>"
	echo "***************************************"
fi
cd "$(dirname "$0")"

./preprocessor.sh $1 .

if [ $? -ne 0 ]; then
	exit 1
fi

cd results
gnuplot ../*.plt 2> /dev/null

