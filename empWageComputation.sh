#!/bin/bash -x

#Constant
partTime=0;
fullTime=1;
totalSalary=0;
noOfWorkingDays=20;
empHrCheck=0;
workingDays=1;

#Variables
maxWorkingHours=100;
empRatepHr=20

function empcheck() {
        case $1 in
                $partTime)
                        empHr=4
                        ;;
                $fullTime)
                        empHr=8
                        ;;
                *)
                        empHr=0
                        ;;
        esac
        echo $empHr
}

while (( $empHrCheck<=$maxWorkingHours && $workingDays<+$noOfWorkingDays ))
do
        empHrReturn="$( empcheck $((RANDOM%3)) )"
        ((empHrCheck+=empHrReturn))
        ((workingDays++))
        salary=$(($empHrReturn*$empRatepHr));
        totalSalary=$(($totalSalary+$salary))
done
#salary=$(($empHrCheck*$empRatepHr));
echo "Total Salary is $totalSalary";


