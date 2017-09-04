#!/bin/sh
sudo strace -o 1.txt ./$1
sudo sed -i 's/(.*$//' 1.txt
sudo sed -i 's/^[^A-Za-z].*$//' 1.txt
sudo sed -i '/^ *$/d' 1.txt
sort 1.txt | uniq -w1 > ../../../../../../../home/iscas-ljc/doc/func_"$1".txt
rm -rf 1.txt
#运行单个文件
