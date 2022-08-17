 #!/bin/bash

for x in ./*.fna
do
	echo $x
	tr -d '\n' < $x | egrep -o "TAAA(T|A)(.)(T|A)(G|A)(.)(C|A)GGT|ACC(T|G)(.)(T|C)(T|A)(.)(T|A)TTTA" | wc -l
done 
