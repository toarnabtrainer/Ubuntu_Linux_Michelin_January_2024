# segregating /dev file names according to their file types
ls -l /dev | cut -c1,51- > devfilelist.txt
if [ -e dev_block.txt ] ; then
	rm dev_block.txt
fi
if [ -e dev_character.txt ] ; then
	rm dev_character.txt
fi
if [ -e dev_directory.txt ] ; then
	rm dev_directory.txt
fi
if [ -e dev_link.txt ] ; then
	rm dev_link.txt
fi

while read record ; do
	file_type=`echo $record | cut -c1`
	file_name=`echo $record | cut -c2-`
	if [ $file_type = 'c' ] ; then
		echo $file_name >> dev_character.txt
	elif [ $file_type = 'b' ] ; then
		echo $file_name >> dev_block.txt
	elif [ $file_type = 'l' ] ; then
		echo $file_name >> dev_link.txt
	else
		echo $file_name >> dev_directory.txt
	fi
done < <(cat devfilelist.txt)
rm devfilelist.txt

echo -e "\nEnd of the shell script..."




