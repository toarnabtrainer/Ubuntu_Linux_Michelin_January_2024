# use of if-elif-else-fi conditional constructs
echo "Finding the maximum of three user given numbers..."
echo -n "Please enter the first integer number: "
read num1
echo -n "Please enter the second integer number: "
read num2
echo -n "Please enter the third integer number: "
read num3
echo "STRATEGY-1..."
if [ $num1 -gt $num2 ] ; then   # -gt  -ge  -lt  -le  -ne  -eq
	if [ $num1 -gt $num3 ]
    then
		echo "So the first number $num1 is the MAXIMUM Number..."
	else
		echo "So the third number $num3 is the MAXIMUM Number..."
	fi
elif [ $num2 -gt $num3 ] ; then     #  elif elsif elseif  else if 
	echo "So the second number $num2 is the MAXIMUM Number..."
else		
	echo "So the third number $num3 is the MAXIMUM Number..."
fi

echo "STRATEGY-2..."
if [ \( $num1 -gt $num2 \) -a \( $num1 -gt $num3 \) ] ; then   # -a -o
	echo "So the first number $num1 is the MAXIMUM Number..."
elif [ $num2 -gt $num3 ] ; then     #  elif elsif elseif  else if 
	echo "So the second number $num2 is the MAXIMUM Number..."
else		
	echo "So the third number $num3 is the MAXIMUM Number..."
fi

echo "End of the program..."







