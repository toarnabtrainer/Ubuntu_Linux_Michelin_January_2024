# dealing with dates and related information
# to check the help on date command we can use
# date --help
# whatis date (one liner help)
# info date
# man date
# teachme date
# show greetings messages depending upon the hour value:
# upto 12 noon -> Good Morning
# from 12 hours onwards to 16 hours -> Good Afternoon
# from 16 hours onwards to 20 hours -> Good Evening
# from 20 hours onwards -> Good Night

# commands to change the time:
# timedatectl set-ntp no
# timedatectl set-time "2024-01-31 14:00:00"
# timedatectl set-ntp yes
# here ntp stands for "Network Time Protocol"

hour=`date +%H`
echo "Current hour is $hour..."
if [ $hour -lt 12 ] ; then
	echo "Good Morning..."
elif [ \( $hour -ge 12 \) -a \( $hour -lt 16 \) ] ; then
	echo "Good Afternoon..."	
elif [ \( $hour -ge 16 \) -a \( $hour -lt 20 \) ] ; then
	echo "Good Evening..."
else
	echo "Good Night..."
fi

echo -e "\nEnd of the shell script..."
