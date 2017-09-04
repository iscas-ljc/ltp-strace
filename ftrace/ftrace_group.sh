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
#删除文中空格
sudo sed -i 's/[[:space:]]//g' 1.txt
#删除无关函数(保留匹配行)
sudo sed -i -n '/^'$a'/p' 1.txt
#提取函数
sudo sed -i 's/^.*://' 1.txt
#整理函数
sudo sort 1.txt | uniq > /home/iscas-ljc/doc/fun_"$a".txt 
#统计函数
#sudo sort 1.txt | uniq -c > /home/iscas-ljc/doc/num_fun_"$a".txt
#删除中间文件
sudo rm 1.txt
sudo rm trace.dat
fi 
done
