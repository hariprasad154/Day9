
sal_hour=20;
wrk_hour=0;
month_sal=0;
ttl_wrkhour=0;

day=1;

while [[ $day -le 20 && $ttl_wrkhour -lt 100 ]] 
do

	attendence=$((RANDOM%3));
	case $attendence in 
			0)
					echo "employee is apsent ";
					wrk_hour=0;
	
			;;
		
			1)
					echo "employee is present ";
					wrk_hour=8;
				 	
			;;
			2)
					echo "employee as part time";

					wrk_hour=4;
			;;
	
	esac
	ttl_wrkhour=$(($ttl_wrkhour + $wrk_hour))
	echo " $ttl_wrkhour "
	
	echo "----------------"

	ttl_salary=$(($sal_hour * $wrk_hour));
	
	echo  " total salary of employee $ttl_salary ";
	echo "----------------"
	
	month_sal=$(($month_sal + $ttl_salary));
	
	((day++));

done
echo "----------------"

echo  " total salary of employee in month $month_sal ";