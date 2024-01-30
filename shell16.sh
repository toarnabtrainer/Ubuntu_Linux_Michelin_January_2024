# check whether one given user name is valid or not
username=$1

if cat /etc/passwd | grep -w ^$username  > /dev/null ; then
	echo "$username is a VALID User Name..."
	if who | grep -w ^$username > /dev/null ; then
		echo "$username has LOGGED IN..."
	else
		echo "$username has Not LOGGED IN..."
	fi
else
	echo "$username is NOT a VALID User Name..."
fi

echo -e "\nEnd of the shell script..."
