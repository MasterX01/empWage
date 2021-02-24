#!/bin/bash -x

ratePerHr=20
fullTime=1
partTime=0
totalSalary=0

noOfWorkingDays=20
workingDays=1

while (( $workingDays<=$$noOfWorkingDays ))
do
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
	(( workingDays++ ))
	totalSalary=$(( $totalSalary+$(( $empHr*$ratePerHr )) ))
done
echo "Total Salary is: $totalSalary"
