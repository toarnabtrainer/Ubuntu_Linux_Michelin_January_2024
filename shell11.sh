# Delaing command line options

while getopts "a:b:c:d:" options ; do
	case $options in
		a) echo "Argumrnt a has been passed..."
		   echo "OPTARG = $OPTARG"
		   ;;
		b) echo "Argumrnt b has been passed..."
		   echo "OPTARG = $OPTARG"
		   ;;
		c) echo "Argumrnt c has been passed..."
		   echo "OPTARG = $OPTARG"
		   ;;
		d) echo "Argumrnt d has been passed..."
		   echo "OPTARG = $OPTARG"
		   ;;
        *) echo "Invalid options..."
		   echo "VALID Options are [a][b][c][d]..."
		   ;;
	esac
done
echo -e "\n\nEnd of the shell script..."
