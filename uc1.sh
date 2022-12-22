
sal_hour=20;
wrk_hour=0;
month_sal=0;

for ((day=1; day<=20; day++))
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

	ttl_salary=$(($sal_hour * $wrk_hour));
	
	echo  " total salary of employee $ttl_salary ";
	
	month_sal=$(($month_sal + $ttl_salary));

done


echo  " total salary of employee in month $month_sal ";