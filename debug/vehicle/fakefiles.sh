#! /bin/bash

cd sf
i=1
while [ 1 == 1 ]
do
		echo "hello,world $i" > "readme_$i.txt"
		echo 'file generated: ' $i
		i=`expr $i + 1`
		sleep 5
done
