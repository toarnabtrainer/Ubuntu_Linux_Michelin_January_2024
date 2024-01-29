# dealing with loop constructs
echo -e "\nLooping - 1"
count=1
while [ $count -le 5 ] ; do
	echo "Looping for count = $count..."
	count=`expr $count + 1`
done

echo -e "\nLooping - 2"
count=1
while (( $count <= 5 )) ; do
	echo "Looping for count = $count..."
	count=$(( count + 1 ))
done

echo -e "\nLooping - 3"
max_count=10
for (( count = 1; count <= max_count; count += 2 )) ; do
	echo "Looping for count = $count..."
done

echo -e "\nLooping - 4"
for alpha in `cat alphabets.txt` ; do
	echo -n "$alpha, "
done
echo ""

echo -e "\nLooping - 5"
n=5
for i in 1 2 3 4 5 6 7 8 9 10 ; do
	product=`expr $n \* $i`
	echo "So $n x $i = $product"
done

echo -e "\nLooping - 6"
i=1
until [ $i -gt 5 ] ; do
	echo "Looping for i = $i..."
	i=`expr $i + 1`
done

echo -e "\nLooping - 7"
i=1
for i in {1..10} ; do
	echo "Looping for i = $i..."
done

echo -e "\nEnd of the program..."





