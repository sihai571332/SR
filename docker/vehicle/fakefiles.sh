#! /bin/bash

cd shared_folder
i=1
while [ $i -lt 30 ]
do
		echo "hello,world $i" > "readme_$i.txt"
		echo 'file generated: ' $i
		i=`expr $i + 1`
		sleep 5
done
