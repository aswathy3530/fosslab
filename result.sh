#!/bin/bash
pdftotext -layout result_MDL.pdf sem1.txt
grep -A 1 'MDL16CS' sem1.txt > s1cs.txt
sed -i 's/MA101(/ /g' s1cs.txt
sed -i 's/PH100(/ /g' s1cs.txt
sed -i 's/BE110(/ /g' s1cs.txt
sed -i 's/BE10105(/ /g' s1cs.txt
sed -i 's/BE103(/ /g' s1cs.txt
sed -i 's/EE100(/ /g' s1cs.txt
sed -i 's/PH110(/ /g' s1cs.txt
sed -i 's/EE110(/ /g' s1cs.txt
sed -i 's/CS110(/ /g' s1cs.txt
tr -d '\040\011\012\015\014' <s1cs.txt> a.txt
sed -i 's/MDL/\nMDL/g' a.txt
sed -i 's/O)/ 10 /g' a.txt
sed -i 's/A+)/ 9 /g' a.txt
sed -i 's/A)/ 8.5 /g' a.txt
sed -i 's/B+)/ 8 /g' a.txt
sed -i 's/B)/ 7 /g' a.txt
sed -i 's/C)/ 6 /g' a.txt
sed -i 's/P)/ 5 /g' a.txt
sed -i 's/F)/ 0 /g' a.txt
sed -i 's/--/ /g' a.txt
sed -i 's/\,/ /g' a.txt
awk '{printf($1" "($2 * 4 + $3 * 4 + $4 * 3 + $5 * 3 + $6 * 3 + $7 * 3 + $8 * 1 + $9 * 1 + $10 * 1)/23)}' a.txt > temp1.txt
sed -i 's/MDL/\nMDL/g' temp1.txt
pdftotext -layout s2.pdf sem2.txt
grep -A 1 'MDL16CS' sem2.txt > s2cs.txt
sed -i 's/MA102(/ /g' s2cs.txt
sed -i 's/BE100(/ /g' s2cs.txt
sed -i 's/EC100(/ /g' s2cs.txt
sed -i 's/CY110(/ /g' s2cs.txt
sed -i 's/EC110(/ /g' s2cs.txt
sed -i 's/CY100(/ /g' s2cs.txt
sed -i 's/BE102(/ /g' s2cs.txt
sed -i 's/CS100(/ /g' s2cs.txt
sed -i 's/CS120(/ /g' s2cs.txt
tr -d '\040\011\012\015\014' <s2cs.txt> b.txt
sed -i 's/MDL/\nMDL/g' b.txt
sed -i 's/O)/ 10 /g' b.txt
sed -i 's/A+)/ 9 /g' b.txt
sed -i 's/A)/ 8.5 /g' b.txt
sed -i 's/B+)/ 8 /g' b.txt
sed -i 's/B)/ 7 /g' b.txt
sed -i 's/C)/ 6 /g' b.txt
sed -i 's/P)/ 5 /g' b.txt
sed -i 's/F)/ 0 /g' b.txt
sed -i 's/--/ /g' b.txt
sed -i 's/\,/ /g' b.txt
awk '{printf($1" "($2 * 4 + $3 * 4 + $4 * 3 + $5 * 1 + $6 * 1 + $7 * 4 + $8 * 3 + $9 * 3 + $10 * 1)/24)}' b.txt > temp2.txt
sed -i 's/MDL/\nMDL/g' temp2.txt
join temp1.txt temp2.txt > cs_2016.txt
awk '{printf($1" "($2 * 23 + $3 * 24)/47)}' cs_2016.txt > cs_cgpa.txt
sed -i 's/MDL/\nMDL/g' cs_cgpa.txt
join c4b.txt cs_cgpa.txt > cs2016.txt -1 6
nano cs2016.txt


