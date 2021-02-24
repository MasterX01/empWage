#!/bin/bash -x

ratePerHour=20
fullTime=8
partTime=4
empHr=$(( RANDOM%3 ))

if (( $empHr -eq 1 ))
then
	echo "Employee is Present and is a fulltime worker"
	echo "Wage for the day is: "$(( ratePerHour*fullTime ))
elif (( $empHr -eq 2 ))
	echo "Employee is Presentand is a part time worker"
	echo "Wage for the day is: "$(( ratePerHour*partTime ))

else
	echo "Employee is Absent"
fi
