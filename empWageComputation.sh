#!/bin/bash -x

partTime=0;
fullTime=1;
totalSalary=0;
noOfWorkingDays=20;
maxWorkingHours=100;
empRatepHr=20;
empHrCheck=0;
workingDays=1;
while (( $empHrCheck<=$maxWorkingHours && $workingDays<=$noOfWorkingDays ))
do
        empCheck=$(( RANDOM%3 ));
                case $empCheck in
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
                ((empHrCheck+=empHr))
                ((workingDays++))
                salary=$(($empHr*$empRatepHr));
                totalSalary=$(($totalSalary+$salary));
done
echo "Total Salary is $totalSalary"

