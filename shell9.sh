# command line arguments
# dealing with the command line arguments
echo "The total number of command line arguments are $#..."
echo "All the command line arguments in string are $@..."
echo "All the command line arguments in string are $*..."
echo "Command line arguments are: $0, $1, $2, $3, $4, $5..."
# cp $1 $2
shift
echo "After 1st shift"
echo "Command line arguments are: $0, $1, $2, $3, $4, $5..."
echo "The total number of command line arguments are $#..."
shift
echo "After 2nd shift"
echo "Command line arguments are: $0, $1, $2, $3, $4, $5..."
echo "The total number of command line arguments are $#..."
shift
echo "After 3rd shift"
echo "Command line arguments are: $0, $1, $2, $3, $4, $5..."
echo "The total number of command line arguments are $#..."


echo -e "\nCurrent process identification number: $$..."
sleep 15
echo -e "\nEnd of the shell script..."
