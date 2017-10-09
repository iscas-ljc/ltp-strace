#!/bin/bash
#在可执行文件目录下可直接执行（需要在ftrace之后）
#无需传入参数
#整合所有txt文件,统计重复个数,输出到result文件
cd ~/doc
for file in ./*
do 
    if test -f $file 
    then
        sed -i 's/^[ ]*//g' $file
        #删除空格
        sudo cat $file >> fin.txt
    fi
done
sort fin.txt | uniq > result.txt
#k1表示用第一段进行排序 n表示数值大小排序 nr表示数值大小倒序
rm fin.txt
