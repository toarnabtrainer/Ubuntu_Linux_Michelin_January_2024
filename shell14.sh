# finding total and average salaries of emp.lst data file
fname=$1
emp_count=`cat $fname | wc -l`
total_salary=0
max_salary=0
min_salary=99999
for salaries in `cat $fname | cut -d"|" -f6` ; do
	# total_salary=`expr $total_salary + $salaries`
	total_salary=$((total_salary+salaries))
	if [ $max_salary -lt $salaries ] ; then
		max_salary=$salaries
	fi
	if [ $min_salary -gt $salaries ] ; then
		min_salary=$salaries
	fi
done
echo "So the total number of employees is: $emp_count..."
echo "So the total salary is: $total_salary..."
# average_salary=`expr $total_salary / $emp_count`
average_salary=$((total_salary / emp_count))
echo "So the average salary is: $average_salary..."
echo "So the maximum salary is: $max_salary..."
echo "So the minimum salary is: $min_salary..."
echo -e "\nEnd of the shell script..."
