#! /bin/bash

cd shared_folder
i=1
j=1
while [ 1 -eq 1 ]
do
		echo "hello,world $i" > "readme_$i.txt"
		echo 'file generated: ' $i
		i=`expr $i + 1`
		if [ $i -gt 30 ]
		then
			rm "readme_$j.txt"
			j=`expr $j + 1`
		fi
		sleep 5
done
