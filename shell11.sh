# Dealing command line options

while getopts "a:b:c:d:" options ; do
	case $options in
		a) echo "Argument a has been passed..."
		   echo "OPTARG = $OPTARG"
		   ;;
		b) echo "Argument b has been passed..."
		   echo "OPTARG = $OPTARG"
		   ;;
		c) echo "Argument c has been passed..."
		   echo "OPTARG = $OPTARG"
		   ;;
		d) echo "Argument d has been passed..."
		   echo "OPTARG = $OPTARG"
		   ;;
        *) echo "Invalid options..."
		   echo "VALID Options are [a][b][c][d]..."
		   ;;
	esac
done
echo -e "\n\nEnd of the shell script..."
