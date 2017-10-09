#!/bin/bash
for file in $1*
do 
    if test -f $file
    then
sudo trace-cmd record -p function ./$file
sudo trace-cmd report trace.dat > 1.txt
#提取文件名
a=$file
a=${a:2}
#删除前两行
sudo sed -i '1d' 1.txt
sudo sed -i '2d' 1.txt
#删除文中空格
sudo sed -i 's/[[:space:]]//g' 1.txt
#提取函数
sudo sed -i 's/^.*://' 1.txt
#整理函数
sudo sort 1.txt | uniq > ~/doc/"$a".txt 
#统计函数
sudo rm 1.txt
sudo rm trace.dat
fi 
done
cd ~/doc
for file in ./*
do
    if test -f $file
    then
        sudo sed -i '/^[0-9].*$/d' $file
    fi
done
#删除0-9开头的函数（在生成文件中检测到了0-9开头的冗余函数）
cd ~/doc
for file in ./*
do
    if test -f $file
    then
        sed -i 's/^[ ]*//g' $file
        sudo cat $file >> fin.txt
    fi
done
sort fin.txt | uniq > ~/result.txt
rm fin.txt
cd ~/doc
cat ~/result.txt | while read line
do
    grep -l "^$line$" * > ~/trace-link_result/$line.txt
done
