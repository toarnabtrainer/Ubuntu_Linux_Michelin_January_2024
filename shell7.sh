# use of case-switch construct, applicable for bash shell only
echo -n "Please enter the first number: "
read num1
echo -e "Please enter the second number: \c"
read num2
echo "M A I N  M E N U ..."
echo "1 > A D D I T I O N  O P T I O N ..."
echo "2 > S U B T R A C T I O N  O P T I O N ..."
echo "3 > M U L T I P L I C A T I O N  O P T I O N ..."
echo "4 > D I V I S I O N  O P T I O N ..."
echo "5 > M O D U L U S  O P T I O N ..."
echo "6 > E X P O N E N T I A T I O N  O P T I O N ..."
echo -n "Please enter your choice number: "
read choice_no
if [ $choice_no -eq 1 ] ; then
	echo "ADDITION Operation has been selected..."
    result=$(( $num1 + $num2 ))
	echo "So the sum of $num1 and $num2 is $result..."
elif [ $choice_no -eq 2 ] ; then
	echo "SUBTRACTION Operation has been selected..."
	result=$(( num1 - num2 ))
	echo "So the difference of $num1 and $num2 is $result..."
elif [ $choice_no -eq 3 ] ; then
	echo "MULTIPLICATION Operation has been selected..."
    result=$((num1*num2))
	echo "So the product of $num1 and $num2 is $result..."
elif [ $choice_no -eq 4 ] ; then
	echo "DIVISION Operation has been selected..."
    result=$(( num1 / num2 ))
	echo "So the quotient of $num1 and $num2 is $result..."
elif [ $choice_no -eq 5 ] ; then
	echo "MODULUS Operation has been selected..."
    result=$(( $num1 % $num2 ))
	echo "So the remainder of $num1 and $num2 is $result..."
elif [ $choice_no -eq 6 ] ; then
	echo "EXPONENTIATION Operation has been selected..."
    result=$(( $num1 ** $num2 ))
	echo "So the result of $num1 ^ $num2 is $result..."
else
	echo "INVALID Choice Number has been provided..."
	echo "No calculation has been accomplished..."
fi
echo "End of the program..."











