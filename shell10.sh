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
for (( i = 1; i <= $n_arg; i++ ))  ; do
	echo "The argument is: $1..."
	total=`expr $total + $1`
	shift
done

echo "So the total is $total..."
average=`expr $total / $n_arg`
echo "So the average is $average..."
echo -e "\nEnd of the shell script..."





