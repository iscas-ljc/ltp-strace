#!/bin/bash
#整合所有txt文件,统计重复个数,输出到result文件
for file in $1*
do 
    if test -f $file 
    then
        sed -i 's/^[ ]*//g' $file
        #删除空格
        sudo cat $file >> fin.txt
    fi
done
sort fin.txt | uniq -c > fin.txt
sort -k1 -n fin.txt>result.txti
#k1表示用第一段进行排序 n表示数值大小排序 nr表示数值大小倒序
rm fin.txt
