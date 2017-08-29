#!/bin/bash
#整合所有txt文件,统计重复个数,输出到result文件
for file in $1*
do 
    if test -f $file 
    then
        sudo cat $file >> fin.txt
    fi
done
sort fin.txt | uniq -c > result.txt
rm fin.txt
