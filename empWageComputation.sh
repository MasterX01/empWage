#!/bin/bash -x

#Constant
partTime=0;
fullTime=1;
totalSalary=0;
maxWorkingDays=5;
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

function empDailyWage() {
        local empHrLoc=$1
        echo $(($empHrLoc*$empRatepHr))

}

while (( $empHrCheck<=$maxWorkingHours && $workingDays<=$maxWorkingDays ))
do
        #Monthly Salary
        empHrResult="$( empcheck $((RANDOM%3)) )"
        ((empHrCheck+=empHrResult))
        ((workingDays++))
        salary=$(($empHrResult*$empRatepHr));
        totalSalary=$(($totalSalary+$salary))
        dailyWage[$workingDays]="$( empDailyWage $empHrResult )"
done

#salary=$(($empHrCheck*$empRatepHr));
echo "Total Salary is $totalSalary";
echo ${dailyWage[@]}


