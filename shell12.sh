# dealing with the file system
# -d => directory special file
# -b => block special file
# -c => character special file
# -l => link (shortcut) special file
# - => regular file
fname=$1
if [ -e $fname ] ; then
	echo "$fname is existing..."
	if [ -f $fname ] ; then  # shell12.sh shell1.sh
		echo "$fname is an ORDINARY file..."
	r_perm=`ls -l $fname | cut -c2` # chmod u+rwx a.txt
	w_perm=`ls -l $fname | cut -c3` # shell12.sh a.txt
	x_perm=`ls -l $fname | cut -c4` # chmod u-rwx a.txt
	if [ $r_perm = "r" ] ; then   
		echo "$fname is having READ Permission ON"
	else
		echo "$fname is having READ Permission OFF"
	fi
	if [ $w_perm = "w" ] ; then
		echo "$fname is having WRITE Permission ON"
	else
		echo "$fname is having WRITE Permission OFF"
	fi
	if [ $x_perm = "x" ] ; then
		echo "$fname is having EXECUTE Permission ON"
	else
		echo "$fname is having EXECUTE Permission OFF"
	fi
	elif [ -L $fname ] ; then  # shell12.sh /dev/fd
		echo "$fname is a LINK Special file..."
	elif [ -d $fname ] ; then  # shell12.sh /dev/block
		echo "$fname is a DIRECTORY Special file..."
	elif [ -b $fname ] ; then  # shell12.sh /dev/loop0
		echo "$fname is a BLOCK Special file..."
	elif [ -c $fname ] ; then  # shell12.sh /dev/tty3
		echo "$fname is a CHARACTER Special file..."
	fi
else
	echo "$fname is NOT existing..."  # shell12.sh xyz.sh
fi

echo -e "\nEnd of the shell script..."
