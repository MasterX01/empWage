#!/bin/bash -x

if (( $((RANDOM%2)) -eq 1 ))
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
