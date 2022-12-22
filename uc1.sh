#!/bin/bash

function calculateWorkingHour() {
	case $1 in
		0)
			workingHour=0;
		;;
		1)
			workingHour=8;
		;;
		2)
			workingHour=4;
		;;
	esac;
	echo $workingHour;
}

totalSalary=0;
EMP_WAGE_PER_HOUR=20;
totalWorkingHour=0;
day=1;

while [[ $day -le 20 && $totalWorkingHour -lt 100 ]] 
do
	workHour=$(calculateWorkingHour $((RANDOM%3)));

	totalWorkingHour=$(($totalWorkingHour + $workHour));
	
	salary=$(($EMP_WAGE_PER_HOUR * $workHour));
	totalSalary=$(($totalSalary + $salary));
	((day++));
done

echo "Employee has earned $totalSalary $ in a month (Total Working Hour : $totalWorkingHour)";