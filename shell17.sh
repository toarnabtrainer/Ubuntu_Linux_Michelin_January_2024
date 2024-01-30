# check whether one given user name is valid or not
username=$1
username1=$1":"
len_user=`expr length $username1`
echo "The length of the user name $username is $len_user..."
flag=0
for read_name in `cat /etc/passwd | cut -d":" -f1` ; do
	read_name1=$read_name":"
	if [ $read_name1 = $username1 ] ; then
		echo "$username is a VALID User Name..."
		flag=1
		break
	fi
done
if [ $flag -eq 0 ] ; then
	echo "$username is NOT a VALID User Name..."
fi
echo -e "\nEnd of the shell script..."
