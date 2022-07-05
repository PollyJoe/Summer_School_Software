#!/bin/bash
Path=/home/data
sudo mkdir $Path
for name in $Path/{1..100}.txt
do
    sudo touch $name
done
cd $Path
for((i=5;i<=95;i+=10))
do    
    find $Path -name $i.txt
    for((j=1;j<=i;j++))
    do
	echo "abcd" >> $Path/$i.txt
    done  
done
