# dealing with the file system
# -d => directory special file
# -b => block special file
# -c => character special file
# -l => link (shortcut) special file
# - => regular file
fname=$1
if [ -e $fname ] ; then
	echo "$fname is existing..."
	if [ -f $fname ] ; then
		echo "$fname is an ORDINARY file..."
	elif [ -L $fname ] ; then  # shell12.sh /dev/fd
		echo "$fname is a LINK Special file..."
	elif [ -d $fname ] ; then  # shell12.sh /dev/fd
		echo "$fname is a DIRECTORY Special file..."
	elif [ -b $fname ] ; then  # shell12.sh /dev/loop0
		echo "$fname is a BLOCK Special file..."
	elif [ -c $fname ] ; then  # shell12.sh /dev/tty3
		echo "$fname is a CHARACTER Special file..."
	fi
else
	echo "$fname is NOT existing..."
fi

echo -e "\nEnd of the shell script..."
