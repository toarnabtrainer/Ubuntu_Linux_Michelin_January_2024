# converting upper and lower case letters
my_university="mAdRas unIVerSItY"

echo "Initial content: $my_university..."
upper_text=`echo $my_university | tr "[a-z]" "[A-Z]"`
echo "Upper case content: $upper_text..."
lower_text=`echo $my_university | tr "[A-Z]" "[a-z]"`
echo "Lower case content: $lower_text..."

emp_name="aMItaVa"
echo -e "\nUnprocessed employee name: $emp_name..."
first_char=`echo $emp_name | cut -c1 | tr "[a-z]" "[A-Z]"`
rest_part=`echo $emp_name | cut -c2- | tr "[A-Z]" "[a-z]"`
full_name=$first_char$rest_part
echo "Processed employee name: $full_name..."

echo -e "\nEnd of the shell script..."
