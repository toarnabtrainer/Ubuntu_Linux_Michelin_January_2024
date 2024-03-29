# Dealing with the awk command

# awk has a strong pattern searching capability and also supports generation and formatting capabilities

# two databases with fields/attributes: emp_id, emp_name, emp_designation, emp_department, emp_doj and emp_salary
# We are using two data files -
# 1. emp.lst -> Fixed width data file on employee database with '|' as the field
# 2. emp1.lst -> Delimited file on employee database with '|' as the field delimiter

# search for a pattern and print
awk '/director/ {print}' emp.lst
awk '/director/ {print}' emp1.lst

# using regular expression
awk '/sa[kx]s*ena/' emp.lst
awk '/sa[kx]s*ena/ {print}' emp.lst

awk '/sa[kx]s*ena/' emp1.lst
awk '/sa[kx]s*ena/ {print}' emp1.lst

# regular expression with selective fields as output
awk -F"|" '/sa[kx]s*ena/ {print $2,$3,$6,$5}' emp.lst
awk -F"|" '/sa[kx]s*ena/ {print $2,$3,$6,$5}' emp1.lst

# selective fields against pattern matched records
awk -F"|" '/sale/ {print $2, $3, $6, $5, $4}' emp.lst
awk -F"|" '/sale/ {print $2, $3, $6, $5, $4}' emp1.lst

# selective fields against start and end record numbers
awk -F"|" 'NR == 3, NR == 6 {print NR, $3, $3, $6, $4}' emp.lst
awk -F"|" 'NR == 3, NR == 6 {print NR, $3, $3, $6, $4}' emp1.lst

# print for formatted output using printf function
awk -F"|" '/[aA]gg?[ar]+wal/ {printf "%5d, %20s, %12s, %d\n", NR, $2, $3, $6 }' emp.lst
awk -F"|" '/[aA]gg?[ar]+wal/ {printf "%5d, %+20s, %+12s, %d\n", NR, $2, $3, $6 }' emp.lst
awk -F"|" '/[aA]gg?[ar]+wal/ {printf "%5d, %-20s, %-12s, %d\n", NR, $2, $3, $6 }' emp.lst
awk -F"|" '/[aA]gg?[ar]+wal/ {printf "%5d, %20s, %12s, %d\n", NR, $2, $3, $6 }' emp1.lst
awk -F"|" '/[aA]gg?[ar]+wal/ {printf "%5d, %+20s, %+12s, %d\n", NR, $2, $3, $6 }' emp1.lst
awk -F"|" '/[aA]gg?[ar]+wal/ {printf "%5d, %-20s, %-12s, %d\n", NR, $2, $3, $6 }' emp1.lst

# formatted output records with matching patterns
awk -F"|" '$3 == "director " || $3 == "chairman " {printf "%-20s, %-12s, %d\n", $2, $3, $6}' emp.lst
awk -F"|" '$3 == "director" || $3 == "chairman" {printf "%-20s, %-12s, %d\n", $2, $3, $6}' emp1.lst
awk -F"|" '$3 == "director " || $3 == "chairman " {printf "%-20s, %-12s, %10.2f\n", $2, $3, $6}' emp.lst
awk -F"|" '$3 == "director" || $3 == "chairman" {printf "%-20s, %-12s, %10.2f\n", $2, $3, $6}' emp1.lst

# Regular Expession Rules:
# ------------------------
# g* means no 'g' or multiple 'g' characters i.e. null, 'g', 'gg', 'ggg', 'gggg' and so on...
# g+ means single or multiple 'g' characters i.e. 'g', 'gg', 'ggg', 'gggg' and so on...
# * means any substring including null
# . means any one character
# a? means either a single 'a' or no 'a'
