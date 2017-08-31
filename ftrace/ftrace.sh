#!/bin/bash
sudo trace-cmd record -p function ./$1
sudo trace-cmd report trace.dat > 1.txt
#删除文中空格
sudo sed -i 's/[[:space:]]//g' 1.txt
#删除无关函数(保留匹配行)
sudo sed -i -n '/^'$1'/p' 1.txt
#提取函数
sudo sed -i 's/^.*://' 1.txt
#整理函数
sudo sort 1.txt | uniq > fun_$1.txt 
#统计函数
sudo sort 1.txt | uniq -c > num_fun_$1.txt
#删除中间文件
sudo rm 1.txt
