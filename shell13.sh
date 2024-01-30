# dealing with the file sizes in the current folder
folder=$1
max_size=0
min_size=99999
total_size=0
for sizes in `ls -l $folder | cut -c25-30` ; do
	echo "Current file size is: $sizes..."
	if [ $sizes -gt $max_size ] ; then
		max_size=$sizes
	fi
	if [ $sizes -lt $min_size ] ; then
		min_size=$sizes
	fi
	total_size=`expr $total_size + $sizes`
done
echo "So the total file size is $total_size..."
echo "So the maximum file size is $max_size..."
echo "So the minumum file size is $min_size..."

echo -e "\nEnd of the shell script..."
