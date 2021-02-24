#!/bin/bash -x

ratePerHour=20
fulltime=8

if (( $((RANDOM%2)) -eq 1 ))
then
	echo "Employee is Present"
	echo "Wage for the day is: "$(( ratePerHour*fulltime ))
else
	echo "Employee is Absent"
fi

