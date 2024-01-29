# use of case-switch construct
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
echo -n "Please enter your choice number: "
read choice_no
case $choice_no in
	1|"ONE"|"one"|[6-8]) echo "ADDITION Operation has been selected..."
       result=`expr $num1 + $num2`
	   echo "So the sum of $num1 and $num2 is $result..."
       ;;   # end of individual case-switch body
	2) echo "SUBTRACTION Operation has been selected..."
       result=`expr $num1 - $num2`
	   echo "So the difference of $num1 and $num2 is $result..."
       ;;
	3) echo "MULTIPLICATION Operation has been selected..."
       result=`expr $num1 \* $num2`
	   echo "So the product of $num1 and $num2 is $result..."
       ;;
	4) echo "DIVISION Operation has been selected..."
       result=`expr $num1 / $num2`
	   echo "So the quotient of $num1 and $num2 is $result..."
       ;;
	5) echo "MODULUS Operation has been selected..."
       result=`expr $num1 % $num2`
	   echo "So the remainder of $num1 and $num2 is $result..."
       ;;
	*) echo "INVALID Choice Number has been provided..."
	   echo "No calculation has been accomplished..."
       ;;
esac
echo "End of the program..."











