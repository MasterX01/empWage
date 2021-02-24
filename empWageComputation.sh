#!/bin/bash -x

ratePerHour=20
fullTime=1
partTime=0
empCheck=$(( RANDOM%3 ))
case $empCheck in
	$fullTime)
		empHr=8
	;;
	$partTime)
		empHr=4
	;;
	*)
		empHr=0
	;;
esac
echo "Hours Worked - "$empHr
echo "Wage for the day is: "$(( ratePerHour*empHr ))
