# adding command line arguments
n_arg=$#
total=0
for my_arg in $@ ; do
	echo "The argument is: $my_arg..."
	total=`expr $total + $my_arg`
done

echo "So the total is $total..."
average=`expr $total / $n_arg`
echo -e "So the average is $average...\n\n"

n_arg=$#
total=0
max_data=$1
min_data=$1
for (( i = 1; i <= $n_arg; i++ )) ; do
	echo "The argument is: $1..."
	total=`expr $total + $1`
	if [ $max_data -lt $1 ] ; then
		max_data=$1
	fi
	if [ $min_data -gt $1 ] ; then
		min_data=$1
	fi
	shift
done

echo "So the total is $total..."
average=`expr $total / $n_arg`
echo "So the average is $average..."
echo "So the maximum is $max_data..."
echo "So the minimum is $min_data..."
echo -e "\nEnd of the shell script..."





