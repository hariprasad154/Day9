attendence=$((RANDOM%3));
sal_hour=20;
wrk_hour=0;
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

